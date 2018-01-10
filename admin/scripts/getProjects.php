<?php
//Error reporting on a Mac
ini_set('display_errors',1);
error_reporting(E_ALL);

//connect to database
include('connect.php');

if(isset($_GET['id'])){
$id = $_GET['id'];
$queryProject = "SELECT * FROM tbl_projects WHERE projects_id={$id}";
$getProjects = mysqli_query($link, $queryProject);
}else{
$projectQuery = "SELECT * FROM tbl_projects";
$getProjects = mysqli_query($link, $projectQuery);
}

$grpResult="";

echo "[";

while($proResult = mysqli_fetch_assoc($getProjects)){
$jsonResult = json_encode($proResult);
$grpResult .= $jsonResult.",";
}

echo substr($grpResult, 0, -1);

echo "]";

mysqli_close($link);
?>
