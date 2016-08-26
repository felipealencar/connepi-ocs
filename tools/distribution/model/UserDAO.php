<?php
class DistributionDAO extends Model {
	
	function __construct(){
		parent::__construct();
	}
	
	function getDistribution(){
		$sql = "SELECT * FROM distribution";
		$resultset = pg_query(parent::getConection(), $sql);
		
		
	}
}
?>