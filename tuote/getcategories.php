<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

// Palauttaa tuoteryhmät fronttiin
try {
    $db = openDB();
    selectAsJson($db,'select * from tuoteryhma');
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}
