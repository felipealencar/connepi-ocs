<?php /* Smarty version 2.6.26, created on 2016-09-02 04:24:31
         compiled from user/index.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', 'user/index.tpl', 19, false),array('function', 'translate', 'user/index.tpl', 19, false),array('function', 'call_hook', 'user/index.tpl', 20, false),array('modifier', 'escape', 'user/index.tpl', 28, false),array('modifier', 'assign', 'user/index.tpl', 476, false),)), $this); ?>
<?php echo ''; ?><?php $this->assign('pageTitle', "user.userHome"); ?><?php echo ''; ?><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "common/header.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?><?php echo ''; ?>


<?php if ($this->_tpl_vars['isSiteAdmin']): ?>
<?php $this->assign('hasRole', 1); ?>
&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => 'index','page' => $this->_tpl_vars['isSiteAdmin']->getRolePath()), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => $this->_tpl_vars['isSiteAdmin']->getRoleName()), $this);?>
</a>
<?php echo $this->_plugins['function']['call_hook'][0][0]->smartyCallHook(array('name' => "Templates::User::Index::Admin"), $this);?>

<?php endif; ?>

<?php if (! $this->_tpl_vars['currentConference']): ?><h3><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.myConferences"), $this);?>
</h3><?php endif; ?>

<?php $_from = $this->_tpl_vars['userConferences']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['conference']):
?>
<?php $this->assign('hasRole', 1); ?>
<div id="conference">
<h4><a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conference']->getPath(),'page' => 'user'), $this);?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['conference']->getConferenceTitle())) ? $this->_run_mod_handler('escape', true, $_tmp) : $this->_plugins['modifier']['escape'][0][0]->smartyEscape($_tmp)); ?>
</a></h4>
<?php $this->assign('conferenceId', $this->_tpl_vars['conference']->getId()); ?>
<?php $this->assign('conferencePath', $this->_tpl_vars['conference']->getPath()); ?>

<table width="100%" class="info">
<?php if ($this->_tpl_vars['isValid']['ConferenceManager'][$this->_tpl_vars['conferenceId']]['0']): ?>
<tr>
<td>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conferencePath'],'page' => 'manager'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.role.manager"), $this);?>
</a></td>
<td></td>
<td></td>
<td></td>
<td align="right"><?php if ($this->_tpl_vars['setupIncomplete'][$this->_tpl_vars['conferenceId']]): ?>[<a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conferencePath'],'schedConf' => $this->_tpl_vars['schedConfPath'],'page' => 'manager','op' => 'setup','path' => '1'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "manager.schedConfSetup"), $this);?>
</a>]<?php endif; ?></td>
</tr>
<?php endif; ?>
</table>

<?php $_from = $this->_tpl_vars['userSchedConfs'][$this->_tpl_vars['conferenceId']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['schedConf']):
?>
<div id="schedConf">
<?php $this->assign('schedConfId', $this->_tpl_vars['schedConf']->getId()); ?>
<?php $this->assign('schedConfPath', $this->_tpl_vars['schedConf']->getPath()); ?>
<h5><a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conference']->getPath(),'schedConf' => $this->_tpl_vars['schedConf']->getPath(),'page' => 'index'), $this);?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['schedConf']->getSchedConfTitle())) ? $this->_run_mod_handler('escape', true, $_tmp) : $this->_plugins['modifier']['escape'][0][0]->smartyEscape($_tmp)); ?>
</a></h5>

<table width="100%" class="info">
<?php if ($this->_tpl_vars['isValid']['Director'][$this->_tpl_vars['conferenceId']][$this->_tpl_vars['schedConfId']]): ?>
<tr>
<?php $this->assign('directorSubmissionsCount', $this->_tpl_vars['submissionsCount']['Director'][$this->_tpl_vars['conferenceId']][$this->_tpl_vars['schedConfId']]); ?>
<td>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conferencePath'],'schedConf' => $this->_tpl_vars['schedConfPath'],'page' => 'director'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.role.director"), $this);?>
</a></td>
<td><?php if ($this->_tpl_vars['directorSubmissionsCount'][0]): ?>
<a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conferencePath'],'schedConf' => $this->_tpl_vars['schedConfPath'],'page' => 'director','op' => 'submissions','path' => 'submissionsUnassigned'), $this);?>
"><?php echo $this->_tpl_vars['directorSubmissionsCount'][0]; ?>
 <?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.queue.short.submissionsUnassigned"), $this);?>
</a>
<?php else: ?><span class="disabled">0 <?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.queue.short.submissionsUnassigned"), $this);?>
</span><?php endif; ?>
</td>
<td colspan="2">
<?php if ($this->_tpl_vars['directorSubmissionsCount'][1]): ?>
<a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conferencePath'],'schedConf' => $this->_tpl_vars['schedConfPath'],'page' => 'director','op' => 'submissions','path' => 'submissionsInReview'), $this);?>
"><?php echo $this->_tpl_vars['directorSubmissionsCount'][1]; ?>
 <?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.queue.short.submissionsInReview"), $this);?>
</a>
<?php else: ?>
<span class="disabled">0 <?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.queue.short.submissionsInReview"), $this);?>
</span>
<?php endif; ?>
</td>
<td align="right">[<a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conferencePath'],'schedConf' => $this->_tpl_vars['schedConfPath'],'page' => 'director','op' => 'notifyUsers'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "director.notifyUsers"), $this);?>
</a>]</td>
</tr>
<?php endif; ?>
<?php if ($this->_tpl_vars['isValid']['TrackDirector'][$this->_tpl_vars['conferenceId']][$this->_tpl_vars['schedConfId']]): ?>
<?php $this->assign('trackDirectorSubmissionsCount', $this->_tpl_vars['submissionsCount']['TrackDirector'][$this->_tpl_vars['conferenceId']][$this->_tpl_vars['schedConfId']]); ?>
<tr>
<td>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conferencePath'],'schedConf' => $this->_tpl_vars['schedConfPath'],'page' => 'trackDirector'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.role.trackDirector"), $this);?>
</a></td>
<td></td>
<td colspan="3">
<?php if ($this->_tpl_vars['trackDirectorSubmissionsCount'][0]): ?>
<a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conferencePath'],'schedConf' => $this->_tpl_vars['schedConfPath'],'page' => 'trackDirector','op' => 'index','path' => 'submissionsInReview'), $this);?>
"><?php echo $this->_tpl_vars['trackDirectorSubmissionsCount'][0]; ?>
 <?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.queue.short.submissionsInReview"), $this);?>
</a>
<?php else: ?>
<span class="disabled">0 <?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.queue.short.submissionsInReview"), $this);?>
</span>
<?php endif; ?>
</td>
</tr>
<?php endif; ?>
<?php if ($this->_tpl_vars['isValid']['Author'][$this->_tpl_vars['conferenceId']][$this->_tpl_vars['schedConfId']] || $this->_tpl_vars['isValid']['Reviewer'][$this->_tpl_vars['conferenceId']][$this->_tpl_vars['schedConfId']]): ?>
<tr><td class="separator" width="100%" colspan="5">&nbsp;</td></tr>
<?php endif; ?>
<?php if ($this->_tpl_vars['isValid']['Author'][$this->_tpl_vars['conferenceId']][$this->_tpl_vars['schedConfId']]): ?>
<?php $this->assign('authorSubmissionsCount', $this->_tpl_vars['submissionsCount']['Author'][$this->_tpl_vars['conferenceId']][$this->_tpl_vars['schedConfId']]); ?>
<tr>
<td>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conferencePath'],'schedConf' => $this->_tpl_vars['schedConfPath'],'page' => 'author'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.role.author"), $this);?>
</a></td>
<td></td>
<td></td>
<td><?php if ($this->_tpl_vars['authorSubmissionsCount'][0]): ?>
<a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conferencePath'],'schedConf' => $this->_tpl_vars['schedConfPath'],'page' => 'author'), $this);?>
"><?php echo $this->_tpl_vars['authorSubmissionsCount'][0]; ?>
 <?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.queue.short.active"), $this);?>
</a>
<?php else: ?><span class="disabled">0 <?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.queue.short.active"), $this);?>
</span><?php endif; ?>
</td>
<td align="right">[<a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conferencePath'],'schedConf' => $this->_tpl_vars['schedConfPath'],'page' => 'author','op' => 'submit'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "author.submit"), $this);?>
</a>]</td>
</tr>
<?php endif; ?>
<?php if ($this->_tpl_vars['isValid']['Reviewer'][$this->_tpl_vars['conferenceId']][$this->_tpl_vars['schedConfId']]): ?>
<?php $this->assign('reviewerSubmissionsCount', $this->_tpl_vars['submissionsCount']['Reviewer'][$this->_tpl_vars['conferenceId']][$this->_tpl_vars['schedConfId']]); ?>
<tr>
<td>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conferencePath'],'schedConf' => $this->_tpl_vars['schedConfPath'],'page' => 'reviewer'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.role.reviewer"), $this);?>
</a></td>
<td></td>
<td></td>
<td><?php if ($this->_tpl_vars['reviewerSubmissionsCount'][0]): ?>
<a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conferencePath'],'schedConf' => $this->_tpl_vars['schedConfPath'],'page' => 'reviewer'), $this);?>
"><?php echo $this->_tpl_vars['reviewerSubmissionsCount'][0]; ?>
 <?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.queue.short.active"), $this);?>
</a>
<?php else: ?><span class="disabled">0 <?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.queue.short.active"), $this);?>
</span><?php endif; ?>
</td>
</td align="right"></td>
</tr>
<?php endif; ?>
<tr>
<td width="25%"></td>
<td width="14%"></td>
<td width="14%"></td>
<td width="14%"></td>
<td width="33%"></td>
</tr>

</table>
</div>
<?php endforeach; endif; unset($_from); ?>

<?php echo $this->_plugins['function']['call_hook'][0][0]->smartyCallHook(array('name' => "Templates::User::Index::Conference",'conference' => $this->_tpl_vars['conference']), $this);?>

</div>
<?php endforeach; endif; unset($_from); ?>
<!--
<?php 
$str_conexao="host=192.168.254.208 port=5432 dbname=ocs user=handrick password=hclh2o";
$conn=pg_connect($str_conexao) or die("A conex&atilde;o ao banco de dados falhou!");
$session =& Request::getSession();
$userId = $session->getUserId();
$inscrito = 0;
//VERIFICAR SE USU&aacute;RIO LOGADO � AUTOR
//$sql modificado em 24/10/2010 adicionada a condi��o para o usu�rio que � avaliador
if($userId == 1){
	$sql = "SELECT distinct i.user_id FROM inscriptions as i 
			INNER JOIN users as u ON u.user_id = i.user_id
			INNER JOIN paper_authors as pa ON pa.email = u.email
			INNER JOIN papers as p ON pa.paper_id = p.paper_id WHERE p.status = 3 AND pa.primary_contact = 1";
	$rs = pg_query($conn, $sql);
	$apresentadores = pg_num_rows($rs);
	$sql = "SELECT * FROM inscriptions";
	$rs = pg_query($conn, $sql);
	$geral = pg_num_rows($rs);
	echo "Apresentadores inscritos: ";
	echo $apresentadores;
	echo "<br>Outros participantes: ";
	echo $geral-$apresentadores;
	//echo "+ #ID 650, inscrito no dia 2010-11-03 �s 08:53:38.843123"; //1 adicionado devido ao 'participante extra' inscrito";
	/*TODOS OS APRESENTADORES DOS ARTIGOS ACEITOS - AS OUTRAS LINHAS DA TABELA INSCRIPTIONS*/
	
}

