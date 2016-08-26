<?php
class TrackDAO extends Model {

	function __construct(){
		parent::__construct();
	}

	function getTracks(){
		$sql = "SELECT 
				   ts.track_id as TRACKID,
				   ts.setting_value as AREA
			FROM tracks as t LEFT JOIN track_settings as ts
			ON t.track_id = ts.track_id
			WHERE ts.setting_name = 'title' AND t.track_id != 20
			ORDER BY ts.track_id ASC";

		$resultset = pg_query(parent::getConnection(), $sql);
		
		$data = parent::resultsetToArray($resultset);
		
		return $data;
	}
}
?>