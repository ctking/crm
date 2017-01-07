<?php
session_start();
include("dbconnection.php");
if(isset($_POST['update']))
{
	$name=$_POST['name'];
$cd=date('y-m-d');
$rst='New';
	$abc=$_FILES["resume"]["name"];	
move_uploaded_file($_FILES["resume"]["tmp_name"],"resumes/".$_FILES["resume"]["name"]);
	mysql_query("update user set resume='$abc', r_posting_date='$cd',resume_status='$rst' where id='".$_GET['id']."'");
	$_SESSION['msg']="Data updated Successfully";
}


//echo $_GET['id'];
?>
<script language="javascript" type="text/javascript">
function f2()
{
window.close();
}
function f3()
{
window.print(); 
}
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>User Information</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="ravi.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body,td,th {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #333333;
}
h1,h2,h3,h4,h5,h6 {
	font-weight: bold;
}
h1 {
	font-size: 20px;
	color: #620200;
}
h2 {
	font-size: 15px;
	color: #000000;
}
body {
	margin-top: 0px;
}
td.rows{
	border-bottom:#CCCCCC 1px dashed;
	padding-top:2px;
	padding-bottom:2px;
	font-weight: bold;
}
-->
</style></head>

<body>
<table width="100%" border="0">
<?php 
		 $ret= mysql_query("SELECT * FROM user where id='".$_GET['id']."'");
			while($row=mysql_fetch_array($ret))
			{
			
			?>
			
			
			
			<tr>
			  <td width="200%" colspan="2"  class="font"><h1><?php echo $row['name'];?> 's<span class="font1"> Profile &raquo;</span> </h1></td>
  </tr>
		
			<form name="edit-profile" id="edit-profile" action="" method="post" enctype="multipart/form-data">
		
                    <tr>
                      <td style="color:#F00;" colspan="2"  align="center"><?=$_SESSION['msg'];?><?=$_SESSION['msg']="";?></td>
                     
                      <td>&nbsp;</td>
                  </tr>
					
                    <tr>
                      <td height="47" width="200" class="rows">Upload Your Resume:</td>
                      <td class="rows"><span class="comb-value"><input type="file" name="resume" required value="" />
					  
				
                    </tr>
					
                      <tr>
                      <td class="rows"></td>
                      <td class="rows"><span class="comb-value"><input type="submit" name="update" value="Update" style="cursor:pointer"  /></span></td>
                
                    </tr>
             
        
       </form>     
            

	  <? } ?>
        </form>  
 
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
</table>
</body>
</html>
