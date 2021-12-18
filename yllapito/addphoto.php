<?php

require_once '../inc/functions.php';
require_once '../inc/headers.php';

//Ylläpito voi lisätä kuvan
$target_dir = "../IMG/";
$target_file = $target_dir . basename($_FILES["File"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

// Tarkistaa, onko kuva oikea kuvatiedosto vai väärennös
if(isset($_POST["submit"])) {
  $check = getimagesize($_FILES["File"]["tmp_name"]);
  if($check !== false) {
    echo "File is an image - " . $check["mime"] . ".";
    $uploadOk = 1;
  } else {
    echo "File is not an image.";
    $uploadOk = 0;
  }
}

// Tarkistaa, onko tiedosto jo olemassa
if (file_exists($target_file)) {
  echo "Sorry, file already exists.";
  $uploadOk = 0;
}

// Tarkistaa, onko $uploadOk asetettu olemaan 0 virheen vuoksi
if ($uploadOk == 0) {
  echo "Sorry, your file was not uploaded.";
// Jos kaikki ok, ladataan tiedosto
} else {
  if (move_uploaded_file($_FILES["File"]["tmp_name"], $target_file)) {
    echo "The file ". htmlspecialchars( basename( $_FILES["File"]["name"])). " has been uploaded.";
  } else {
    echo "Sorry, there was an error uploading your file.";
  }
}
?>