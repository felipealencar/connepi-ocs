<?php
$str_conexao="host=192.168.254.208 port=5432 dbname=ocs user=handrick password=hclh2o";
$conn=pg_connect($str_conexao) or die("A conexão ao banco de dados falhou!");

$sql = "SELECT ps.paper_id as ID,
			   ps.setting_value as TITULO
			   FROM edit_decisions as ed
				INNER JOIN paper_settings as ps on ed.paper_id = ps.paper_id
				INNER JOIN papers as p on p.paper_id = ps.paper_id
				INNER JOIN track_settings as ts ON ts.track_id = p.track_id
				INNER JOIN users u on p.user_id=u.user_id
				WHERE ps.setting_name LIKE 'title' AND ts.setting_name LIKE 'title'
				AND ts.track_id = 20
				AND (ed.decision = 2)
				AND (p.status = 1 OR p.status = 3)
				ORDER BY ts.track_id";
$resultset = pg_query($conn, $sql);

for($i=0; $i<=pg_num_rows($resultset); $i++){
	$array = pg_fetch_array($resultset, $i);
	$id = $array["id"];
	$name = $array["titulo"];
	$sql = "INSERT INTO courses (course_id, course_name) VALUES ('$id','$name')";
	$resultset2 = pg_query($conn, $sql);
}
?>