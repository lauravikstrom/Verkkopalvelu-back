<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

//Tuotteen haku
$input = json_decode(file_get_contents('php://input'));

$uri = parse_url(filter_input(INPUT_SERVER, 'PATH_INFO'),PHP_URL_PATH);

$parameters = explode('/', $uri);
$phrase = $parameters[1];

<<<<<<< HEAD


=======
>>>>>>> 8c7f9c714c8ad884b7fa743b8bf84f80048a0354
// Palauttaa haetut tuotteet fronttiin
try {
    $db = openDB();
    $sql = "select * from product where name like '%$phrase%'";
    selectAsJson($db, $sql);
<<<<<<< HEAD
=======
    
>>>>>>> 8c7f9c714c8ad884b7fa743b8bf84f80048a0354
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}
