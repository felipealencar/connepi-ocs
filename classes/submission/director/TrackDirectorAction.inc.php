<?php

/**
 * @file TrackDirectorAction.inc.php
 *
 * Copyright (c) 2000-2010 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class TrackDirectorAction
 * @ingroup submission
 *
 * @brief TrackDirectorAction class.
 *
 */

// $Id$
import('submission.common.Action');

class TrackDirectorAction extends Action {

	/**
	 * Constructor.
	 */
	function TrackDirectorAction() {
		parent::Action();
	}

	/**
	 * Actions.
	 */

	/**
	 * Changes the track a paper belongs in.
	 * @param $trackDirectorSubmission object
	 * @param $trackId int
	 */
	function changeTrack(&$trackDirectorSubmission, $trackId) {
		if (!HookRegistry::call('TrackDirectorAction::changeTrack', array(&$trackDirectorSubmission, $trackId))) {
			$trackDirectorSubmissionDao =& DAORegistry::getDAO('TrackDirectorSubmissionDAO');
			$trackDirectorSubmission->setTrackId((int) $trackId);
			$trackDirectorSubmissionDao->updateTrackDirectorSubmission($trackDirectorSubmission);
		}
	}

	/**
	 * Changes the session type.
	 * @param $trackDirectorSubmission object
	 * @param $sessionType int
	 */
	function changeSessionType(&$trackDirectorSubmission, $sessionType) {
		if (!HookRegistry::call('TrackDirectorAction::changeSessionType', array(&$trackDirectorSubmission, $sessionType))) {
			$trackDirectorSubmissionDao =& DAORegistry::getDAO('TrackDirectorSubmissionDAO');
			$trackDirectorSubmission->setData('sessionType', (int) $sessionType);
			$trackDirectorSubmissionDao->updateTrackDirectorSubmission($trackDirectorSubmission);
		}
	}

	/**
	 * Records a director's submission decision.
	 * @param $trackDirectorSubmission object
	 * @param $decision int
	 * @param $stage int
	 */
	function recordDecision($trackDirectorSubmission, $decision, $stage) {
		$editAssignments =& $trackDirectorSubmission->getEditAssignments();
		if (empty($editAssignments)) return;

		$trackDirectorSubmissionDao =& DAORegistry::getDAO('TrackDirectorSubmissionDAO');
		$user =& Request::getUser();
		$directorDecision = array(
			'editDecisionId' => null,
			'directorId' => $user->getId(),
			'decision' => $decision,
			'dateDecided' => date(Core::getCurrentDate())
		);

		if (!HookRegistry::call('TrackDirectorAction::recordDecision', array(&$trackDirectorSubmission, $directorDecision))) {
			if ($decision == SUBMISSION_DIRECTOR_DECISION_DECLINE) {
				$trackDirectorSubmission->setStatus(STATUS_DECLINED);
				$trackDirectorSubmission->stampStatusModified();
			} else {
				$trackDirectorSubmission->setStatus(STATUS_QUEUED);		
				$trackDirectorSubmission->stampStatusModified();
			}

			$trackDirectorSubmission->addDecision($directorDecision, $stage);
			$decisions = TrackDirectorSubmission::getDirectorDecisionOptions();
			// Add log
			import('paper.log.PaperLog');
			import('paper.log.PaperEventLogEntry');
			Locale::requireComponents(array(LOCALE_COMPONENT_APPLICATION_COMMON, LOCALE_COMPONENT_OCS_DIRECTOR));
			PaperLog::logEvent(
				$trackDirectorSubmission->getPaperId(),
				PAPER_LOG_DIRECTOR_DECISION,
				LOG_TYPE_DIRECTOR,
				$user->getId(),
				'log.director.decision',
				array(
					'directorName' => $user->getFullName(),
					'paperId' => $trackDirectorSubmission->getPaperId(),
					'decision' => Locale::translate($decisions[$decision]),
					'round' => ($stage == REVIEW_STAGE_ABSTRACT?'submission.abstractReview':'submission.paperReview')
				)
			);
		}

		if($decision == SUBMISSION_DIRECTOR_DECISION_ACCEPT || $decision == SUBMISSION_DIRECTOR_DECISION_INVITE) {
			// completeReview will take care of updating the
			// submission with the new decision.
			TrackDirectorAction::completeReview($trackDirectorSubmission);
		} else {
			// Insert the new decision.
			$trackDirectorSubmissionDao->updateTrackDirectorSubmission($trackDirectorSubmission);
		}
	}

	/**
	 * After a decision has been recorded, bumps the paper to the next stage.
	 * If the submission requires completion, it's sent back to the author.
	 * If not, review