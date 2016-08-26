<?php
class TracksController extends Controller {
	
	var $TrackDAO;
	
	function __construct(){
		parent::__construct();
		//$this->Track = new Track();
		$this->TrackDAO = new TrackDAO();
	}
	
	function getTracks(){
		return parent::arrayUnique($this->TrackDAO->getTracks());
	}

}
?>
