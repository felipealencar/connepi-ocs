<?php
	//Função para importar usuários (apresentadores) com artigos aceitos nas inscrições do evento.
	include 'templates/user/classBd.php';  
    $consulta = new classBd();
	$consulta->conectaBd();
	
	$sql = "SELECT u.user_id FROM users as u INNER JOIN paper_authors as pa ON pa.email = u.email INNER JOIN papers as p ON p.paper_id = pa.paper_id
			WHERE p.status = 3 AND pa.primary_contact = 1";
	$rs = $consulta->executa($sql);
	if(pg_num_rows($rs)>0){
		while ($array = pg_fetch_array($rs)){
			$user_id = $array["user_id"];
			$sql1 = "INSERT INTO inscriptions (user_id, course_id, date_registred, auto) VALUES ($user_id, 0, DEFAULT, 1)";
			$rs1 = $consulta->executa($sql1);
			if(pg_affected_rows($rs1) > 0)
				echo "ok";
		}
	}
?>