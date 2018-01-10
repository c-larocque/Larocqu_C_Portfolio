<?php
ini_set('display_errors',1);
error_reporting(E_ALL);

  require_once("../admin/scripts/connect.php");
  require_once("../admin/scripts/config.php");

  if (isset($_GET['all_work'])){
  $myQuery = "SELECT * FROM tbl_projects";
  $result = mysqli_query($link, $myQuery);
  $rows = array();

  while($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
  }

  echo json_encode($rows);
}

  // get a single row (one result) using a query parameter
  if (isset($_GET['projects_name'])) { //check to see if there's a parameter called projects_name
   $projectName = $_GET['projects_name'];

   $myQuery = "SELECT * FROM tbl_projects WHERE projects_name = '$projectName'";
   $result = mysqli_query($link, $myQuery);

   $row = mysqli_fetch_assoc($result);

   echo json_encode($row);
 }

 ?>
