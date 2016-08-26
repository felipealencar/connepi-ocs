<?php
ini_set('error_reporting', E_ALL);
$str_conexao="host=192.168.254.208 port=5432 dbname=ocs user=handrick password=hclh2o";
$conn=pg_connect($str_conexao) or die("A conexão ao banco de dados falhou!");
$_SESSION["conn"] = $conn;

function __autoload($class) {
	if(!__findClass($class,"./")) {
		echo "<h1>Class Not Found: $class !!</h1>";
		exit(0);
	}
}

function __findClass($class,$dir) {
	$ponteiro = opendir($dir);
	while($file = readdir($ponteiro)) {
		$file_path = $dir."/".$file ;
		if($file == "." or $file == "..") {
			continue ;
		} else if(is_dir($file_path)) {
			if(__findClass($class,$file_path)) {
				return true ;
			}
		} else if($file == $class.".php") {
			require_once($file_path);
			return true ;
		}
	}
	return false ;
}
?>