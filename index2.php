blalbla
<?php 
if(!@($conexao=pg_connect ("host=localhost dbname=ocs port=5433 user=postgres password=postgres"))) {
   print "Não foi possível estabelecer uma conexão com o banco de dados.";
} else {
   $v = pg_version($conexao);
   echo $v['server'];
   pg_close ($conexao);
   print "Conexão OK!";
}
?>
blablalbal
