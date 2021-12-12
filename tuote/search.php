<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

$input = json_decode(file_get_contents('php://input'));

/* $uri = parse_url(filter_input(INPUT_SERVER, 'PATH_INFO'),PHP_URL_PATH);

$keywords = explode(' ', $uri); */
$searchTermKeywords = array();
foreach ($input as $word) 
{

$searchTermKeywords[] = "name LIKE '%$word%'";

}

// Palauttaa haetut tuotteet fronttiin

try {
    $db = openDB();
    selectAsJson($db, "SELECT  * FROM product
    WHERE ".implode(' AND ', $searchTermKeywords)."
    ORDER BY name ASC");
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}
