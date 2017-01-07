<?php 
include("dbconnection.php");
$msgId = $_POST['id'];
 saveDataToDB($msgId);
 	function saveDataToDB($msgId){
		$insert="update  messaging set archived ='1' where id='$msgId'";
		$ret=mysql_query($insert);
		echo"Message Deleted Successfully";
	}
?>
