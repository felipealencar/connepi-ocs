<?php

	include 'classBd.php';
    
   
    class classApresentador{
        
        private $id_author;
        private $email;
        private $id_user;
        private $id_paper;
		private $id;
    
        public function __construct(){
        }
        
        //SET
        public function set_author($id_author){
            $this->id_author = pg_escape_string($id_author);
        }
        
		public function set_id($id){
			$this->id = pg_escape_string($id);
		}
		
		public function get_id(){
			return $this->id;
		}
		
        public function set_user($id_user){
            $this->id_user = pg_escape_string($id_user);
        }
        
    	public function set_email($email){
            $this->email = pg_escape_string($email);
        }
        
       	public function set_paper($id_paper){
       		$this->id_paper = pg_escape_string($id_paper);
       	}
        
        //GET
        public function get_author(){
            return $this->id_author;
        }
        
        public function get_user(){
            return $this->id_user;
        }
		
        public function get_paper(){
        	return $this->id_paper;
        }
        
		//Retorna o número de inscrições em Minicurso do Usuário
		public function set_apresentacao($id_paper, $id_user, $id_author, $id){
			$consulta = new classBd();
			$consulta->conectaBd();
			if(isset($id)){
				$sql = "SELECT * FROM papers WHERE paper_id = $id_paper AND user_id = $id";
				$rs = $consulta->executa($sql);
				$count = pg_num_rows($rs);
			
				if($count > 0){
					$count = 0;
					$sql = "SELECT pa.email FROM paper_authors AS pa INNER JOIN papers as p ON p.paper_id = pa.paper_id WHERE p.paper_id = $id_paper AND pa.primary_contact = 1";
					$rs = $consulta->executa($sql);
					$array = pg_fetch_array($rs);
					$email = $array["email"];
					$sql = "UPDATE paper_authors SET primary_contact = 0 WHERE paper_id = $id_paper";			
					$rs = $consulta->executa($sql);
					$count = pg_affected_rows($rs);
					$sql1 = "UPDATE paper_authors SET primary_contact = 1 WHERE paper_id = $id_paper AND author_id = $id_author";
					$rs1 = $consulta->executa($sql1);
				
					$sql = "SELECT * FROM papers as p INNER JOIN paper_authors as pa ON p.paper_id = pa.paper_id WHERE pa.email = '$email' AND p.status = 3 AND pa.primary_contact = 1";
					$rs = $consulta->executa($sql);
					if(pg_num_rows($rs) == 0){
						$sql = "SELECT u.user_id FROM users as u INNER JOIN inscriptions as i on i.user_id = u.user_id WHERE u.email = '$email'";
						$rs = $consulta->executa($sql);
						$array = pg_fetch_array($rs);
						if(pg_num_rows($rs) > 0){
							$id = $array["user_id"];
							$sql = "DELETE FROM inscriptions WHERE user_id = $id AND auto = 1";
							$rs = $consulta->executa($sql);
						}
					}

				}
			}

				if(($this->isInscribed($id_user)) == false){
					$sql = "INSERT INTO inscriptions (user_id, course_id, date_registred, auto) VALUES ($id_user, 0, DEFAULT, 1)";
					$rs = $consulta->executa($sql);
				}
				echo "<script>alert('Apresentador definido e inscrito com sucesso!')</script>";
               	echo "<script>location.href='http://connepi.ifal.edu.br/ocs/index.php/index/CONNEPI2010/user'</script>";
               	return true;						
		
			
		}

        
        function isInscribed($userid){
			$consulta = new classBd();
			$consulta->conectaBd();
			$sql = "SELECT * FROM inscriptions WHERE user_id = $userid";
			$rs = $consulta->executa($sql);
			if(pg_num_rows($rs) > 0){
				return true;
			}
			else
				return false;
			
		}
        
    }
?>