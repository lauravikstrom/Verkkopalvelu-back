<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

// Haetaan tuote-taulusta tuotteet category_id:n perusteella
$uri = parse_url(filter_input(INPUT_SERVER, 'PATH_INFO'),PHP_URL_PATH);

$parameters = explode('/',$uri);

$order_id = $parameters[1];

try {
    $db = openDB();
    selectAsJson($db, "SELECT customer.id, customer.firstname, customer.lastname, product.id, product.name, product.image, product.price
    FROM customer, product, order_row, `order`
    WHERE product.id = order_row.product_id and customer.id = `order`.`customer_id` and `order`.id = order_row.order_id and order_row.order_id = $order_id
    ORDER BY product.name ASC ;");
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}