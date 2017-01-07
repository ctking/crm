<?php
session_start();
//echo $_SESSION['id'];
//$_SESSION['msg'];
include("dbconnection.php");
include("checklogin.php");
check_login();
if(isset($_POST['send']))
{
$count_my_page = ("hitcounter.txt");
$hits = file($count_my_page);
$hits[0] ++;
$fp = fopen($count_my_page , "w");
fputs($fp , "$hits[0]");
fclose($fp);
$tid=$hits[0];
$email=$_SESSION['login'];
$subject=$_POST['subject'];
$tt=$_POST['tasktype'];
$priority=$_POST['priority'];
$ticket=$_POST['description'];
//$ticfile=$_FILES["tfile'"]["name"];
$st="Open";
$pdate=date('Y-m-d');
//move_uploaded_file($_FILES["tfile"]["tmp_name"],"ticketfiles/".$_FILES["tfile"]["name"]);
$a=mysql_query("insert into ticket(ticket_id,email_id,subject,task_type,prioprity,ticket,status,posting_date)  values('$tid','$email','$subject','$tt','$priority','$ticket','$st','$pdate')");
if($a)
{
echo "<script>alert('Ticket Genrated');</script>";
}
}
?>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<title>CRM | Create  ticket</title>
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
</head>
<body class="">
<div class="header navbar navbar-inverse "> 
  <div class="navbar-inner">
	<div class="header-seperation"> 
		<ul class="nav pull-left notifcation-center" id="main-menu-toggle-wrapper" style="display:none">	
		 <li class="dropdown"> <a id="main-menu-toggle" href="#main-menu"  class="" > <div class="iconset top-menu-toggle-white"></div> </a> </li>		 
		</ul>
      <a href="index.html"><img src="assets/img/logo.png" class="logo" alt=""  data-src="assets/img/logo.png" data-src-retina="assets/img/logo2x.png" width="106" height="21"/></a>
      <ul class="nav pull-right notifcation-center">	
        <li class="dropdown" id="header_task_bar"> <a href="index.html" class="dropdown-toggle active" data-toggle=""> <div class="iconset top-home"></div> </a> </li>
        <li class="dropdown" id="header_inbox_bar" > <a href="email.html" class="dropdown-toggle" > <div class="iconset top-messages"></div>  <span class="badge" id="msgs-badge">2</span> </a></li>
		<li class="dropdown" id="portrait-chat-toggler" style="display:none"> <a href="#sidr" class="chat-menu-toggle"> <div class="iconset top-chat-white "></div> </a> </li>        
      </ul>
      </div>
      <div class="header-quick-nav" > 
	  <div class="pull-left"> 
        <ul class="nav quick-section">
          <li class="quicklinks"> <a href="#" class="" id="layout-condensed-toggle" >
            <div class="iconset top-menu-toggle-dark"></div>
            </a> </li>
        </ul>
        <ul class="nav quick-section">
          <li class="quicklinks"> <a href="#" class="" >
            <div class="iconset top-reload"></div>
            </a> </li>
          <li class="quicklinks"> <span class="h-seperate"></span></li>
          <li class="quicklinks"> <a href="#" class="" >
            <div class="iconset top-tiles"></div>
            </a> </li>
			<li class="m-r-10 input-prepend inside search-form no-boarder">
				<span class="add-on"> <span class="iconset top-search"></span></span>
				 <input name="" type="text"  class="no-boarder " placeholder="Search Dashboard" style="width:250px;">
			</li>
		  </ul>
	  </div>
	 <!-- END TOP NAVIGATION MENU -->
	 <!-- BEGIN CHAT TOGGLER -->
      <div class="pull-right"> 
		<div class="chat-toggler">	
				<a href="#" class="dropdown-toggle" id="my-task-list" data-placement="bottom"  data-content='' data-toggle="dropdown" data-original-title="Notifications">
					<div class="user-details"> 
						<div class="username">
							<span class="badge badge-important">3</span> 
							 <span class="bold"><?php echo $_SESSION['name'];?></span>									
						</div>						
					</div> 
					<div class="iconset top-down-arrow"></div>
				</a>	
				<div id="notification-list" style="display:none">
					<div style="width:300px">
						  <div class="notification-messages info">
									<div class="user-profile">
										<img src="assets/img/profiles/d.jpg"  alt="" data-src="assets/img/profiles/d.jpg" data-src-retina="assets/img/profiles/d2x.jpg" width="35" height="35">
									</div>
									<div class="message-wrapper">
										<div class="heading">
											David Nester - Commented on your wall
										</div>
										<div class="description">
											Meeting postponed to tomorrow
										</div>
										<div class="date pull-left">
										A min ago
										</div>										
									</div>
									<div class="clearfix"></div>									
								</div>	
							<div class="notification-messages danger">
								<div class="iconholder">
									<i class="icon-warning-sign"></i>
								</div>
								<div class="message-wrapper">
									<div class="heading">
										Server load limited
									</div>
									<div class="description">
										Database server has reached its daily capicity
									</div>
									<div class="date pull-left">
									2 mins ago
									</div>
								</div>
								<div class="clearfix"></div>
							</div>	
							<div class="notification-messages success">
								<div class="user-profile">
									<img src="assets/img/profiles/h.jpg"  alt="" data-src="assets/img/profiles/h.jpg" data-src-retina="assets/img/profiles/h2x.jpg" width="35" height="35">
								</div>
								<div class="message-wrapper">
									<div class="heading">
										You haveve got 150 messages
									</div>
									<div class="description">
										150 newly unread messages in your inbox
									</div>
									<div class="date pull-left">
									An hour ago
									</div>									
								</div>
								<div class="clearfix"></div>
							</div>							
						</div>				
				</div>
				<div class="profile-pic"> 
					<img src="assets/img/profiles/avatar_small.jpg"  alt="" data-src="assets/img/profiles/avatar_small.jpg" data-src-retina="assets/img/profiles/avatar_small2x.jpg" width="35" height="35" /> 
				</div>       			
			</div>
		 <ul class="nav quick-section ">
			<li class="quicklinks"> 
				<a data-toggle="dropdown" class="dropdown-toggle  pull-right " href="#" id="user-options">						
					<div class="iconset top-settings-dark "></div> 	
				</a>
				<ul class="dropdown-menu  pull-right" role="menu" aria-labelledby="user-options">
                  <li><a href="user-profile.html"> My Account</a>
                  </li>
                  <li><a href="calender.html">My Calendar</a>
                  </li>
                  <li><a href="email.html"> My Inbox&nbsp;&nbsp;<span class="badge badge-important animated bounceIn">2</span></a>
                  </li>
                  <li class="divider"></li>                
                  <li><a href="logout.php"><i class="fa fa-power-off"></i>&nbsp;&nbsp;Log Out</a></li>
               </ul>
			</li> 
			<li class="quicklinks"> <span class="h-seperate"></span></li> 
			<li class="quicklinks"> 	
			<a id="chat-menu-toggle" href="#sidr" class="chat-menu-toggle" ><div class="iconset top-chat-dark "><span class="badge badge-important hide" id="chat-message-count">1</span></div>
			</a> 
				<div class="simple-chat-popup chat-menu-toggle hide" >
					<div class="simple-chat-popup-arrow"></div><div class="simple-chat-popup-inner">
						 <div style="width:100px">
						 <div class="semi-bold">David Nester</div>
						 <div class="message">Hey you there </div>
						</div>
					</div>
				</div>
			</li> 
		</ul>
      </div>
	   <!-- END CHAT TOGGLER -->
      </div> 
      <!-- END TOP NAVIGATION MENU --> 
   
  </div>
  <!-- END TOP NAVIGATION BAR --> 
