<?php 
include("dbconnection.php");
$receipientno=$_POST['number'];
$msgtxt=$_POST['msg'];
$ch = curl_init();
$user="dilip21lnct@gmail.com:capitalking";
$senderID="TEST SMS"; 
curl_setopt($ch,CURLOPT_URL,  "http://api.mVaayoo.com/mvaayooapi/MessageCompose");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, "user=$user&senderID=$senderID&receipientno=$receipientno&msgtxt=$msgtxt");
$buffer="empty";
$buffer = sendMessage($ch);
 saveDataToDB($receipientno,$msgtxt,$buffer);


function sendMessage($ch){
	$buffer = curl_exec($ch);	
	if(empty ($buffer)){ 
		echo "Message Sending Failed"; 
	}else{
		echo "Message Sent Successfully Below is reference number"; 
		echo $buffer; 
	} 
 curl_close($ch);	
 return $buffer;
	}
	
	function saveDataToDB($receipientno,$msgtxt,$buffer){
		$insert="insert into messaging (id, message_text, sent_to, status, reference_number, creation_time,archived ) VALUES (NULL, '$msgtxt', '$receipientno', 'Delivered', '$buffer', now(), '0')";
		$ret=mysql_query($insert);
	}
	
?>
