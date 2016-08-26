<?php
	
	include "classApresentador.php";
	$apresentacao = new classApresentador();
	$dados = explode("/", $_POST['author']);
	
	$apresentacao->set_id($_POST['id']);
	$apresentacao->set_user($dados[0]);
	$apresentacao->set_author($dados[2]);
	$apresentacao->set_paper($dados[1]);

	$consulta = new classBd();
	$consulta->conectaBd();
	
	$paper = $apresentacao->get_paper();
	$USERID = $apresentacao->get_id();
	$user = $apresentacao->get_user();
	$author = $apresentacao->get_author();
	if($apresentacao->set_apresentacao($paper, $user, $author, $USERID) == true){
		echo "<script>location.href='http://connepi.ifal.edu.br/ocs/index.php/index/CONNEPI2010/user'</script>";	
	}
	else {
		echo "<script>location.href='http://connepi.ifal.edu.br/ocs/index.php/index/CONNEPI2010/user'</script>";		
	}

?>
