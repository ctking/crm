<?php

if (isset($_POST['text'])) {

$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("communication", $con);

$ddd=$_POST['text'];
$udfile=$_FILES["docfile"]["name"];
$pdate=date('Y-m-d');	
move_uploaded_file($_FILES["docfile"]["tmp_name"],"upload/".$_FILES["docfile"]["name"]);

	$query = "INSERT INTO message (message,attached_file) VALUES ('$ddd','$abc')";
	
}

?>