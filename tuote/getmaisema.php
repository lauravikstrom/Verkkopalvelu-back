<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

// Palauttaa suositut tuotteet fronttiin

try {
    $db = openDB();
    selectAsJson($db, 'SELECT product.id, product.image, product.price, product.name
    FROM product, category
    WHERE product.name LIKE "%maisema%"
    GROUP BY product.name');
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}
