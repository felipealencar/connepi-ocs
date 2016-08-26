<?php
class DistributionDAO extends Model {
	
	function __construct(){
		parent::__construct();
	}
	
	function getDistribution(){
		$sql = "SELECT * FROM distributions";
		return $resultset = pg_query(parent::getConnection(), $sql);
	}
	
	function getDistributionByPaper($paper_id){
		
	}
	
	function getDistributionByAuthor($author_id){
		
	}
	
	function insertDistribution($room_id, $session_id, $paper_id){
		//if(validateInsert($room_id, $session_id, $paper_id)){
			$sql = "INSERT INTO distributions (room_id, session_id, paper_id) VALUES ('$room_id', '$session_id', '$paper_id')";
			return $resultset = pg_query(parent::getConnection(), $sql);
		//}
		//else
			//return false;
	}
	
	function validateInsert($room_id, $paper_id, $session_id){
		$sql = "SELECT * FROM distribution WHERE paper_id = ".$array["id"];
		$resultset = pg_query(parent::getConnection(), $sql);
		if(pg_num_rows($resultset) > 0)
			return false;
		
		$sql = "SELECT * FROM distribution_sessions WHERE session_id = ".$session_id." AND presentations = 6";
		$resultset = pg_query(parent::getConnection(), $sql);
		if(pg_num_rows($resultset) > 0)
			return false;
		
		return true;
	}
}
?>