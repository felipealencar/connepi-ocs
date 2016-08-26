<?php
class Model {
	
	var $conn;
	
	function __construct(){
		if(isset($_SESSION))
			$this->conn = $_SESSION["conn"];	
	}
	
	function getConnection(){
		if(!isset($this->conn))
			die("Não existe conexão aberta com o banco de dados");
		return $this->conn;
	}
	
	function resultsetToArray($resultset){
		//Transferindo e armazenando resultados
		$j = 0;
		while($row = pg_fetch_array($resultset))
		{
			foreach($row as $i=>$v)
			{
				$array[$j][$i] = $v;
			}
			$j++;

		}//fim while

		return $array;
	}
}
?>