if($userId == 3400){
	$md5userid = md5($userId);
	echo "<a href=http://connepi.ifal.edu.br/ocs/reports/form/credenciamento.php?session=$md5userid>Credenciar</a>";
}
$sqlRoles = "SELECT * FROM roles WHERE user_id = $userId AND (role_id = 256 OR role_id = 4096 OR role_id = 32768)";
$rsRoles = pg_query($conn, $sqlRoles);
if(pg_num_rows($rsRoles) > 0 && $userId != 3400){
	//BUSCAR SE USU�RIO � AVALIADOR
	$sqlReviewer = "SELECT * FROM review_assignments WHERE reviewer_id = $userId AND date_completed IS NOT NULL";
	$rsReviewer = pg_query($conn, $sqlReviewer);
	if(pg_num_rows($rsReviewer)){
		echo "<br><B>OBTENHA SEU CERTIFICADO DE AVALIADOR</b>";
			//echo "<h4><b>Observa&ccedil;&atilde;o: Apenas o apresentador possui vaga reservada no CONNEPI 2010</h4></b>";
			//echo "<b>- Caso voc&ecirc; n&atilde;o seja o apresentador de algum artigo listado ou ir&aacute; apresentar algum artigo que n&atilde;o aparece na lista, solicite ao usu&aacute;rio que o(s) enviou para modificar os metadados do(s) mesmo(s).</b><br>";
			//	echo "<b>- </b>";
			//echo "<B><h4>O SISTEMA DE INSCRI&Ccedil;&Atilde;O EST&Aacute; TEMPORARIAMENTE EM FASE DE TESTES, N&Atilde;O EST&Atilde;O SENDO REALIZADAS INSCRI&Ccedil;&Otilde;ES V&Aacute;LIDAS.</h4></B>";
		 ?>
			<form name="form_avaliador" method="post" action="http://connepi.ifal.edu.br/ocs/reports/gerar.php">
			<input type="hidden" align="top" name="cod" value="256"/>
			<input type="hidden" align="top" name="tipo" value="1"/>
			<input type="hidden" id="user" name="user" value="<?php  echo $userId;  ?>" />
			<input type="submit" id="confirmar" value="Gerar Certificado"/>
			</form>
		<?php 		
	}

	//BUSCAR SE USU�RIO PARTICIPOU
	$sqlParticipante = "SELECT * FROM inscriptions WHERE user_id = $userId AND accredited = 1";
	$rsParticipante = pg_query($conn, $sqlParticipante);
	if(pg_num_rows($rsParticipante)){
		echo "<br><br><B>OBTENHA SEU CERTIFICADO DE PARTICIPA&Ccedil;&Atilde;O</B>";
		 ?>
		<form name="form_participante" method="post" action="http://connepi.ifal.edu.br/ocs/reports/gerar.php">
		<input type="hidden" align="top" name="cod" value="4096"/>
		<input type="hidden" align="top" name="tipo" value="7"/>
		<input type="hidden" id="user" name="user" value="<?php  echo $userId;  ?>" />
		<input type="submit" id="confirmar" value="Gerar Certificado"/>
		</form>
		<?php 
	}
	
	//BUSCAR SE USU�RIO APRESENTOU
	$sqlUser = "SELECT * FROM users WHERE user_id = $userId";
	$rsUser = pg_query($conn, $sqlUser);
	$arrayUser = pg_fetch_array($rsUser);
	$userEmail = $arrayUser['email'];
	$sqlApresentacao = "SELECT ps.paper_id as id, pa.email as email, ps.setting_value as title FROM paper_authors as pa
						INNER JOIN published_papers as pp ON pa.paper_id = pp.paper_id
						INNER JOIN paper_settings as ps ON ps.paper_id = pp.paper_id
						WHERE UPPER(pa.email) LIKE UPPER('$userEmail') AND ps.setting_name LIKE 'title'";
	$rsApresentacao = pg_query($conn, $sqlApresentacao);
	if(pg_num_rows($rsApresentacao)){
		echo "<br><br><B>CERTIFICADO(S) DE APRESENTA&Ccedil;&Atilde;O</b><br>";
		while($arrayApresentacao = pg_fetch_array($rsApresentacao)){
			echo $arrayApresentacao['title']."<br>";
			$id = $arrayApresentacao['id'];
			$sqlApresentador = "SELECT first_name, middle_name, last_name FROM paper_authors WHERE paper_id = $id AND primary_contact = 1";
			$rsApresentador = pg_query($conn, $sqlApresentador);
			if(pg_num_rows($rsApresentador)){
				$arrayApresentador = pg_fetch_array($rsApresentador);
				echo "Apresentador: ".$arrayApresentador['first_name']." ".$arrayApresentador['middle_name']." ".$arrayApresentador['last_name']."<br>"; ?>
				<form name="form_participante" method="post" action="http://connepi.ifal.edu.br/ocs/reports/gerar.php">
			<input type="hidden" align="top" name="cod" value="4096"/>
			<input type="hidden" align="top" name="tipo" value="8"/>
			<input type="hidden" id="paper" name="paper" value="<?php  echo $arrayApresentacao['id'];  ?>" />
			<input type="submit" id="confirmar" value="Gerar Certificado"/>
			</form>
			<?php 
			}
			 ?>
			
			<br>
			<br>
			<?php 
		}
	}
	
	
	//BUSCAR SE USU&aacute;RIO EST&aacute; INSCRITO
	$sqlInscriptions = "SELECT * FROM inscriptions WHERE user_id = $userId";
	$rsInscriptions = pg_query($conn, $sqlInscriptions);
	if (pg_num_rows($rsInscriptions) == 1 || pg_num_rows($rsInscriptions) == 0){
		if(pg_num_rows($rsInscriptions) == 1){
			//echo "<b><h3>SUA INSCRI&Ccedil;&Atilde;O NO CONNEPI EST&Aacute; <blink><span style=\"color: red;\">CONFIRMADA</span></blink></h3></b>";
			//echo "<B><h4>O SISTEMA DE INSCRI&Ccedil;&Atilde;O EST&Aacute; TEMPORARIAMENTE EM FASE DE TESTES, N&Atilde;O EST&Atilde;O SENDO REALIZADAS INSCRI&Ccedil;&Otilde;ES V&Aacute;LIDAS.</h4></B>";
			$inscrito = 1;
		}
		//CASO USU&aacute;RIO LOGADO N&atilde;O ESTEJA INSCRITO
		if($inscrito == 0){
			//echo "<B><h3>CONFIRME SUA INSCRI&Ccedil;&Atilde;O NO CONNEPI</h3></b>";
			//echo "<h4><b>Observa&ccedil;&atilde;o: Apenas o apresentador possui vaga reservada no CONNEPI 2010</h4></b>";
				//echo "<b>- Caso voc&ecirc; n&atilde;o seja o apresentador de algum artigo listado ou ir&aacute; apresentar algum artigo que n&atilde;o aparece na lista, solicite ao usu&aacute;rio que o(s) enviou para modificar os metadados do(s) mesmo(s).</b><br>";
			//	echo "<b>- </b>";
			//echo "<B><h4>O SISTEMA DE INSCRI&Ccedil;&Atilde;O EST&Aacute; TEMPORARIAMENTE EM FASE DE TESTES, N&Atilde;O EST&Atilde;O SENDO REALIZADAS INSCRI&Ccedil;&Otilde;ES V&Aacute;LIDAS.</h4></B>";

			//echo "Voc&ecirc; <blink><b><span style=\"color: red;\">n&atilde;o est&aacute; inscrito(a)</span></b></blink> no V CONNEPI.<br>";
		if(2<1){ //desabilitando
		 ?>
			<form name="form_inscricao" method="post" action="http://connepi.ifal.edu.br/ocs/templates/user/processaInscricao.php">
			<input type="hidden" align="top" name="cod" value="0"/>
			<input type="hidden" id="user" name="user" value="<?php  echo $userId;  ?>" />
			<input type="submit" id="confirmar" value="Confirmar Inscri&ccedil;&atilde;o"/>
			</form>
		<?php 	
			}		
		}
		//SELECIONA INFORMA��ES DO USU�RIO LOGADO, INFORMA��O UTILIZADA: EMAIL (users.email)
		$sqlUser = "SELECT * FROM users WHERE user_id = $userId";
		$rsUser = pg_query($conn, $sqlUser);
		$arrayUser = pg_fetch_array($rsUser);
		//O E-MAIL EST� COMO UNIQUE NO BANCO, PORTANTO PODE SER UTILIZADO COMO CHAVE PRIM�RIA
		$userEmail = $arrayUser["email"];
		//BUSCAR SE USU&aacute;RIO LOGADO POSSUI ARTIGO ACEITO E � APRESENTADOR
		$sqlPresenter = "SELECT pa.email, pa.primary_contact as apresentador, ps.setting_value as titulo,
				pa.author_id, p.user_id
				FROM paper_authors AS pa
				INNER JOIN papers as p on p.paper_id = pa.paper_id
				INNER JOIN paper_settings as ps on ps.paper_id = p.paper_id
				WHERE UPPER(pa.email) = UPPER('$userEmail')
				AND ps.setting_name = 'title'
				AND p.status = 3 ORDER BY pa.primary_contact DESC";
		
		$rsPresenter = pg_query($conn, $sqlPresenter);
		$count = pg_num_rows($rsPresenter);
		
		//CASO USU&aacute;RIO LOGADO POSSUA ENVIO ARTIGOS ACEITOS
		if($count > 0 && 2<1){ //desabilitando
			$arrayPresenter = pg_fetch_array($rsPresenter);
			echo "Voc&ecirc; <b>possui</b> $count artigo(s) aceito(s) no sistema:<br>";
			echo "<ol>";
			for($i=0; $i<$count; $i++){
				$arrayPresenter = pg_fetch_array($rsPresenter, $i);
				$condPresenter = $arrayPresenter["apresentador"];
				echo "<li>".$arrayPresenter["titulo"]."</li>";
				echo "<ul>";
				if(strtoupper($arrayPresenter["email"]) == strtoupper($userEmail) && $arrayPresenter["apresentador"] == 1)
					echo "<b><li>Voc&ecirc; &eacute; o(a) apresentador(a) deste artigo.</li></b><br>";
				if($userId != $arrayPresenter["user_id"])
					echo "<b><li>Artigo submetido por outro usu&aacute;rio. Voc&ecirc; n&atilde;o pode definir o apresentador.</li></b><br>";
				
                                echo "</ul>";
				
				
				$titulo = $arrayPresenter["titulo"];
				/*Adicionar busca por autores do artigo, caso o usu�rio logado, seja o usu�rio que enviou o artigo
				* ele poder� modificar o apresentador.
				* 
				* Outro detalhe � que dever� aparecer ao lado do nome de cada autor se o e-mail do autor j� est� registrado no sistema*/
				//SELECIONA paper_id NO BANCO, ATRAV�S DA BUSCA PELO T�TULO DO ARTIGO

				$sqlPaper = "SELECT * FROM papers as p INNER JOIN paper_settings as ps ON p.paper_id = ps.paper_id WHERE ps.setting_name = 'title'
							AND ps.setting_value = '$titulo' AND p.user_id = $userId";
				$rsPaper = pg_query($conn, $sqlPaper);
				$countPaper = pg_num_rows($rsPaper);
				if($countPaper > 0){
					
					$arrayPaper = pg_fetch_array($rsPaper);
					$paperId = $arrayPaper["paper_id"];
					echo "<b>Lista de autores. O apresentador est&aacute; destacado abaixo:</b>";

					$sqlAuthors = "SELECT * FROM paper_authors WHERE paper_id = $paperId";
					$rsAuthors = pg_query($conn, $sqlAuthors);
					 ?>
					<table id="authors">
						<form name="form_presenter" method="post" action="http://connepi.ifal.edu.br/ocs/templates/user/processaApresentador.php">
						<input type="hidden" id="id" name="id" value="<?php  echo $userId;  ?>" />
					<?php 
					while($arrayAuthors = pg_fetch_array($rsAuthors)){
						$authorEmail = $arrayAuthors['email'];
						$sqlVerifyUser = "SELECT * FROM users WHERE UPPER(email) LIKE UPPER('$authorEmail')";
						$rsVerifyUser = pg_query($conn, $sqlVerifyUser);
						$countisUser = pg_num_rows($rsVerifyUser);
						$arrayUserInscription = pg_fetch_array($rsVerifyUser);
						$userInscId = $arrayUserInscription["user_id"];
						$sqlUserInsc = "SELECT * FROM inscriptions WHERE user_id = $userInscId";
						$rsUserInsc = pg_query($conn, $sqlUserInsc);
						$authorInsc = pg_num_rows($rsUserInsc);
						 ?>
						<tr style="<?php if($arrayAuthors['primary_contact'] == 1){ echo "background-color: #cccccc";} ?>">
							<td align=left><input type=radio name=author value="<?php echo $userInscId."/".$arrayAuthors['paper_id']."/".$arrayAuthors['author_id']; ?>" 
						<?php 
						if($arrayAuthors["primary_contact"] == 1){
							echo "checked";
						}
						
						if($countisUser == 0){
							echo "disabled";
						}
						
						echo "/>";
						echo $arrayAuthors["first_name"]." ".$arrayAuthors["middle_name"]." ".$arrayAuthors["last_name"];
						echo "</td>";
					
						if($countisUser > 0){
							echo "<td>Usu&aacute;rio do OCS.</td>";	
						}
						else
							echo "<td>Este(a) autor(a) ainda n&atilde;o &eacute; usu&aacute;rio(a) do sistema.</td>";
						echo "</tr>";
						
					}
					 ?>
					<tr><td><input type="submit" id="confirmar" value="Confirmar Apresentador"/></td><td></td><tr>
						</form>
					</table>
					<?php 
				}
				
			}
				echo "</ol>";

		}

	}
	
	 ?>
	<?php 
	//CASO USU�RIO LOGADO ESTEJA INSCRITO, EXIBE INSCRI��O EM MINICURSOS
	if ($inscrito == 1 && 2<1){ //desabilitando
		 ?>
		<br>
		<B><h3>Voc&ecirc; pode se inscrever em um dos minicursos abaixo:</h3></B>
		
		<script type="text/javascript" src="http://connepi.ifal.edu.br/ocs/templates/user/minicurso.js"></script>
		<div id="minicurso" style="visibility:visible; position:relative;">
		<form name="form_minicurso" method="post" action="http://connepi.ifal.edu.br/ocs/templates/user/processaInscricao.php">
		<table id="minicursos" align=center cellpadding=5 cellspacing=10>
		<tr>
		<td><b>Minicurso</b></td>
		<td><b>Vagas Dispon&iacute;neis</b></td>
		</tr>
		<?php 
		$id = $userId;
		$sqlCourse = "select * from inscriptions where user_id = $id";
		$rsCourse = pg_query($conn, $sqlCourse);
		$arrayCourse = pg_fetch_array($rsCourse);
		$courseId = $arrayCourse["course_id"];
		$inscrito = pg_num_rows($rsCourse);
		
		//Consulta minicursos
		$sqlCourse = "select course_id, course_name, capacity from courses where course_id > 0 order by course_id";

		$rsCourse = pg_query($conn, $sqlCourse);
		while ($arrayCourse = pg_fetch_array($rsCourse)){
			 ?>
			<tr style="<?php  if($courseId == $arrayCourse["course_id"]) echo "background-color: #cccccc;"; ?>">
			<td align=left><input type="radio" align="top" name="cod" value="<?php  echo $arrayCourse["course_id"];  ?>" <?php  if($courseId == $arrayCourse["course_id"]) echo "checked" ?> ><?php  echo $arrayCourse["course_name"];  ?></td>
			<?php  $cid = $arrayCourse["course_id"];
			$sqlInscriptions = "select count(course_id) as qtd from inscriptions where course_id = $cid";
			$rsInscriptions = pg_query($conn, $sqlInscriptions);
			$arrayInscriptions = pg_fetch_array($rsInscriptions);
			$capacity = $arrayCourse["capacity"];
			$qtd = $arrayInscriptions["qtd"];
			 ?>
			<td><?php  echo $capacity - $qtd;  ?></td>
			</tr>
			<?php 
		}
		 ?>
		<tr>
		<td colspan=5>
		<input type="hidden" id="user" name="user" value="<?php  echo $id;  ?>" />
		<input type="submit" id="confirmar" value="Confirmar"/>
		</td>
		</tr>
		<?php 
		if($courseId > 0)
        		echo "Voc&ecirc est&aacute; inscrito no Minicurso destacado abaixo:";
		$sqlInscription = "SELECT i.course_id, c.course_name FROM inscriptions as i
												INNER JOIN courses as c ON i.course_id = c.course_id
												WHERE i.user_id = $id
												ORDER BY i.course_id";
		//echo $sql;exit;
		$rsInscription = pg_query($conn, $sqlInscription);
		while ($arrayInscription = pg_fetch_array($rsInscription)){
			echo "<h5>".$rs1["c.course_name"]."</h5>";
		}							
		 ?>
		</table>
		</form>
		</div>
		<?php 
	}
}
 ?>-->
