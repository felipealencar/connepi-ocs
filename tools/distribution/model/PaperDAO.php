<?php
class PaperDAO extends Model {

	function __construct(){
		parent::__construct();
	}

	function getPapers(){
		$sql = "SELECT * FROM papers";
		return $resultset = pg_query(parent::getConection(), $sql);

	}

	function getAcceptedPapers(){
		$sql = "SELECT p.paper_id as paper_id,
					pa.author_id as AUTHORID,
				   (coalesce((pa.first_name),'') ||
				   ' '
				   || 
				   coalesce((pa.middle_name),'') ||
				   ' ' ||
				   coalesce((pa.last_name),'')) AS Nome,
				   ps.setting_value as TITULO,
				   ts.track_id as TRACKID,
				   ts.setting_value as AREA
			FROM edit_decisions as ed
			INNER JOIN paper_settings as ps on ed.paper_id = ps.paper_id
			INNER JOIN papers as p on p.paper_id = ps.paper_id
			INNER JOIN track_settings as ts ON ts.track_id = p.track_id
			INNER JOIN paper_authors as pa on pa.paper_id=p.paper_id
			WHERE ps.setting_name LIKE 'title' AND ts.setting_name LIKE 'title'
			AND (ed.decision = 2 OR ed.decision = 3)
			AND (p.status = 3)
			AND (pa.primary_contact = 1)
			AND (p.track_id != 20) ORDER BY p.track_id ASC";

		$resultset = pg_query(parent::getConnection(), $sql);
		
		$data = parent::resultsetToArray($resultset);
		
		return $data;
	}
}
?>