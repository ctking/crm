<?php 
//session_start();
//echo $_SESSION['login'];
include("dbconnection.php");
if(isset($_POST['submit']))
{
	include("dbconnection.php");

		$message=$_POST['message'];
		$sender=$_POST['sender'];
		$email=$_SESSION['login'];
		$abc=$_FILES["docfile"]["name"];	
move_uploaded_file($_FILES["docfile"]["tmp_name"],"upload/".$_FILES["docfile"]["name"]);
		mysql_query("INSERT INTO message(message, sender, user_email,attached_file)VALUES('$message', '$sender', '".$_SESSION['login']."','$abc')");
}

?>

<script language="javascript" src="jquery-1.2.6.min.js"></script>
<script language="javascript" src="jquery.timers-1.0.0.js"></script>
<script type="text/javascript">

$(document).ready(function(){
   var j = jQuery.noConflict();
	j(document).ready(function()
	{
		j(".refresh").everyTime(1000,function(i){
			j.ajax({
			  url: "refresh.php",
			  cache: false,
			  success: function(html){
				j(".refresh").html(html);
			  }
			})
		})
		
	});
	j(document).ready(function() {
			j('#post_button').click(function() {
				$text = $('#post_text').val();
				j.ajax({
					type: "POST",
					cache: false,
					url: "save.php",
					data: "text="+$text,
					success: function(data) {
						alert('data has been stored to database');
					}
				});
			});
		});
   j('.refresh').css({color:"green"});
});
</script>
<script>
 $(function() {
  var wtf    = $('#scroll');
  var height = wtf[0].scrollHeight;
  wtf.scrollTop(height);
});</script>
<style type="text/css">
.refresh {
    border: 1px solid #3366FF;
	border-left: 4px solid #3366FF;
    color: green;
    font-family: tahoma;
    font-size: 12px;
    height: 325px;
    overflow: auto;
    width: 400px;
	padding:10px;
	background-color:#FFFFFF;
}
#post_button{
	border: 1px solid #3366FF;
	background-color:#3366FF;
	width: 100px;
	color:#FFFFFF;
	font-weight: bold;
	margin-left: -105px; padding-top: 4px; padding-bottom: 4px;
	cursor:pointer;
}
#textb{
	border: 1px solid #3366FF;
	border-left: 4px solid #3366FF;
	width: 320px;
	margin-top: 10px; padding-top: 5px; padding-bottom: 5px; padding-left: 5px; width: 415px;
}
#texta{
	border: 1px solid #3366FF;
	border-left: 4px solid #3366FF;
	width: 610px;
	margin-bottom: 10px;
	padding:5px;
}
p{
border-top: 1px solid #EEEEEE;
margin-top: 0px; margin-bottom: 5px; padding-top: 5px;
}
span{
	font-weight: bold;
	color: #3B5998;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<?php $query=mysql_query("select * from user where email='".$_SESSION['login']."'");
while($num=mysql_fetch_array($query))
{
$name=$num['name'];
//echo $name;
}
 ?>
<form method="POST" name="" action="" enctype="multipart/form-data">
<input name="sender" type="hidden"  id="texta" value="<?php echo $name; ?>"/>
<div id="scroll" class="refresh" style="width:250px;">
<?php
$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("communication", $con);

$result = mysql_query("SELECT * FROM message where user_email='".$_SESSION['login']."' ORDER BY id asc");


while($row = mysql_fetch_array($result))
  {
	  ?>
	  <p><span><?=$row['sender'];?></span> <?=$row['message'];?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="upload/<?=$row['attached_file'];?>" style="color:#F00;"><?=$row['attached_file'];?></a>
</p>

<?php }
mysql_close($con);
?>

</div><br  />
<div style="width:220px;">
<input type="file" name="docfile" id="textb" style="width:220px;"   />
<input name="message" type="text" id="textb" required="required" style="width:220px;"/><br>
<input name="submit" type="submit" value="Send query" id="post_button" style="color:#F00" />
</form>
</div>