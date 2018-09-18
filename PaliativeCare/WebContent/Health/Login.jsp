<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
   <link rel="stylesheet" href="assets/css/validationEngine.jquery.css" type="text/css"/>
<script src="../assets/js1/jquery.min.js" type="text/javascript"></script>
<script src="../assets/js1/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8"></script>
<script src="../assets/js1/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<title>Login</title>
<script language="javascript">
	var mi = jQuery.noConflict();
	mi(document).ready(function s() {
		// binds form submission and fields to the validation engine
		mi("#registration").validationEngine();
	});
</script>
<!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="asset/images/final.png"/>
    <!-- Font Awesome -->
    <link href="../assets/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="../asset/css/bootstrap.css" rel="stylesheet">    
    <!-- Slick slider -->
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css"/> 
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="../assets/css/jquery.fancybox.css" type="text/css" media="screen" /> 
    <!-- Animate css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css"/> 
    <!-- Progress bar  -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-progressbar-3.3.4.css"/> 
     <!-- Theme color -->
    <link id="switcher" href="../assets/css/theme-color/default-theme.css" rel="stylesheet">

    <!-- Main Style -->
    <link href="style.css" rel="stylesheet">

    

  <!-- BEGIN MENU -->
  <section id="menu-area">      
    <nav class="navbar navbar-inverse"  role="navigation">  
      <div class="container">
        <div class="navbar-header">
          <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- LOGO -->              
          <!-- TEXT BASED LOGO -->
         <div class="logo">
                             <img alt="" src="../asset/images/health.png">
                        </div>             
        </div>
      <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
            <li class="active"><a href="../healthindex.jsp">Home</a></li>
            <li><a href="../healthindex.jsp#about">About</a></li>
            <li><a href="../healthindex.jsp#services">Service</a></li>              
            <li><a href="../healthindex.jsp#contact">ContactUs</a></li>
          </ul>                     
        </div>
      </div>     
    </nav>
  </section>
  <!-- END MENU --> 
  
  <!-- Start signup section -->
      <section id="menu-area">
 <div class="container">
 <div class="modal-dialog wow zoomIn">
      <!-- Start login section -->
      <div id="login-content" class="modal-content" style="width:400px; margin-left:100px; margin-top:50px;">
        <div class="modal-header">
          
          <h4 class="modal-title" align="center"><i class="fa fa-unlock-alt"></i>Login</h4>
        </div>
        <div class="modal-body">
          <form action="../HLoginServlet" name="registration" id="registration" method="post" >
            <div class="form-group">
              <input type="text" id="email" placeholder="User name" class="form-control and validate[required,custom[email]" name="email">
            </div>
            <div class="form-group">
              <input type="password" id="Password"  placeholder="Password" name="password" class="form-control and validate[required, minSize[7]]">
              
              <%
						if (request.getParameter("msg") == "1") {
					%>
					<h4 id='loginerror' style="color: red">Login Failed-Invalid Details</h4>
					<%
						}if(request.getParameter("msg") == "11") {
							%>
							<h4 style="color: Green">Registration Successful.Please login.</h4>
							<%	
						}
					%>
            </div>
             <div class="loginbox">
              <label><input type="checkbox"><span>Remember me</span></label>
              <button style="margin-left:150px; margin-top:-50px;"   class="btn signin-btn" type="submit">SIGN IN</button>
            </div>                    
          </form>
        </div>
        <div class="modal-footer footer-box">
          <a href="ForgotPassword.jsp">Forgot password ?</a>
          <span>No account ? <a href="Registration.jsp">Sign Up.</a></span>            
        </div>
      </div>
    </div>
    </div>
     </section>
  <!-- End login modal window -->
  <!-- Start footer -->
  <div id="footer" style="margin-top: 450px;">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
           <h4> All Right Reserve &copy; Copyright 2018 <a href="Index.jsp" target="_blank">PALIATIVE CARE</a></h4>
          </div>
        </div>
        <div class="col-md-6 col-sm-6">
          <div class="footer-right">
            <a href="https://www.facebook.com/pages/Robonet-Infotech-India-PvtLtd/1087711411254042?ref=hl"><i  class="fa fa-facebook"></i></a>
            <a href="https://twitter.com/robo_infotech"><i class="fa fa-twitter"></i></a>
            
            <a href="https://www.linkedin.com/hp/?dnr=jK1iIuw-2ysWp7WN4KgQZ43T9PPCp7ef8Dly&trk=hb_signin"><i class="fa fa-linkedin"></i></a>
            
          </div>
        </div>
      </div>
    </div>
    </div>
  <!-- End footer -->
  
   <jsp:include page="JqueryLib.jsp"></jsp:include>
   <script type="text/javascript">
      $( document ).ready(function() {
    	  $("#loginerror").show();
      	$("#email").on("focus",function(){
      		$("#loginerror").hide();
      	});
	});
      </script>
   
  </body>
</html>