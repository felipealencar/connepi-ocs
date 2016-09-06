<?php
// ignore a extensão do code
require('pdo.php');
$db = DB::init(); // thanks thiago ( ^_^)／
$avaliadores = $db->query("SELECT * FROM site_avaliadores")->fetchAll(PDO::FETCH_ASSOC);
$file = fopen("users.xml", "w") or die("Falha ao abrir o arquivo.");

echo("<ul style='list-style-type:none'>");
fwrite($file, '<?xml version="1.0" encoding="UTF-8"?>'.PHP_EOL.'<!DOCTYPE users PUBLIC "-//PKP/OCS Users XML//EN" "http://pkp.sfu.ca/ocs/dtds/users.dtd">'.PHP_EOL.'<users>');
foreach($avaliadores as $avaliador){
  // dados do user (pre-processamento)
  $dados = DB::processDados($avaliador);

  // inserir na table '_users' (duplicado)
  if(DB::emailExiste($dados['email'])){
    echo("<li>Usuário já cadastrado: {$dados['email']}</li>");
    if(DB::userImported($dados['email'])){
      echo("<li style='margin-left:30px;padding-left:10px;border-left:2px solid grey'>Já foi inserido em 'duplicados'</li>");
    } else {
      DB::inserirDuplicado($dados);
      echo("<li style='margin-left:30px;padding-left:10px;border-left:2px solid grey'>Inserido em 'duplicados'</li>");
    }
  }
  // escrever no .xml
  else {
    fwrite($file, PHP_EOL . "<user>" . PHP_EOL);
    fwrite($file, '  <username>' .$dados['username']. '</username>' . PHP_EOL);
    fwrite($file, '  <password encrypted="md5">' .$dados['password']. '</password>' . PHP_EOL);
    fwrite($file, '  <salutation>' . $dados['salutation'] . '</salutation>' . PHP_EOL);
    fwrite($file, '  <first_name>' . $dados['first_name'] . '</first_name>' . PHP_EOL);
    fwrite($file, '  <last_name>' . $dados['last_name'] . '</last_name>' . PHP_EOL);
    fwrite($file, '  <initials>' . $dados['initials'] . '</initials>' . PHP_EOL);
    fwrite($file, '  <gender>' . $dados['gender'] . '</gender>' . PHP_EOL);
    fwrite($file, '  <affiliation>' . $dados['affiliation'] . '</affiliation>' . PHP_EOL);
    fwrite($file, '  <email>' . $dados['email'] . '</email>' . PHP_EOL);
    fwrite($file, '  <country>' . $dados['country'] . '</country>' . PHP_EOL);
    fwrite($file, '  <interests locale="pt_BR">' . $dados['interests'] . '</interests>' . PHP_EOL);
    fwrite($file, '  <locales>' . $dados['locales'] . '</locales>' . PHP_EOL);
    fwrite($file, '  <role type="reviewer"/>' . PHP_EOL);
    fwrite($file, "  </user>");
  }
}
fwrite($file, '</users>');
echo("</ul>");
fclose($file);

// finalizado
echo("<h3>Arquivo gerado: <a href='users.xml'>users.xml</a></h3>");
?>
