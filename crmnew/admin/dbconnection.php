<?php

$mysql_hostname ="localhost";
$mysql_user ="capitalking";
$mysql_password ="dD@9098509760";
$mysql_database ="capitalking";
$prefix = "";
$bd = mysql_connect($mysql_hostname, $mysql_user, $mysql_password) or die("Could not connect database");
mysql_select_db($mysql_database, $bd) or die("Could not select database");

?>