<?php if (! $this->_tpl_vars['hasRole']): ?>
<?php if (! $this->_tpl_vars['currentSchedConf']): ?>
<p><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.noRoles.chooseConference"), $this);?>
</p>
<?php $_from = $this->_tpl_vars['allConferences']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['conferenceId'] => $this->_tpl_vars['thisConference']):
?>
<h4><?php echo ((is_array($_tmp=$this->_tpl_vars['thisConference']->getConferenceTitle())) ? $this->_run_mod_handler('escape', true, $_tmp) : $this->_plugins['modifier']['escape'][0][0]->smartyEscape($_tmp)); ?>
</h4>
<?php if (! empty ( $this->_tpl_vars['allSchedConfs'][$this->_tpl_vars['conferenceId']] )): ?>
<ul class="plain">
<?php $_from = $this->_tpl_vars['allSchedConfs'][$this->_tpl_vars['conferenceId']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['schedConfId'] => $this->_tpl_vars['thisSchedConf']):
?>
<li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['thisConference']->getPath(),'schedConf' => $this->_tpl_vars['thisSchedConf']->getPath(),'page' => 'user','op' => 'index'), $this);?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['thisSchedConf']->getSchedConfTitle())) ? $this->_run_mod_handler('escape', true, $_tmp) : $this->_plugins['modifier']['escape'][0][0]->smartyEscape($_tmp)); ?>
</a></li>
<?php endforeach; endif; unset($_from); ?>
</ul>
<?php endif; ?><?php endforeach; endif; unset($_from); ?>
<?php else: ?><p><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.noRoles.noRolesForConference"), $this);?>
</p>
<ul class="plain">
<li>
&#187;
<?php if ($this->_tpl_vars['allowRegAuthor']): ?>
<?php if ($this->_tpl_vars['submissionsOpen']): ?>
<a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'author','op' => 'submit'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.noRoles.submitProposal"), $this);?>
</a>
<?php else: ?><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.noRoles.submitProposalSubmissionsClosed"), $this);?>

