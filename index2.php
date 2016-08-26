blalbla
<?php 
if(!@($conexao=pg_connect ("host=localhost dbname=ocs port=5432 user=ocs password=postgres"))) {
   print "Não foi possível estabelecer uma conexão com o banco de dados.";
} else {
   $v = pg_version($conexao);
   echo $v['server'];
   phpinfo();
   pg_close ($conexao);
   print "Conexão OK!";
}
?>
blablalbal
