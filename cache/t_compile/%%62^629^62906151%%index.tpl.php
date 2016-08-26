<?php /* Smarty version 2.6.26, created on 2016-08-26 06:53:23
         compiled from schedConf/index.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'nl2br', 'schedConf/index.tpl', 22, false),array('modifier', 'escape', 'schedConf/index.tpl', 362, false),array('modifier', 'date_format', 'schedConf/index.tpl', 373, false),array('function', 'translate', 'schedConf/index.tpl', 349, false),array('function', 'url', 'schedConf/index.tpl', 353, false),)), $this); ?>
<?php echo ''; ?><?php $this->assign('pageCrumbTitleTranslated', $this->_tpl_vars['schedConf']->getSchedConfTitle()); ?><?php echo ''; ?><?php $this->assign('pageTitleTranslated', $this->_tpl_vars['schedConf']->getFullTitle()); ?><?php echo ''; ?><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "common/header.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?><?php echo ''; ?>


<h2><?php echo ((is_array($_tmp=$this->_tpl_vars['schedConf']->getSetting('locationName'))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</h2>

<?php if ($this->_tpl_vars['schedConf']->getSchedConfTitle() == "V CONNEPI - 2010"): ?>
<?php 
$str_conexao="host=192.168.254.208 port=5432 dbname=ocs user=handrick password=hclh2o";
$conn=pg_connect($str_conexao) or die("A conex&atilde;o ao banco de dados falhou!");
$session =& Request::getSession();
$userId = $session->getUserId();
$inscrito = 0;
//VERIFICAR SE USU&aacute;RIO LOGADO É AUTOR
//$sql modificado em 24/10/2010 adicionada a condição para o usuário que é avaliador
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
	//echo "+ #ID 650, inscrito no dia 2010-11-03 às 08:53:38.843123"; //1 adicionado devido ao 'participante extra' inscrito";
	/*TODOS OS APRESENTADORES DOS ARTIGOS ACEITOS - AS OUTRAS LINHAS DA TABELA INSCRIPTIONS*/
	
}

if($userId == 3400){
	$md5userid = md5($userId);
	echo "<a href=http://connepi.ifal.edu.br/ocs/reports/form/credenciamento.php?session=$md5userid>Credenciar</a>";
}
$sqlRoles = "SELECT * FROM roles WHERE user_id = $userId AND (role_id = 256 OR role_id = 4096 OR role_id = 32768)";
$rsRoles = pg_query($conn, $sqlRoles);
if(pg_num_rows($rsRoles) > 0 && $userId != 3400){
	//BUSCAR SE USUÁRIO É AVALIADOR
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

	//BUSCAR SE USUÁRIO PARTICIPOU
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
	
	//BUSCAR SE USUÁRIO APRESENTOU
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
		//SELECIONA INFORMAÇÕES DO USUÁRIO LOGADO, INFORMAÇÃO UTILIZADA: EMAIL (users.email)
		$sqlUser = "SELECT * FROM users WHERE user_id = $userId";
		$rsUser = pg_query($conn, $sqlUser);
		$arrayUser = pg_fetch_array($rsUser);
		//O E-MAIL ESTÁ COMO UNIQUE NO BANCO, PORTANTO PODE SER UTILIZADO COMO CHAVE PRIMÁRIA
		$userEmail = $arrayUser["email"];
		//BUSCAR SE USU&aacute;RIO LOGADO POSSUI ARTIGO ACEITO E É APRESENTADOR
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
				/*Adicionar busca por autores do artigo, caso o usuário logado, seja o usuário que enviou o artigo
				* ele poderá modificar o apresentador.
				* 
				* Outro detalhe é que deverá aparecer ao lado do nome de cada autor se o e-mail do autor já está registrado no sistema*/
				//SELECIONA paper_id NO BANCO, ATRAVÉS DA BUSCA PELO TÍTULO DO ARTIGO

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
	//CASO USUÁRIO LOGADO ESTEJA INSCRITO, EXIBE INSCRIÇÃO EM MINICURSOS
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
 ?>
<?php endif; ?>

<br />

<div><?php echo ((is_array($_tmp=$this->_tpl_vars['schedConf']->getLocalizedSetting('introduction'))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</div>

<?php if ($this->_tpl_vars['enableAnnouncementsHomepage']): ?>
		<div id="announcementsHome">
		<h3><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "announcement.announcementsHome"), $this);?>
</h3>
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "announcement/list.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>	
		<table class="announcementsMore">
			<tr>
				<td><a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'announcement'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "announcement.moreAnnouncements"), $this);?>
</a></td>
			</tr>
		</table>
	</div>
<?php endif; ?>

<br />

