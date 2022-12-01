<?php
require_once 'db.php';

session_start();

if (!empty($_POST)) {
  $name = $_POST['name'];
  $sectors = implode(',' , $_POST['sectors']);
  $terms = $_POST['terms'];
  if (!empty($name) && !empty($sectors) && !empty($terms)) {
    if (isset($_SESSION['id'])) {
      $id = $_SESSION['id'];
      $db->query("UPDATE results SET name = '$name', sectors = '$sectors', terms = $terms WHERE id = $id ");
    } else {
      $db->query("INSERT INTO results (name, sectors, terms) VALUES('$name', '$sectors',$terms)");
      $_SESSION['id'] = $db->insert_id;
    }
    echo "Thank you ". $name .", your information is saved!";
  }
}

if (isset($_SESSION['id'])) {
  $id = $_SESSION['id'];
  $result = $db->query("SELECT name, sectors, terms FROM results WHERE id = $id");
  $userData = mysqli_fetch_assoc($result);
  $userData['sectors'] = explode(',', $userData['sectors']);
}
$sectors = $db->query("SELECT * FROM sectors");

include 'form.php';
