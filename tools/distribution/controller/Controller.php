<?php
class Controller {

	function __construct(){

	}

	function arrayUnique($myArray)
	{
		if(!is_array($myArray))
		return $myArray;

		foreach ($myArray as &$myvalue){
			$myvalue=serialize($myvalue);
		}

		$myArray=array_unique($myArray);

		foreach ($myArray as &$myvalue){
			$myvalue=unserialize($myvalue);
		}

		return $myArray;
	}
	
	function removeElement($array, $arpos){
	    $aux_array = $array;

	    foreach ($array as $Indice => $Valor) {
        	if(array_search($Indice,$arpos)) {
	            $array[$Indice] = 0;
            }
    	}
    	return $array;
	}
}
?>