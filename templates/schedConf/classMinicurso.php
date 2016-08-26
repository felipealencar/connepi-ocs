<?php
	include 'classBd.php';  
   
    class classMinicurso{
        
        private $id_minicurso;
        private $id_user;
		private $presenter;
        private $vagas;
    
        public function __construct(){
        }
        
        //SET
        public function set_minicurso($id_minicurso){
            $this->id_minicurso = pg_escape_string($id_minicurso);
        }
        
        public function set_user($id_user){
            $this->id_user = pg_escape_string($id_user);
        }
        
        //GET
        public function get_minicurso(){
            return $this->id_minicurso;
        }
        
        public function get_user(){
            return $this->id_user;
        }
		
		//Retorna o número de inscrições em Minicurso do Usuário
		public function get_inscricao($id_user){
			$consulta = new classBd();
			$consulta->conectaBd();
			$sql = "select count(*) from public.inscriptions where user_id = $id_user";			
			$rs = $consulta->executa($sql);
			$rs1 = pg_fetch_array($rs);
			$count = $rs1["count"];

			return $count;			
		}
        
        
        //Cadastrar novo usuário
        public function inscreverMinicurso($usuario){
            $id_minicurso = $usuario->get_minicurso();
            $id_user = $usuario->get_user();
			
			$consulta = new classBd();
			$consulta->conectaBd();

			$inscrito = $usuario->get_inscricao($id_user);
			
			if($inscrito == 0){
				//Pega o numero de vagas disponiveis e decrementa em 1
				if($this->vagas($id_minicurso)){
					//Insere um novo registro na tabela de inscricao
					$sql = "INSERT INTO inscriptions (user_id, course_id, date_registred, auto) VALUES ($id_user, $id_minicurso, DEFAULT, 0)";
					$rs = $consulta->executa($sql);
					$count = pg_affected_rows($rs);
				}
			}
			
			else {
				if($this->vagas($id_minicurso)){
				//Insere um novo registro na tabela de inscricao
					$sql = "UPDATE inscriptions SET course_id = $id_minicurso WHERE user_id = $id_user";
					$rs = $consulta->executa($sql);
					$count = pg_affected_rows($rs);
				}
			}				
        
            
            //Verifica
            if($count > 0){
				return true;
			}
			
			else {
				return false;
            }
        }
        
        public function vagas($id_minicurso){
            define("VAGAS", 1000);
			$consulta = new classBd();
			$consulta->conectaBd();
			if($id_minicurso == 0){
				$sql = "SELECT distinct i.user_id FROM inscriptions as i INNER JOIN users as u ON u.user_id = i.user_id INNER JOIN paper_authors as pa ON pa.email = u.email INNER JOIN papers as p ON pa.paper_id = p.paper_id WHERE p.status = 3 AND pa.primary_contact = 1";
				$rs = $consulta->executa($sql);
				$apresentadores = pg_num_rows($rs);
				$sql = "SELECT * FROM inscriptions";
				$rs = $consulta->executa($sql);
				$geral = pg_num_rows($rs);
				
				if(($geral - $apresentadores) < VAGAS){
					return true;
				}
				return false;
			}
			
			
			$sql = "select capacity from public.courses where course_id = $id_minicurso";
            $rs = $consulta->executa($sql);
            $rs1 = pg_fetch_array($rs);
            $capacity = $rs1["capacity"];
			$sql = "select count(*) as inscriptions from inscriptions where course_id = $id_minicurso";
			$rs = $consulta->executa($sql);
			$rs1 = pg_fetch_array($rs);
			$inscriptions = $rs1["inscriptions"];
			$vagas_disponiveis = $capacity - $inscriptions;
			if($vagas_disponiveis > 0)
				return true;
			return false;
        }
       /*
        public function verificaQtdAutorInsc(){
        	$consulta = new classBd();
			$consulta->conectaBd();
			
            $sql = "SELECT COUNT(*) as inscritos
				FROM paper_authors AS pa
				INNER JOIN papers as p on p.paper_id = pa.paper_id
				INNER JOIN paper_settings as ps on ps.paper_id = p.paper_id
				INNER JOIN edit_decisions as ed on ed.paper_id = p.paper_id
				INNER JOIN user as u on p.user_id = u.user_id
				INNER JOIN inscriptions as i on i.user_id = u.user_id
				WHERE i.course_id >= 0
				AND pa.primary_contact = 1;
				AND (ed.decision = 2 OR ed.decision = 3)
				AND p.status = 3";
            $rs = $consulta->executa($sql);
            $rs1 = pg_fetch_array($rs);
            return $rs1["inscritos"];
        }
        
        public function verficaVagasInsc(){
        	define("VAGAS",0);
        	$qtdAutorInsc = $this->verificaQtdAutorInsc();
        	$consulta = new classBd();
			$consulta->conectaBd();
			
            $sql = "SELECT COUNT(*) as inscritos
				FROM inscriptions";
            $rs = $consulta->executa($sql);
            $rs1 = pg_fetch_array($rs);
        	$qtd = $rs1["inscritos"]-$qtdAutorInsc;
        	if($qtd < 0)
        		$qtd = $qtd*-1;
        	return VAGAS-$qtd;
        }
        
        public function verificaTipoInsc($userid){
        	$consulta = new classBd();
			$consulta->conectaBd();
			$sql = "SELECT * FROM users WHERE user_id = $userid";
			$rs = $consulta->executa($sql);
            $rs1 = pg_fetch_array($rs);
            $email = $rs["email"];
            
        	$sql = "SELECT pa.email, pa.primary_contact as apresentador, ps.setting_value as titulo,
				pa.author_id, p.user_id
				FROM paper_authors AS pa
				INNER JOIN papers as p on p.paper_id = pa.paper_id
				INNER JOIN paper_settings as ps on ps.paper_id = p.paper_id
				INNER JOIN edit_decisions as ed on ed.paper_id = p.paper_id
				WHERE pa.email = '$email'
				AND pa.primary_contact = 1
				AND ps.setting_name = 'title'
				AND (ed.decision = 2 OR ed.decision = 3)";
        	$rs = $consulta->executa($sql);
            if(pg_num_rows($rs) > 0)
            	return 1; //Apresentador
            else
            	return 0; //Geral
        }*/
    }
?>