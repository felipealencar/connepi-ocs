<?php
class RoomsController extends Controller {
	
	var $Room;
	var $RoomDAO; 
	var $user;
	var $Author;
	var $AcceptedPapers;
	var $QueueAcceptedPapers;
	
	function __construct(){
		parent::__construct();
		$this->Room = new Room();
		$this->RoomDAO = new RoomDAO();
	}

	function getRooms(){
		
		return $this->RoomDAO->getRooms();
	}
	
}
?>
