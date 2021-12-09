<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

// Palauttaa tuoteryhmät fronttiin

try {
    $db = openDB();
    selectAsJson($db, 'SELECT product.id, product.image, product.price, name, COUNT(name) as "KPL"
    FROM product, order_row
    WHERE product.id = order_row.product_id
    GROUP BY product.id, name
    ORDER BY "KPL"
    LIMIT 3;');
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}