</div>
<!-- END HEADER -->
<!-- BEGIN CONTAINER -->
<div class="page-container row-fluid">	
	<?php include("leftbar.php");?>
	<div class="clearfix"></div>
    <!-- END SIDEBAR MENU --> 
  </div>
  </div>
  <a href="#" class="scrollup">Scroll</a>
   <div class="footer-widget">		
	<div class="progress transparent progress-small no-radius no-margin">
		<div data-percentage="79%" class="progress-bar progress-bar-success animate-progress-bar" ></div>		
	</div>
	<div class="pull-right">
	</div>
  </div>
  <!-- END SIDEBAR --> 
  <!-- BEGIN PAGE CONTAINER-->
  <div class="page-content"> 
    <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
    <div id="portlet-config" class="modal hide">
      <div class="modal-header">
        <button data-dismiss="modal" class="close" type="button"></button>
        <h3>Widget Settings</h3>
      </div>
      <div class="modal-body"> Widget settings form goes here </div>
    </div>
    <div class="clearfix"></div>
    <div class="content">  
		<div class="page-title">	
			<h3>Create ticket</h3>
     
	
             <div class="row">
                        <div class="col-md-12">
                            
                            <form class="form-horizontal" name="form1" method="post" action="" onSubmit="return valid();">
                            <div class="panel panel-default">
                             
                                <div class="panel-body">                                                                        
                                    <p align="center" style="color:#FF0000"><?=$_SESSION['msg1'];?><?=$_SESSION['msg1']="";?></p>
                               <div class="form-group">                                        
                                        <label class="col-md-3 col-xs-12 control-label">Subject</label>
                                        <div class="col-md-6 col-xs-12">
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input type="text" name="subject" id="subject" value="" required class="form-control"/>
                                            </div>            
                                        
                                        </div>
                                    </div>
									
									
									 <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Task Type</label>
                                        <div class="col-md-6 col-xs-12">                                                                                            
                                            <select  name="tasktype" class="form-control select" required>
                                                <option> Select your Task Type</option>
                                                <option value="billing">Billing</option>
                                                <option value="ot1">Option 1</option>
                                                <option value="ot2">Option 2</option>
                                                <option value="ot3">Option 3</option>
                                            </select>
                                           </div>
                                    </div>
									
										 <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Priority</label>
                                        <div class="col-md-6 col-xs-12">                                                                                            
                                            <select name="priority" class="form-control select">
                                                <option value="">Choose your Priority</option>
                                                <option value="important">Important</option>
                                                <option value="urgent(functional problem)">Urgent (Functional Problem)</option>
                                                <option value="non-urgent">Non-Urgent</option>
                                                <option value="question">Question</option>
                                            </select>
                                           </div>
                                    </div>
									
									  
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Description</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <textarea name="description" required class="form-control" rows="5"></textarea>
                                            
                                        </div>
                                    </div>
									
								
                                    </div>
                                    
                                
                                    
                                
                                    
                               
                                    
                                    

                                </div>
								
                                <div class="panel-footer">
                                    <button class="btn btn-default">Clear Form</button>                                    
                                    <input type="submit" value="Send" name="send" class="btn btn-primary pull-right">
                                </div>
                            </div>
                            </form>
                            
                        </div>
                    </div>                    
                                   
                                   
                                    
                               
                                    
                                    
                                      
             
            	
		</div>
    </div>
  </div>
