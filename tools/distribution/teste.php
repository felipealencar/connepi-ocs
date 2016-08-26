<?php

$array = array('a' => '', 'b' => 'teste', 'c' => '', 'd' => 'teste');

$array = array_diff($array, array(''));

print_r($array);

?>