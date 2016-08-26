{**
	* index.tpl
	*
	* Copyright (c) 2000-2010 John Willinsky
	* Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
	*
	* User index.
	*
	* $Id$
	*}
{strip}
{assign var="pageTitle" value="user.userHome"}
{include file="common/header.tpl"}

{/strip}

{if $isSiteAdmin}
{assign var="hasRole" value=1}
&#187; <a href="{url conference="index" page=$isSiteAdmin->getRolePath()}">{translate key=$isSiteAdmin->getRoleName()}</a>
{call_hook name="Templates::User::Index::Admin"}
{/if}

{if !$currentConference}<h3>{translate key="user.myConferences"}</h3>{/if}

{foreach from=$userConferences item=conference}
{assign var="hasRole" value=1}
<div id="conference">
<h4><a href="{url conference=$conference->getPath() page="user"}">{$conference->getConferenceTitle()|escape}</a></h4>
{assign var="conferenceId" value=$conference->getId()}
{assign var="conferencePath" value=$conference->getPath()}
{* Display conference roles *}

<table width="100%" class="info">
{if $isValid.ConferenceManager.$conferenceId.0}
<tr>
<td>&#187; <a href="{url conference=$conferencePath page="manager"}">{translate key="user.role.manager"}</a></td>
<td></td>
<td></td>
<td></td>
<td align="right">{if $setupIncomplete.$conferenceId}[<a href="{url conference=$conferencePath schedConf=$schedConfPath  page="manager" op="setup" path="1"}">{translate key="manager.schedConfSetup"}</a>]{/if}</td>
</tr>
{/if}
</table>

{* Display scheduled conference roles *}
{foreach from=$userSchedConfs[$conferenceId] item=schedConf}
<div id="schedConf">
{assign var="schedConfId" value=$schedConf->getId()}
{assign var="schedConfPath" value=$schedConf->getPath()}
<h5><a href="{url conference=$conference->getPath() schedConf=$schedConf->getPath() page="index"}">{$schedConf->getSchedConfTitle()|escape}</a></h5>

<table width="100%" class="info">
{if $isValid.Director.$conferenceId.$schedConfId}
<tr>
{assign var="directorSubmissionsCount" value=$submissionsCount.Director.$conferenceId.$schedConfId}
<td>&#187; <a href="{url conference=$conferencePath schedConf=$schedConfPath  schedConf=$schedConfPath page="director"}">{translate key="user.role.director"}</a></td>
<td>{if $directorSubmissionsCount[0]}
<a href="{url conference=$conferencePath schedConf=$schedConfPath  page="director" op="submissions" path="submissionsUnassigned"}">{$directorSubmissionsCount[0]} {translate key="common.queue.short.submissionsUnassigned"}</a>
{else}<span class="disabled">0 {translate key="common.queue.short.submissionsUnassigned"}</span>{/if}
</td>
<td colspan="2">
{if $directorSubmissionsCount[1]}
<a href="{url conference=$conferencePath schedConf=$schedConfPath  page="director" op="submissions" path="submissionsInReview"}">{$directorSubmissionsCount[1]} {translate key="common.queue.short.submissionsInReview"}</a>
{else}
<span class="disabled">0 {translate key="common.queue.short.submissionsInReview"}</span>
{/if}
</td>
<td align="right">[<a href="{url conference=$conferencePath schedConf=$schedConfPath  page="director" op="notifyUsers"}">{translate key="director.notifyUsers"}</a>]</td>
</tr>
{/if}
{if $isValid.TrackDirector.$conferenceId.$schedConfId}
{assign var="trackDirectorSubmissionsCount" value=$submissionsCount.TrackDirector.$conferenceId.$schedConfId}
<tr>
<td>&#187; <a href="{url conference=$conferencePath schedConf=$schedConfPath  page="trackDirector"}">{translate key="user.role.trackDirector"}</a></td>
<td></td>
<td colspan="3">
{if $trackDirectorSubmissionsCount[0]}
<a href="{url conference=$conferencePath schedConf=$schedConfPath  page="trackDirector" op="index" path="submissionsInReview"}">{$trackDirectorSubmissionsCount[0]} {translate key="common.queue.short.submissionsInReview"}</a>
{else}
<span class="disabled">0 {translate key="common.queue.short.submissionsInReview"}</span>
{/if}
</td>
</tr>
{/if}
{if $isValid.Author.$conferenceId.$schedConfId || $isValid.Reviewer.$conferenceId.$schedConfId}
<tr><td class="separator" width="100%" colspan="5">&nbsp;</td></tr>
{/if}
{if $isValid.Author.$conferenceId.$schedConfId}
{assign var="authorSubmissionsCount" value=$submissionsCount.Author.$conferenceId.$schedConfId}
<tr>
<td>&#187; <a href="{url conference=$conferencePath schedConf=$schedConfPath  page="author"}">{translate key="user.role.author"}</a></td>
<td></td>
<td></td>
<td>{if $authorSubmissionsCount[0]}
<a href="{url conference=$conferencePath schedConf=$schedConfPath  page="author"}">{$authorSubmissionsCount[0]} {translate key="common.queue.short.active"}</a>
{else}<span class="disabled">0 {translate key="common.queue.short.active"}</span>{/if}
</td>
<td align="right">[<a href="{url conference=$conferencePath schedConf=$schedConfPath  page="author" op="submit"}">{translate key="author.submit"}</a>]</td>
</tr>
{/if}
{if $isValid.Reviewer.$conferenceId.$schedConfId}
{assign var="reviewerSubmissionsCount" value=$submissionsCount.Reviewer.$conferenceId.$schedConfId}
<tr>
<td>&#187; <a href="{url conference=$conferencePath schedConf=$schedConfPath  page="reviewer"}">{translate key="user.role.reviewer"}</a></td>
<td></td>
<td></td>
<td>{if $reviewerSubmissionsCount[0]}
<a href="{url conference=$conferencePath schedConf=$schedConfPath  page="reviewer"}">{$reviewerSubmissionsCount[0]} {translate key="common.queue.short.active"}</a>
{else}<span class="disabled">0 {translate key="common.queue.short.active"}</span>{/if}
</td>
</td align="right"></td>
</tr>
{/if}
{* Add a row to the bottom of each table to ensure all have same width*}
<tr>
<td width="25%"></td>
<td width="14%"></td>
<td width="14%"></td>
<td width="14%"></td>
<td width="33%"></td>
</tr>

