<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

// Haetaan tuote-taulusta tuotteet category_id:n perusteella
$uri = parse_url(filter_input(INPUT_SERVER, 'PATH_INFO'),PHP_URL_PATH);

$parameters = explode('/',$uri);

$category_id = $parameters[1];

try {
    $db = openDB();
    selectAsJson($db,"select * from product where category_id  = $category_id");
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}