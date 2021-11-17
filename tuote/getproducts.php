<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

$uri = parse_url(filter_input(INPUT_SERVER, 'PATH_INFO'),PHP_URL_PATH);

$parameters = explode('/',$uri);

$category_id = $parameters[1];

try {
    $db = openDB();
    selectAsJson($db,"select * from tuote where trnro = $category_id");
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}