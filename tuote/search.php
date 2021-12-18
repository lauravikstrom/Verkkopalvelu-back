<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

//Tuotteen haku
$input = json_decode(file_get_contents('php://input'));

$uri = parse_url(filter_input(INPUT_SERVER, 'PATH_INFO'),PHP_URL_PATH);

$parameters = explode('/', $uri);
$phrase = $parameters[1];

/* $keywords = explode(' ', $uri); 
$searchTermKeywords = array();
foreach ($input as $word) 
{

$searchTermKeywords[] = "name LIKE '%$word%'";

} */

// Palauttaa haetut tuotteet fronttiin

try {
    $db = openDB();
    
    $sql = "select * from product where name like '%$phrase%'";
    selectAsJson($db, $sql);
    
/*     selectAsJson($db, "SELECT  * FROM product
    WHERE ".implode(' AND ', $searchTermKeywords)."
    ORDER BY name ASC"); */
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}
