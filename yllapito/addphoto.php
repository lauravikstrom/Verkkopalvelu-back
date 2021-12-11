<?php

require_once '../inc/functions.php';
require_once '../inc/headers.php';

move_uploaded_file($_FILES["image"]["tmp_name"], "../IMG" . $_FILES["image"]["name"]);
?>