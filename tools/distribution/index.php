<?php
require_once 'config.php';
$DistributionsController = new DistributionsController();
$PapersController = new PapersController();
$TracksController = new TracksController();
echo "########################################################################<br>";
echo "########################################################################<br>";
echo "########################################################################<br>";
echo "########################################################################<br>";

$DistributionsController->distribute();

$tracklist = $TracksController->getTracks();
$AcceptedPapers = $PapersController->getAcceptedPapers();
echo "########################################################################<br>";
echo "########################################################################<br>";
echo "########################################################################<br>";
echo "########################################################################<br>";

echo '<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">';
 
foreach ($tracklist as $key => $AP){
	echo $AP["trackid"]." ";
	echo iconv("UTF-8", "UTF-8", $AP["area"]." ");
	//echo $AP["area"]." ";
	echo "<br>";
}

echo "########################################################################<br>";
echo "########################################################################<br>";
echo "########################################################################<br>";
echo "########################################################################<br>";
$UniqueAcceptedPapers = $PapersController->uniquePapers($AcceptedPapers);
$i=0;
foreach ($UniqueAcceptedPapers as $key => $AP){
	echo $AP["id"]." ";
	echo iconv("UTF-8", "UTF-8", $AP["titulo"]." ");
	echo $AP["area"]." ";
	echo "<br>";
	$i++;
}
echo $i;

?>


