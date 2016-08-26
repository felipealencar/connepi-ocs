<?php


  class classBd {
	protected $bd = "postgres";
	protected $conexao = NULL;
	protected $affectedRows = 0;
	protected $servidor = "";
	protected $nomeBd = "";
	protected $usuarioBd = "";
	protected $senhaBd = "";
	protected $porta = "";
	protected $resultado = NULL;
	protected $numRows = -1;
	protected $dados;
	
	//método de conexão com a base de dados postgre
	public function conectaBd() {
	  //FAZ A CONEXÃO COM O BANCO pg_connect
	  $this->conexao = pg_pconnect ("host=192.168.254.208 port=5432 dbname=ocs user=handrick password=hclh2o") or die ("Não consegui conectar banco de dados");
	  return $this->conexao;
	}

	//métodos set's
	public function setServidor($servidor) {
		$this->servidor = $servidor;
	}
	public function setPorta($porta) {
		$this->porta = $porta;
	}
	public function setNomeBd($nomeBd) {	  
		$this->nomeBd = $nomeBd;
	}
	public function setUsuarioBd($usuarioBd) {
		$this->usuarioBd = $usuarioBd;
	}
	public function setSenhaBd($senhaBd) {
		$this->senhaBd = $senhaBd;
	}
    public function preenche() {
	  $this->dados = pg_fetch_array($this->resultado);
	}
	public function getDados() {
	  return $this->dados;
	}
	//métodos get's
	public function getConexao() {
		return $this->conexao;
	}
	public function getAffectedRows() {
		return $this->affectedRows;
	}
	public function getNumRows() {
		return $this->numRows;
	}
	public function setStrSql($strSql) {
	  $this->strSql = $strSql;
	}
	
	//função para pegar a QUERY setada
	public function getStrSql() {
		return $this->strSql;
	}

	public function setAffectedRows() {
		$this->affectedRows = pg_affected_rows($this->resultado);
	}
	
	public function setNumRows() {
		$this->numRows = pg_num_rows($this->resultado);
	}

    public function executa($strSql) {
         $this->resultado = pg_query($this->conexao, $strSql);
          return $this->resultado ;
         if  ($resultado = false) {
             echo "<script>alert('Atenção: ERRO NA EXECUCAO DA QUERY !');</script>";
        }
	}

	//fechar a conexão
	public function fechaConexao() {
  		//pg_close -> comando do post para fechar a conexão
		pg_close($this->conexao);
	}
}
?>
