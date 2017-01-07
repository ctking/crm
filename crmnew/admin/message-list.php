<?php 
session_start();
include("dbconnection.php");
include("checklogin.php");
check_login();
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<title>Admin | Messaging </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta content="" name="description" />
<meta content="" name="author" />
<link href="assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/boostrapv3/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/responsive.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/custom-icon-set.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/toast.css" rel="stylesheet" type="text/css"/>
</head>
<!-- Modal -->
                  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                     <div class="modal-dialog" role="document">
                        <div class="modal-content">
                           <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                              <h4 class="modal-title" id="myModalLabel">Send Message</h4>
                           </div>
                           <div class="modal-body">
							   <div class="call_back">
                               <div class="callback_input">
                                 <h4>Send Message to user?</h4>
                                <form data-toggle="validator" action="requestCallback()">
                                 <input type="number"  class="form-control"  required placeholder="Phone NO" id="phoneNumber" name="phoneNumber"/>
                                 </br>
                                 </br>
                                 <textarea placeholder="Message Text" class="form-control" rows="5"  id="textarea1" name="textarea1"></textarea>
                                </div>
                           </div>
                           </div>
                           <div class="modal-footer">
                              <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                              <button type="button" class="btn btn-primary"   data-loading-text="<i class='icofont icofont-refresh fa-spin'></i> Submitting Data" id="submitDatabutton" onclick="requestSendMessage()">Submit</button>
                           </div>
                           <form>
                        </div>
                     </div>
                  </div>
                  <!-- End Model-->

<body class="">
<?php include("header.php");?>
<div class="page-container row"> 
  
      <?php include("leftbar.php");?>
    
      <div class="clearfix"></div>
      <!-- END SIDEBAR MENU -->
    </div>
  </div>
    <div class="page-content">
        <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <div id="portlet-config" class="modal hide">
                <div class="modal-header">
                    <button data-dismiss="modal" class="close" type="button"></button>
                     <h3>Widget Settings</h3>

                </div>
                <div class="modal-body">Widget settings form goes here</div>
            </div>
            <div class="clearfix"></div>
            <div class="content">
                <ul class="breadcrumb">
                    <li>
                        <p>YOU ARE HERE</p>
                    </li> 
                    <li><a href="#" class="active">Messaging</a>

                    </li>
                </ul>
                <div class="page-title">	<i class="icon-custom-left"></i>

                    	<h3>Messaging </h3>	
                </div>
             
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
							<div class="col-md-12">
								<a href="#grid-config"   style ="margin: 0% 0% 1% 0%;" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal" >New Message</a>	</br>
								<div class="grid simple ">
									 <div class="grid-title no-border">
                                        	<h4>All Messaging Details</h4>
                                            <div class="tools">	<a href="javascript:;" class="collapse"></a>
										 </div>
                                    </div>
                                    <div class="grid-body no-border">
                              
                                            <table class="table table-hover no-more-tables">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Sent To</th>
                                                        <th>Status</th>
                                                        <th>Reference Number</th>
                                                        <th>Date</th>
                                                        <th>Message Text</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <?php $ret=mysql_query("select * from messaging where archived='0' order by creation_time desc");
												$cnt=1;
												while($row=mysql_fetch_array($ret))
												{
													$_SESSION['ids']=$row['id'];
												?>
                                                    <tr>
                                                        <td><?php echo $cnt;?></td>
                                                        <td><?php echo $row['sent_to'];?></td>
                                                        <td><?php echo $row['status'];?></td>
                                                         <td><?php echo $row['reference_number'];?></td>
                                                          <td><?php echo $row['creation_time'];?></td>
                                                          <td><?php echo $row['message_text'];?></td>
                                                          <td>
                                                          <form name="abc" action="" method="post">
                                                           <a  onclick="requestDeleteMessage(<?php echo $row['id'];?>)" class="btn btn-danger btn-xs btn-mini">Delete</a> 
                                                           </form>
                                                          </td>
                                                    </tr>
                                                    <?php $cnt=$cnt+1; } ?>
                                                </tbody>
                                            </table>
									</div>
                                </div>
                            </div>
                        </div>
                    </div>
                
					</div>
                </div>
            </div>
            <!-- END PAGE -->
        </div>

 </div>
<!-- END CONTAINER -->
<!-- BEGIN CORE JS FRAMEWORK--> 
<script src="assets/plugins/jquery-1.8.3.min.js" type="text/javascript"></script> 
<script src="assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script> 
<script src="assets/plugins/boostrapv3/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/plugins/breakpoints.js" type="text/javascript"></script> 
<script src="assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript"></script> 
<!-- END CORE JS FRAMEWORK --> 
<!-- BEGIN PAGE LEVEL JS --> 	
<script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>  
<script src="assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-block-ui/jqueryblockui.js" type="text/javascript"></script> 
<script src="assets/plugins/jquery-sparkline/jquery-sparkline.js"></script>
<script src="assets/plugins/jquery-numberAnimate/jquery.animateNumbers.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS --> 	
<script>
	//Too Small for new file - Helps the to tick all options in the table 
	$('table .checkbox input').click( function() {			
		if($(this).is(':checked')){			
			$(this).parent().parent().parent().toggleClass('row_selected');					
		}
		else{	
		$(this).parent().parent().parent().toggleClass('row_selected');		
		}
	});
	// Demo charts - not required 
	$('.customer-sparkline').each(function () {	
		$(this).sparkline('html', { type:$(this).attr("data-sparkline-type"), barColor:$(this).attr("data-sparkline-color") , enableTagOptions: true  });	
	});
</script>
<!-- BEGIN CORE TEMPLATE JS --> 
<script src="assets/js/core.js" type="text/javascript"></script> 
<script src="assets/js/chat.js" type="text/javascript"></script> 
<script src="assets/js/demo.js" type="text/javascript"></script> 
<script src="assets/js/main.js" type="text/javascript"></script> 
<script src="assets/js/toast.js" type="text/javascript"></script> 
<!-- END CORE TEMPLATE JS --> 
</body>
</html>