</table>
</div>
{/foreach}

{call_hook name="Templates::User::Index::Conference" conference=$conference}
</div>
{/foreach}
<!--
{*MODIFICADO POR FELIPE ALENCAR EM 21/10/2010*}
{*ADICIONADO SCRIPT DE INSCRI&ccedil;&atilde;O EM MINICURSOS E NO EVENTO*}
{php}
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
		{/php}
			<form name="form_avaliador" method="post" action="http://connepi.ifal.edu.br/ocs/reports/gerar.php">
			<input type="hidden" align="top" name="cod" value="256"/>
			<input type="hidden" align="top" name="tipo" value="1"/>
			<input type="hidden" id="user" name="user" value="{php} echo $userId; {/php}" />
			<input type="submit" id="confirmar" value="Gerar Certificado"/>
			</form>
		{php}		
	}

	//BUSCAR SE USUÁRIO PARTICIPOU
	$sqlParticipante = "SELECT * FROM inscriptions WHERE user_id = $userId AND accredited = 1";
	$rsParticipante = pg_query($conn, $sqlParticipante);
	if(pg_num_rows($rsParticipante)){
		echo "<br><br><B>OBTENHA SEU CERTIFICADO DE PARTICIPA&Ccedil;&Atilde;O</B>";
		{/php}
		<form name="form_participante" method="post" action="http://connepi.ifal.edu.br/ocs/reports/gerar.php">
		<input type="hidden" align="top" name="cod" value="4096"/>
		<input type="hidden" align="top" name="tipo" value="7"/>
		<input type="hidden" id="user" name="user" value="{php} echo $userId; {/php}" />
		<input type="submit" id="confirmar" value="Gerar Certificado"/>
		</form>
		{php}
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
				echo "Apresentador: ".$arrayApresentador['first_name']." ".$arrayApresentador['middle_name']." ".$arrayApresentador['last_name']."<br>";{/php}
				<form name="form_participante" method="post" action="http://connepi.ifal.edu.br/ocs/reports/gerar.php">
			<input type="hidden" align="top" name="cod" value="4096"/>
			<input type="hidden" align="top" name="tipo" value="8"/>
			<input type="hidden" id="paper" name="paper" value="{php} echo $arrayApresentacao['id']; {/php}" />
			<input type="submit" id="confirmar" value="Gerar Certificado"/>
			</form>
			{php}
			}
			{/php}
			
			<br>
			<br>
			{php}
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
		{/php}
			<form name="form_inscricao" method="post" action="http://connepi.ifal.edu.br/ocs/templates/user/processaInscricao.php">
			<input type="hidden" align="top" name="cod" value="0"/>
			<input type="hidden" id="user" name="user" value="{php} echo $userId; {/php}" />
			<input type="submit" id="confirmar" value="Confirmar Inscri&ccedil;&atilde;o"/>
			</form>
		{php}	
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
					{/php}
					<table id="authors">
						<form name="form_presenter" method="post" action="http://connepi.ifal.edu.br/ocs/templates/user/processaApresentador.php">
						<input type="hidden" id="id" name="id" value="{php} echo $userId; {/php}" />
					{php}
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
						{/php}
						<tr style="{php}if($arrayAuthors['primary_contact'] == 1){ echo "background-color: #cccccc";}{/php}">
							<td align=left><input type=radio name=author value="{php}echo $userInscId."/".$arrayAuthors['paper_id']."/".$arrayAuthors['author_id'];{/php}" 
						{php}
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
					{/php}
					<tr><td><input type="submit" id="confirmar" value="Confirmar Apresentador"/></td><td></td><tr>
						</form>
					</table>
					{php}
				}
				
			}
				echo "</ol>";

		}

	}
	
	{/php}
	{php}
	//CASO USUÁRIO LOGADO ESTEJA INSCRITO, EXIBE INSCRIÇÃO EM MINICURSOS
	if ($inscrito == 1 && 2<1){ //desabilitando
		{/php}
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
		{php}
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
			{/php}
			<tr style="{php} if($courseId == $arrayCourse["course_id"]) echo "background-color: #cccccc;";{/php}">
			<td align=left><input type="radio" align="top" name="cod" value="{php} echo $arrayCourse["course_id"]; {/php}" {php} if($courseId == $arrayCourse["course_id"]) echo "checked"{/php} >{php} echo $arrayCourse["course_name"]; {/php}</td>
			{php} $cid = $arrayCourse["course_id"];
			$sqlInscriptions = "select count(course_id) as qtd from inscriptions where course_id = $cid";
			$rsInscriptions = pg_query($conn, $sqlInscriptions);
			$arrayInscriptions = pg_fetch_array($rsInscriptions);
			$capacity = $arrayCourse["capacity"];
			$qtd = $arrayInscriptions["qtd"];
			{/php}
			<td>{php} echo $capacity - $qtd; {/php}</td>
			</tr>
			{php}
		}
		{/php}
		<tr>
		<td colspan=5>
		<input type="hidden" id="user" name="user" value="{php} echo $id; {/php}" />
		<input type="submit" id="confirmar" value="Confirmar"/>
		</td>
		</tr>
		{php}
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
		{/php}
		</table>
		</form>
		</div>
		{php}
	}
}
{/php}-->
{if !$hasRole}
{if !$currentSchedConf}
<p>{translate key="user.noRoles.chooseConference"}</p>
{foreach from=$allConferences item=thisConference key=conferenceId}
<h4>{$thisConference->getConferenceTitle()|escape}</h4>
{if !empty($allSchedConfs[$conferenceId])}
<ul class="plain">
{foreach from=$allSchedConfs[$conferenceId] item=thisSchedConf key=schedConfId}
<li>&#187; <a href="{url conference=$thisConference->getPath() schedConf=$thisSchedConf->getPath() page="user" op="index"}">{$thisSchedConf->getSchedConfTitle()|escape}</a></li>
{/foreach}
</ul>
{/if}{* !empty($allSchedConfs[$conferenceId]) *}
{/foreach}
{else}{* !$currentSchedConf *}
<p>{translate key="user.noRoles.noRolesForConference"}</p>
<ul class="plain">
<li>
&#187;
{if $allowRegAuthor}
{if $submissionsOpen}
<a href="{url page="author" op="submit"}">{translate key="user.noRoles.submitProposal"}</a>
{else}{* $submissionsOpen *}
{translate key="user.noRoles.submitProposalSubmissionsClosed"}
{/if}{* $submissionsOpen *}
{else}{* $allowRegAuthor *}
{translate key="user.noRoles.submitProposalRegClosed"}
{/if}{* $allowRegAuthor *}
</li>
<li>
&#187;
{if $allowRegReviewer}
{url|assign:"userHomeUrl" page="user" op="index"}
<a href="{url op="become" path="reviewer" source=$userHomeUrl}">{translate key="user.noRoles.regReviewer"}</a>
{else}{* $allowRegReviewer *}
{translate key="user.noRoles.regReviewerClosed"}
{/if}{* $allowRegReviewer *}
</li>
<li>
&#187;
{if $schedConfPaymentsEnabled}
<a href="{url page="schedConf" op="registration"}">{translate key="user.noRoles.register"}</a>
{else}{* $schedConfPaymentsEnabled *}
{translate key="user.noRoles.registerUnavailable"}
{/if}{* $schedConfPaymentsEnabled *}
</li>
</ul>
{/if}{* !$currentSchedConf *}
{/if}

<div id="myAccount">
<h3>{translate key="user.myAccount"}</h3>
<ul class="plain">
{if $hasOtherConferences}
{if !$showAllConferences}
<li>&#187; <a href="{url conference="index" page="user"}">{translate key="user.showAllConferences"}</a></li>
{/if}
{/if}
<li>&#187; <a href="{url page="user" op="profile"}">{translate key="user.editMyProfile"}</a></li>
<li>&#187; <a href="{url page="user" op="changePassword"}">{translate key="user.changeMyPassword"}</a></li>
<li>&#187; <a href="{url page="login" op="signOut"}">{translate key="user.logOut"}</a></li>
{call_hook name="Templates::User::Index::MyAccount"}
</ul>
</div>

{include file="common/footer.tpl"}
