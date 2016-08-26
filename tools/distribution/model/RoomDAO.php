<?php
class RoomDAO extends Model {
	
	function __construct(){
		parent::__construct();
	}
	
	function getRooms(){
		$sql = "SELECT * FROM distribution_rooms";
		$resultset = pg_query(parent::getConnection(), $sql);
		$data = parent::resultsetToArray($resultset);
		return $data;
	}
}
?>