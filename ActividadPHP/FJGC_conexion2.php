<?php
try {
  $pdo = new PDO("mysql:dbname=sextomatutina;host=localhost:3307","root","");
} catch (Exception $e) {
  die('Error:'.$e -> getMessage());
}

 ?>
