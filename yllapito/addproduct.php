<?php

require_once '../inc/functions.php';
require_once '../inc/headers.php';

// Luetaan tiedot JSON-muodossa
$input = json_decode(file_get_contents('php://input'));
$pname = filter_var($input->name,FILTER_SANITIZE_STRING);
$pprice = filter_var($input->price,FILTER_SANITIZE_STRING);
$pimage = filter_var($input->image,FILTER_SANITIZE_STRING); 
$pcategory_id = filter_var($input->category_id,FILTER_SANITIZE_STRING);

$db = null;
try {
    $db = openDb(); // Avataan tietokantayhteys

    $db->beginTransaction();

    // Lisätään asiakas
    $sql = "insert into product (name,price,image,category_id) values
    ('" .
    filter_var($pname,FILTER_SANITIZE_STRING) . "','" .
    filter_var($pprice,FILTER_SANITIZE_STRING) . "','" .
    filter_var($pimage,FILTER_SANITIZE_STRING) . "','" .
    filter_var($pcategory_id,FILTER_SANITIZE_STRING)
.    "')";

$product_id = executeInsert($db,$sql);
$db->commit();
header('HTTP/1.1 200 OK');
$data = array('id' => $product_id);
echo json_encode($data);
}
catch ( PDOException $pdoex) {
    $db->rollback();
    returnError($pdoex);
}
