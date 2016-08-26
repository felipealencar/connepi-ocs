<?php
class DistributionsController extends Controller {

	var $Distribution;
	var $DistributionDAO;
	var $Room; //14 salas //Cada sala possui 3 períodos (turnos: manhã, tarde e noite).
	var $Period; //1: Manhã | 2: Tarde | 3: Noite. 12 artigos por turno.
	var $Session; //Cada período possui 2 sessões, e cada sessão possui 6 artigos no máximo.

	var $AcceptedPapers;
	var $QueueAcceptedPapers;

	function __construct(){
		parent::__construct();
		$this->Distribution = new Distribution();
		$this->DistributionDAO = new DistributionDAO();
	}

	function getDistribution(){
		return $this->DistributionDAO->getDistribution();
	}

	function getDistributionByPaper($paper_id){
		return $this->DistributionDAO->getDistributionByPaper($paper_id);
	}

	function getDistributionByAuthor($author_id){
		return $this->DistributionDAO->getDistributionByAuthor($author_id);
	}

	function getUniqueAcceptedPapers($acceptedpapers){

	}

	function insertDistribution($room_id, $session_id, $paper_id){
		return $this->DistributionDAO->insertDistribution($room_id, $session_id, $paper_id);
	}

	function distribute(){
		$cont1 = 0;
		$cont2 = 0;
		$cont3 = 0;
		$qtdAceitosArea = 0;

		$RoomsController = new RoomsController();
		$TracksController = new TracksController();
		$PapersController = new PapersController();
		$SessionsController = new SessionsController();


		$listRooms = $RoomsController->getRooms();
		$listTracks = $TracksController->getTracks();

		$listAceitos = $PapersController->uniquePapers($PapersController->getAcceptedPapers());
		$listFila = $listAceitos;
		$listSessions = $SessionsController->getSessions();
		$qtdSessions = 12;

		foreach ($listTracks as $key0 => $value0){
			$qtdAceitosArea = $PapersController->countAcceptedPapersByTrack($listAceitos, $value0["trackid"]);
			echo $qtdAceitosArea." ".$value0['area']."<br>";
			//echo $qtdAceitosArea;
			foreach ($listRooms as $key1 => $value1){
				foreach ($listSessions as $key2 => $value2){
					while($cont2 < 6){
						foreach($listAceitos as $key3 => $value3){
							if($this->insertDistribution($value1["room_id"], $value2["session_id"], $value3["paper_id"])){
								$cont2++;
								$listAceitos = parent::removeElement($listAceitos, $value3["paper_id"]);
								if($cont2 == 5){
									break;
								}
								else
									continue;
							}
							else
								echo "Não foi possível inserir ".$value3["titulo"].", uma apresentação com o mesmo título pode já ter sido inserida.";
						}

					}
					if($cont2 == 5){
						$cont2 = 0;
						$cont1++;
						if($cont1 == 2){
							$cont3++;	
							break;
						}
					}	
				}
				if($cont3 == 3){
					$cont1 = 0;
					break;
				}
			}
			$listRooms = parent::removeElement($listRooms, $value1["room_id"]);
		}
	}


}
?>
