 <!-- BEGIN SIDEBAR -->
  <div class="page-sidebar" id="main-menu">
    <!-- BEGIN MINI-PROFILE -->
    <div class="page-sidebar-wrapper scrollbar-dynamic" id="main-menu-wrapper">
      <div class="user-info-wrapper">
        <div class="profile-wrapper"> <img src="assets/img/profiles/avatar.jpg"  alt="" data-src="assets/img/profiles/avatar.jpg" data-src-retina="assets/img/profiles/avatar2x.jpg" width="69" height="69" /> </div>
        <div class="user-info">
          <div class="greeting">Welcome</div>
          <div class="username"><?php echo $_SESSION['name'];?></div>
          <div class="status">Status<a href="#">
            <div class="status-icon green"></div>
            Online</a></div>
        </div>
      </div>
      <!-- END MINI-PROFILE -->
      <!-- BEGIN SIDEBAR MENU -->
      <p class="menu-title">BROWSE <span class="pull-right"><a href="javascript:;"><i class="fa fa-refresh"></i></a></span></p>

    <ul>	
      <li class="start"> <a href="index.html"> <i class="icon-custom-home"></i> <span class="title">Dashboard</span> <span class="selected"></span> <span class="arrow"></span> </a> 
		    </li>
    
          <li class="active"><a href="change-password.php"><span class="fa fa-file-text-o"></span> Change Password</a></li>
                            <li><a href="profile.php"><span class="fa fa-user"></span> Profile</a></li>
                         
                                 
                            <li class="active"><a href="message.php"><span class="fa fa-comments"></span> Messages</a></li>
                              <li ><a href="get-quote.php"> <span class="fa fa-tasks"></span> Request a Quote</a></li>
							     <li class="active"><a href="create-ticket.php"><span class="fa fa-ticket"></span> Create Ticket</a></li>
                                <li ><a href="view-tickets.php"><span class="fa fa-ticket"></span> View Ticket</a></li>
							<li class="active"><a href="career.php"><span class="fa fa-file-text-o"></span> Career</a></li>
                           
    </ul>