<?php endif; ?><?php else: ?><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.noRoles.submitProposalRegClosed"), $this);?>

<?php endif; ?></li>
<li>
&#187;
<?php if ($this->_tpl_vars['allowRegReviewer']): ?>
<?php echo ((is_array($_tmp=$this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'user','op' => 'index'), $this))) ? $this->_run_mod_handler('assign', true, $_tmp, 'userHomeUrl') : $this->_plugins['modifier']['assign'][0][0]->smartyAssign($_tmp, 'userHomeUrl'));?>

<a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('op' => 'become','path' => 'reviewer','source' => $this->_tpl_vars['userHomeUrl']), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.noRoles.regReviewer"), $this);?>
</a>
<?php else: ?><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.noRoles.regReviewerClosed"), $this);?>

<?php endif; ?></li>
<li>
&#187;
<?php if ($this->_tpl_vars['schedConfPaymentsEnabled']): ?>
<a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'schedConf','op' => 'registration'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.noRoles.register"), $this);?>
</a>
<?php else: ?><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.noRoles.registerUnavailable"), $this);?>

<?php endif; ?></li>
</ul>
<?php endif; ?><?php endif; ?>

<div id="myAccount">
<h3><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.myAccount"), $this);?>
</h3>
<ul class="plain">
<?php if ($this->_tpl_vars['hasOtherConferences']): ?>
<?php if (! $this->_tpl_vars['showAllConferences']): ?>
<li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => 'index','page' => 'user'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.showAllConferences"), $this);?>
</a></li>
<?php endif; ?>
<?php endif; ?>
<li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'user','op' => 'profile'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.editMyProfile"), $this);?>
</a></li>
<li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'user','op' => 'changePassword'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.changeMyPassword"), $this);?>
</a></li>
<li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'login','op' => 'signOut'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.logOut"), $this);?>
</a></li>
<?php echo $this->_plugins['function']['call_hook'][0][0]->smartyCallHook(array('name' => "Templates::User::Index::MyAccount"), $this);?>

</ul>
</div>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "common/footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>