<?php if ($this->_tpl_vars['homepageImage']): ?>
<div id="homepageImage"><img src="<?php echo $this->_tpl_vars['publicFilesDir']; ?>
/<?php echo ((is_array($_tmp=$this->_tpl_vars['homepageImage']['uploadName'])) ? $this->_run_mod_handler('escape', true, $_tmp) : $this->_plugins['modifier']['escape'][0][0]->smartyEscape($_tmp)); ?>
" width="<?php echo $this->_tpl_vars['homepageImage']['width']; ?>
" height="<?php echo $this->_tpl_vars['homepageImage']['height']; ?>
" <?php if ($this->_tpl_vars['homepageImageAltText'] != ''): ?>alt="<?php echo ((is_array($_tmp=$this->_tpl_vars['homepageImageAltText'])) ? $this->_run_mod_handler('escape', true, $_tmp) : $this->_plugins['modifier']['escape'][0][0]->smartyEscape($_tmp)); ?>
"<?php else: ?>alt="<?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.conferenceHomepageImage.altText"), $this);?>
"<?php endif; ?> /></div>
<?php endif; ?>

<?php if ($this->_tpl_vars['schedConfPostOverview'] || $this->_tpl_vars['schedConfShowCFP'] || $this->_tpl_vars['schedConfPostPolicies'] || $this->_tpl_vars['schedConfShowProgram'] || $this->_tpl_vars['schedConfPostPresentations'] || $this->_tpl_vars['schedConfPostSchedule'] || $this->_tpl_vars['schedConfPostPayment'] || $this->_tpl_vars['schedConfPostAccommodation'] || $this->_tpl_vars['schedConfPostSupporters'] || $this->_tpl_vars['schedConfPostTimeline']): ?>
<h3><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "schedConf.contents"), $this);?>
</h3>

<ul class="plain">
	<?php if ($this->_tpl_vars['schedConfPostOverview']): ?><li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'schedConf','op' => 'overview'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "schedConf.overview"), $this);?>
</a></li><?php endif; ?>
	<?php if ($this->_tpl_vars['schedConfShowCFP']): ?>
		<li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'schedConf','op' => 'cfp'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "schedConf.cfp"), $this);?>
</a><?php if ($this->_tpl_vars['submissionsOpenDate']): ?> (<?php echo ((is_array($_tmp=$this->_tpl_vars['submissionsOpenDate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, $this->_tpl_vars['dateFormatLong']) : smarty_modifier_date_format($_tmp, $this->_tpl_vars['dateFormatLong'])); ?>
 - <?php echo ((is_array($_tmp=$this->_tpl_vars['submissionsCloseDate'])) ? $this->_run_mod_handler('date_format', true, $_tmp, $this->_tpl_vars['dateFormatLong']) : smarty_modifier_date_format($_tmp, $this->_tpl_vars['dateFormatLong'])); ?>
)<?php endif; ?></li>
	<?php endif; ?>
	<?php if ($this->_tpl_vars['schedConfPostTrackPolicies']): ?><li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'schedConf','op' => 'trackPolicies'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "schedConf.trackPolicies"), $this);?>
</a></li><?php endif; ?>
	<?php if ($this->_tpl_vars['schedConfShowProgram']): ?><li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'schedConf','op' => 'program'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "schedConf.program"), $this);?>
</a></li><?php endif; ?>
	<?php if ($this->_tpl_vars['schedConfPostPresentations']): ?><li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'schedConf','op' => 'presentations'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "schedConf.presentations.short"), $this);?>
</a></li><?php endif; ?>
	<?php if ($this->_tpl_vars['schedConfPostSchedule']): ?><li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'schedConf','op' => 'schedule'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "schedConf.schedule"), $this);?>
</a></li><?php endif; ?>
	<?php if ($this->_tpl_vars['schedConfPostPayment']): ?><li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'schedConf','op' => 'registration'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "schedConf.registration"), $this);?>
</a></li><?php endif; ?>
	<?php if ($this->_tpl_vars['schedConfPostAccommodation']): ?><li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'schedConf','op' => 'accommodation'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "schedConf.accommodation"), $this);?>
</a></li><?php endif; ?>
	<?php if ($this->_tpl_vars['schedConfPostSupporters']): ?><li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'about','op' => 'organizingTeam'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "schedConf.supporters"), $this);?>
</a></li><?php endif; ?>
	<?php if ($this->_tpl_vars['schedConfPostTimeline']): ?><li>&#187; <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'schedConf','op' => 'timeline'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "schedConf.timeline"), $this);?>
</a></li><?php endif; ?>
</ul>
<?php endif; ?>
<?php echo $this->_tpl_vars['additionalHomeContent']; ?>


<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "common/footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>