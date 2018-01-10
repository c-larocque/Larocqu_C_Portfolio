<?php
// This file will connect us to the database
$user = "root";
//$pass = ""; //for PC
$pass = "root"; //for MAC only
$url = "localhost";
$db = "db_portfolio";

// Creates us access token to our data
$link = mysqli_connect($url, $user, $pass, $db, "8888"); // this is for MAC with the port address
// $link = mysqli_connect($url, $user, $pass, $db); //this is for a PC, they don't need a port address

// Check connection with error message
if(mysqli_connect_errno()){
  printf("Connection failed: %s\n", mysqli_connect_error());
  exit();
}

?>
