<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Acesso</title>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="generator" content="Sistema Eletrônico de Administração de Conferências 2.3.2.0" />
	
		<link rel="stylesheet" href="http://congressos.ifal.edu.br/lib/pkp/styles/common.css" type="text/css" />
	<link rel="stylesheet" href="http://congressos.ifal.edu.br/styles/common.css" type="text/css" />
	
	<!-- Base Jquery -->
	<script src="http://www.google.com/jsapi"></script>
	<script>
		google.load("jquery", "1");
		google.load("jqueryui", "1");
	</script>
		<!-- Add javascript required for font sizer -->
	<script type="text/javascript" src="http://congressos.ifal.edu.br/lib/pkp/js/jquery.cookie.js"></script>	
	<script type="text/javascript" src="http://congressos.ifal.edu.br/lib/pkp/js/fontController.js" ></script>
	<script type="text/javascript">
		$(function(){
			fontSize("#sizer", "body", 9, 16, 32, "http://congressos.ifal.edu.br"); // Initialize the font sizer
		});
	</script>
	
	
	<link rel="stylesheet" href="http://congressos.ifal.edu.br/styles/sidebar.css" type="text/css" />		<link rel="stylesheet" href="http://congressos.ifal.edu.br/styles/rightSidebar.css" type="text/css" />	
			<link rel="stylesheet" href="http://congressos.ifal.edu.br/lib/pkp/styles/jqueryUi.css" type="text/css" />
			<link rel="stylesheet" href="http://congressos.ifal.edu.br/lib/pkp/styles/jquery.pnotify.default.css" type="text/css" />
	
	<script type="text/javascript" src="http://congressos.ifal.edu.br/lib/pkp/js/general.js"></script>
	
</head>
<body>
<div id="container">

<div id="header">
<div id="headerTitle">
<h1>
	Sistema de Gerenciamento de Conferências (OCS)
</h1>
</div>
</div>

<div id="body">

	<div id="sidebar">
							<div id="rightSidebar">
				<div class="block" id="sidebarDevelopedBy">
	<a class="blockTitle" href="http://pkp.sfu.ca/ocs/" id="developedBy">Sistema Eletrônico de Administração de Conferências</a>
</div>	<div class="block" id="sidebarHelp">
	<a class="blockTitle" href="javascript:openHelp('http://congressos.ifal.edu.br/index.php/index/index/help/view/conference/topic/000003')">Ajuda</a>
</div><div class="block" id="sidebarUser">
	<span class="blockTitle">Usuário</span>
			<form method="post" action="http://congressos.ifal.edu.br/index.php/index/index/login/signIn">
			<table>
				<tr>
					<td><label for="sidebar-username">Login</label></td>
					<td><input type="text" id="sidebar-username" name="username" value="" size="12" maxlength="50" class="textField" /></td>
				</tr>
				<tr>
					<td><label for="sidebar-password">Senha</label></td>
					<td><input type="password" id="sidebar-password" name="password" value="" size="12" maxlength="50" class="textField" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="checkbox" id="remember" name="remember" value="1" /> <label for="remember">Lembrar de mim</label></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Acesso" class="button" /></td>
				</tr>
			</table>
		</form>
	</div><div class="block" id="sidebarLanguageToggle">
	<span class="blockTitle">Idioma</span>
	<form action="#">
		<!--<select size="1" name="locale" onchange="location.href=('http://congressos.ifal.edu.br/index.php/index/index/user/setLocale/NEW_LOCALE?source=%2Findex.php%2Findex%2Findex%2Flogin'.replace('NEW_LOCALE', this.options[this.selectedIndex].value))" class="selectMenu"><option label="English" value="en_US">English</option>
<option label="Español (España)" value="es_ES">Español (España)</option>
<option label="Português (Brasil)" value="pt_BR" selected="selected">Português (Brasil)</option>
</select>-->
		<select size="1" name="locale" onchange="location.href=('http://congressos.ifal.edu.br/index.php/index/index/user/setLocale/NEW_LOCALE?source=%2Findex.php%2Findex%2Findex%2Flogin'.replace('NEW_LOCALE', this.options[this.selectedIndex].value))" class="selectMenu"><option label="English" value="en_US">English</option>
<option label="Español (España)" value="es_ES">Español (España)</option>
<option label="Português (Brasil)" value="pt_BR" selected="selected">Português (Brasil)</option>
</select>
	</form>
</div>
	<div class="block" id="sidebarNavigation">
		<span class="blockTitle">Conteúdo da Conferência</span>
		
		<span class="blockSubtitle">Pesquisa</span>
		<form method="post" action="http://congressos.ifal.edu.br/index.php/index/index/search/results">
		<table>
		<tr>
			<td><input type="text" id="query" name="query" size="15" maxlength="255" value="" class="textField" /></td>
		</tr>
		<tr>
			<td><select name="searchField" size="1" class="selectMenu">
				<option label="Todos" value="">Todos</option>
<option label="Autor" value="1">Autor</option>
<option label="Título" value="2">Título</option>
<option label="Resumo" value="4">Resumo</option>
<option label="Termos indexados" value="120">Termos indexados</option>
<option label="Texto Completo" value="128">Texto Completo</option>

			</select></td>
		</tr>
		<tr>
			<td><input type="submit" value="Pesquisar" class="button" /></td>
		</tr>
		</table>
		</form>
		
		<br />
	
		
			</div>
<div class="block" id="sidebarFontSize" style="margin-bottom: 4px;">
	<span class="blockTitle">Tamanho da fonte</span>
	<div id="sizer"></div>
</div>
<br />
			</div>
			</div>

<div id="main">
<div id="navbar">
	<ul class="menu">
		<li><a href="http://congressos.ifal.edu.br/index.php/index/index/index/index">Conferências</a></li>
		<li><a href="http://congressos.ifal.edu.br/index.php/index/index/about">Sobre</a></li>
					<li><a href="http://congressos.ifal.edu.br/index.php/index/index/login">Acesso</a></li>
			<li><a href="http://congressos.ifal.edu.br/index.php/index/index/user/account">Cadastro</a></li>
				<li><a href="http://congressos.ifal.edu.br/index.php/index/index/search">Pesquisa</a></li>

					</ul>
</div>
<div id="breadcrumb">
	<a href="http://congressos.ifal.edu.br/index.php/index/index/index">Conferências</a> &gt;
			<a href="http://congressos.ifal.edu.br/index.php/index/index/login" class="current">Acesso</a></div>
<h2>Acesso</h2>


<div id="content">




	Enviar e-mail para o administrador do OCS: <b>leonardokl@hotmail.com</b> informando o e-mail cadastrado<br>Um e-mail será enviado informando a nova senha<br>
<?php
// O remetente deve ser um e-mail do seu domínio conforme determina a RFC 822.
// O return-path deve ser ser o mesmo e-mail do remetente.
$headers = "MIME-Version: 1.1\r\n";
$headers .= "Content-type: text/plain; charset=iso-8859-1\r\n";
$headers .= "From: ocs@ifal.edu.br\r\n"; // remetente
$headers .= "Return-Path: ocs@ifal.edu.br\r\n"; // return-path
$envio = mail("leonardokl@hotmail.com", "Assunto", "Texto", $headers);
 
if($envio)
 echo "Mensagem enviada com sucesso";
else
 echo "A mensagem não pode ser enviada";
?>


</div><!-- content -->
</div><!-- main -->
</div><!-- body -->



</div><!-- container -->
</body>
</html>