<!-- BEGIN CHAT --> 
<div class="chat-window-wrapper">
	<div id="main-chat-wrapper" class="inner-content">
        <div class="chat-window-wrapper scroller scrollbar-dynamic" id="chat-users" >
            <div class="chat-header">	
            <div class="pull-left">
                <input type="text" placeholder="search">
            </div>		
                <div class="pull-right">
                    <a href="#" class="" ><div class="iconset top-settings-dark "></div> </a>
                </div>			
            </div>	
            <div class="side-widget">
               <div class="side-widget-title">group chats</div>
                <div class="side-widget-content">
                 <div id="groups-list">
                    <ul class="groups" >
                        <li><a href="#"><div class="status-icon green"></div>Office work</a></li>
                        <li><a href="#"><div class="status-icon green"></div>Personal vibes</a></li>
                    </ul>
                </div>
                </div>
            </div>
            <div class="side-widget fadeIn">
               <div class="side-widget-title">favourites</div>
               <div id="favourites-list">
                <div class="side-widget-content" >
                    <div class="user-details-wrapper active" data-chat-status="online" data-chat-user-pic="assets/img/profiles/d.jpg" data-chat-user-pic-retina="assets/img/profiles/d2x.jpg" data-user-name="Jane Smith">
                        <div class="user-profile">
                            <img src="assets/img/profiles/d.jpg"  alt="" data-src="assets/img/profiles/d.jpg" data-src-retina="assets/img/profiles/d2x.jpg" width="35" height="35">
                        </div>
                        <div class="user-details">
                            <div class="user-name">
                            Jane Smith
                            </div>
                            <div class="user-more">
                            Hello you there?
                            </div>
                        </div>
                        <div class="user-details-status-wrapper">
                            <span class="badge badge-important">3</span>
                        </div>
                        <div class="user-details-count-wrapper">
                            <div class="status-icon green"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>	
                    <div class="user-details-wrapper" data-chat-status="busy" data-chat-user-pic="assets/img/profiles/d.jpg" data-chat-user-pic-retina="assets/img/profiles/d2x.jpg" data-user-name="David Nester">
                        <div class="user-profile">
                            <img src="assets/img/profiles/c.jpg"  alt="" data-src="assets/img/profiles/c.jpg" data-src-retina="assets/img/profiles/c2x.jpg" width="35" height="35">
                        </div>
                        <div class="user-details">
                            <div class="user-name">
                            David Nester
                            </div>
                            <div class="user-more">
                            Busy, Do not disturb
                            </div>
                        </div>
                        <div class="user-details-status-wrapper">
                            <div class="clearfix"></div>
                        </div>
                        <div class="user-details-count-wrapper">
                            <div class="status-icon red"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>					
                </div>
                </div>
            </div>
            <div class="side-widget">
               <div class="side-widget-title">more friends</div>
                 <div class="side-widget-content" id="friends-list">
                    <div class="user-details-wrapper" data-chat-status="online" data-chat-user-pic="assets/img/profiles/d.jpg" data-chat-user-pic-retina="assets/img/profiles/d2x.jpg" data-user-name="Jane Smith">
                        <div class="user-profile">
                            <img src="assets/img/profiles/d.jpg"  alt="" data-src="assets/img/profiles/d.jpg" data-src-retina="assets/img/profiles/d2x.jpg" width="35" height="35">
                        </div>
                        <div class="user-details">
                            <div class="user-name">
                            Jane Smith
                            </div>
                            <div class="user-more">
                            Hello you there?
                            </div>
                        </div>
                        <div class="user-details-status-wrapper">

                        </div>
                        <div class="user-details-count-wrapper">
                            <div class="status-icon green"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>	
                    <div class="user-details-wrapper" data-chat-status="busy" data-chat-user-pic="assets/img/profiles/d.jpg" data-chat-user-pic-retina="assets/img/profiles/d2x.jpg" data-user-name="David Nester">
                        <div class="user-profile">
                            <img src="assets/img/profiles/h.jpg"  alt="" data-src="assets/img/profiles/h.jpg" data-src-retina="assets/img/profiles/h2x.jpg" width="35" height="35">
                        </div>
                        <div class="user-details">
                            <div class="user-name">
                            David Nester
                            </div>
                            <div class="user-more">
                            Busy, Do not disturb
                            </div>
                        </div>
                        <div class="user-details-status-wrapper">
                            <div class="clearfix"></div>
                        </div>
                        <div class="user-details-count-wrapper">
                            <div class="status-icon red"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>		
                    <div class="user-details-wrapper" data-chat-status="online" data-chat-user-pic="assets/img/profiles/d.jpg" data-chat-user-pic-retina="assets/img/profiles/d2x.jpg" data-user-name="Jane Smith">
                        <div class="user-profile">
                            <img src="assets/img/profiles/c.jpg"  alt="" data-src="assets/img/profiles/c.jpg" data-src-retina="assets/img/profiles/c2x.jpg" width="35" height="35">
                        </div>
                        <div class="user-details">
                            <div class="user-name">
                            Jane Smith
                            </div>
                            <div class="user-more">
                            Hello you there?
                            </div>
                        </div>
                        <div class="user-details-status-wrapper">

                        </div>
                        <div class="user-details-count-wrapper">
                            <div class="status-icon green"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>	
                    <div class="user-details-wrapper" data-chat-status="busy" data-chat-user-pic="assets/img/profiles/d.jpg" data-chat-user-pic-retina="assets/img/profiles/d2x.jpg" data-user-name="David Nester">
                        <div class="user-profile">
                            <img src="assets/img/profiles/h.jpg"  alt="" data-src="assets/img/profiles/h.jpg" data-src-retina="assets/img/profiles/h2x.jpg" width="35" height="35">
                        </div>
                        <div class="user-details">
                            <div class="user-name">
                            David Nester
                            </div>
                            <div class="user-more">
                            Busy, Do not disturb
                            </div>
                        </div>
                        <div class="user-details-status-wrapper">
                            <div class="clearfix"></div>
                        </div>
                        <div class="user-details-count-wrapper">
                            <div class="status-icon red"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>				
                </div>		
            </div>
        </div>

        <div class="chat-window-wrapper" id="messages-wrapper" style="display:none">
        <div class="chat-header">	
            <div class="pull-left">
                <input type="text" placeholder="search">
            </div>		
                <div class="pull-right">
                    <a href="#" class="" ><div class="iconset top-settings-dark "></div> </a>
                </div>					
            </div>
        <div class="clearfix"></div>	
        <div class="chat-messages-header">
        <div class="status online"></div><span class="semi-bold">Jane Smith(Typing..)</span>
        <a href="#" class="chat-back"><i class="icon-custom-cross"></i></a>
        </div>
        <div class="chat-messages scrollbar-dynamic clearfix">
            <div class="inner-scroll-content clearfix">
            <div class="sent_time">Yesterday 11:25pm</div>
            <div class="user-details-wrapper " >
                <div class="user-profile">
                    <img src="assets/img/profiles/d.jpg"  alt="" data-src="assets/img/profiles/d.jpg" data-src-retina="assets/img/profiles/d2x.jpg" width="35" height="35">
                </div>
                <div class="user-details">
                  <div class="bubble">	
                        Hello, You there?
                   </div>
                </div>					
                <div class="clearfix"></div>
               <div class="sent_time off">Yesterday 11:25pm</div>
            </div>		
            <div class="user-details-wrapper ">
                <div class="user-profile">
                    <img src="assets/img/profiles/d.jpg"  alt="" data-src="assets/img/profiles/d.jpg" data-src-retina="assets/img/profiles/d2x.jpg" width="35" height="35">
                </div>
                <div class="user-details">
                  <div class="bubble">	
                        How was the meeting?
                   </div>
                </div>					
                <div class="clearfix"></div>
                <div class="sent_time off">Yesterday 11:25pm</div>
            </div>
            <div class="user-details-wrapper ">
                <div class="user-profile">
                    <img src="assets/img/profiles/d.jpg"  alt="" data-src="assets/img/profiles/d.jpg" data-src-retina="assets/img/profiles/d2x.jpg" width="35" height="35">
                </div>
                <div class="user-details">
                  <div class="bubble">	
                        Let me know when you free
                   </div>
                </div>					
                <div class="clearfix"></div>
                <div class="sent_time off">Yesterday 11:25pm</div>
            </div>
            <div class="sent_time ">Today 11:25pm</div>
            <div class="user-details-wrapper pull-right">
                <div class="user-details">
                  <div class="bubble sender">	
                        Let me know when you free
                   </div>
                </div>					
                <div class="clearfix"></div>
                <div class="sent_time off">Sent On Tue, 2:45pm</div>
            </div>		
        </div>
        </div>
        <div class="chat-input-wrapper" style="display:none">
            <textarea id="chat-message-input" rows="1" placeholder="Type your message"></textarea>
        </div>
        <div class="clearfix"></div>
        </div>
    </div>
</div>
 </div>
<script src="assets/plugins/jquery-1.8.3.min.js" type="text/javascript"></script> 
<script src="assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script> 
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> 
<script src="assets/plugins/breakpoints.js" type="text/javascript"></script> 
<script src="assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript"></script> 
<script src="assets/plugins/jquery-block-ui/jqueryblockui.js" type="text/javascript"></script> 
<script src="assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js" type="text/javascript"></script>
<script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>  
<script src="assets/plugins/jquery-numberAnimate/jquery.animateNumbers.js" type="text/javascript"></script>
<script src="assets/js/core.js" type="text/javascript"></script> 
<script src="assets/js/chat.js" type="text/javascript"></script> 
<script src="assets/js/demo.js" type="text/javascript"></script> 

</body>
</html>