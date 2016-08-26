<?php
class DistributionsController extends Controller {

	var $Distribution;
	var $DistributionDAO;
	var $Room; //14 salas //Cada sala possui 3 per�odos (turnos: manh�, tarde e noite).
	var $Period; //1: Manh� | 2: Tarde | 3: Noite. 12 artigos por turno.
	var $Session; //Cada per�odo possui 2 sess�es, e cada sess�o possui 6 artigos no m�ximo.

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
								echo "N�o foi poss�vel inserir ".$value3["titulo"].", uma apresenta��o com o mesmo t�tulo pode j� ter sido inserida.";
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
