<?php
class SessionDAO extends Model {
	
	function __construct(){
		parent::__construct();
	}
	
	function getSessions(){
		$sql = "SELECT * FROM distribution_sessions";
		$resultset = pg_query(parent::getConnection(), $sql);
		$data = parent::resultsetToArray($resultset);
		return $data; 
	}
}
?>