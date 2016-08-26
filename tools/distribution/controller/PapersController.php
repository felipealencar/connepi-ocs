<?php
class PapersController extends Controller {
	
	var $Paper;
	var $PaperDAO; 
	var $user;
	var $Author;
	var $AcceptedPapers;
	var $QueueAcceptedPapers;
	
	function __construct(){
		parent::__construct();
		$this->Paper = new Paper();
		$this->PaperDAO = new PaperDAO();
	}

	
	function validateAcceptedPapers(){
		
	}
	
	function getAcceptedPapers(){
		$this->AcceptedPapers = $this->PaperDAO->getAcceptedPapers();
		return $this->AcceptedPapers;
	}
	
	function countAcceptedPapersByTrack($array, $track){
		$cont = 0;
		foreach ($array as $key => $value){
			if($value["trackid"] == $track)
				$cont++;
		}
		return $cont;
	}
	
	function uniquePapers($papers){
		return parent::arrayUnique($papers);
	}
}
?>
