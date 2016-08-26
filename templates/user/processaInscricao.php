<?php
	
	include "classMinicurso.php";

	
	$inscricao = new classMinicurso();
	
	
	$inscricao->set_minicurso($_POST["cod"]);
	$inscricao->set_user($_POST["user"]);
	
	$consulta = new classBd();
	$consulta->conectaBd();
	
	$minicurso = $inscricao->get_minicurso();
	if($inscricao->inscreverMinicurso($inscricao)){
		echo "<script>alert('Inscrição realizada com sucesso.')</script>";
		echo "<script>location.href='http://connepi.ifal.edu.br/ocs/index.php/index/CONNEPI2010/user'</script>";	
	
	}
	else{
		echo "<script>alert('Não há mais vagas disponíveis.')</script>";
		echo "<script>location.href='http://connepi.ifal.edu.br/ocs/index.php/index/CONNEPI2010/user'</script>";	
	}



?>
