<?php
class SessionsController extends Controller {
	
	var $Session;
	var $SessionDAO; 
	var $user;
	var $Author;
	var $AcceptedPapers;
	var $QueueAcceptedPapers;
	
	function __construct(){
		parent::__construct();
		$this->Session = new Session();
		$this->SessionDAO = new SessionDAO();
	}

	
	function validateAcceptedPapers(){
		
	}
	
	function getSessions(){
		return $this->SessionDAO->getSessions();
	}
	
	function uniquePapers($papers){
		return parent::arrayUnique($papers);
	}
}
?>
