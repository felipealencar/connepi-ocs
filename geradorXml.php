<?php
// ignore a extensão do code
require('pdo.php');
$db = DB::init(); // thanks thiago ( ^_^)／
$avaliadores = $db->query("SELECT * FROM site_avaliadores")->fetchAll(PDO::FETCH_ASSOC);
$file = fopen("users.xml", "w") or die("Falha ao abrir o arquivo.");
// inicio da "escrita"
fwrite($file, '<?xml version="1.0" encoding="UTF-8"?>'.PHP_EOL.'<!DOCTYPE users PUBLIC "-//PKP/OCS Users XML//EN" "http://pkp.sfu.ca/ocs/dtds/users.dtd">'.PHP_EOL.'<users>');
foreach($avaliadores as $avaliador){
  // dados do user (pre-processamento)
  $username   = strtolower(strstr($avaliador['email'], '@', true));
  $full_name  = explode(" ", $avaliador['nome']);
  $password   = '(CONCAT(' . $username . ', \'' . strtolower($full_name[0]) . '\'))';
  $salutation = strtoupper($avaliador['titulacao']);
  $first_name = strtoupper($full_name[0]);
  $last_name  = "";
  for($i = 1; $i < count($full_name); $i++){
    if($i < count($full_name)-1){
      $last_name .= strtoupper($full_name[$i]) . ' ';
    } else {
      $last_name .= strtoupper($full_name[$i]);
    }
  }
  $initials = "";
  foreach($full_name as $w){
    $initials .= strtoupper($w[0]);
  }
  $email = $avaliador['email'];
  $area = $avaliador['area'];
  $interests = DB::getInterests($area);

  $dados = array(
    'username' => $username,
    'password' => $password,
    'salutation' => $salutation,
    'first_name' => $first_name,
    'last_name' => $last_name,
    'initials' => $initials,
    'gender' => ' ',
    'affiliation' => ' ',
    'email' => $email,
    'country' => 'BR',
    'interests' => $interests,
    'locales' => 'pt_BR'
  );

  // inserir na table '_users' (duplicado)
  if(DB::emailExiste($email)){
    echo("<h3>Duplicado: $email</h3>");
    if(!DB::inserirDuplicado($dados)){
      echo("Erro ao inserir user.");
    }
  }
  // escrever no .xml
  else {
    fwrite($file, PHP_EOL . "<user>" . PHP_EOL);
    fwrite($file, '  <username>' .$dados['username']. '</username>' . PHP_EOL);
    fwrite($file, '  <password encrypted="md5">' .$password. '</password>' . PHP_EOL);
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
fclose($file);

// finalizado
echo("<h2>Arquivo gerado: <a href='users.xml'>users.xml</a></h2>");
?>
