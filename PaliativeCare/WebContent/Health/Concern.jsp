<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Me</title>
 
</head>
<body>
 <jsp:include page="islogin.jsp"></jsp:include>
<jsp:include page="AdminMenubar.jsp"></jsp:include> 

<!-- Start addproject section -->
<section id="menu-area">
	<div class="container">
		<div class="modal-dialog wow zoomIn" style="margin-bottom:100px">
	<div id="login-content" class="modal-content" style="width:auto; ">
		<div class="modal-header">
			<h4 class="modal-title" align="center">CONCERNS</h4>
		</div>
		<div class="modal-body">
			<form action="../AboutMe" method="post" name="about" id="about" style="float:none">
				<table>
						<tr class="aboutMe-right" style="float:left">
						<td>
						<label style="margin-bottom:14px">Things I am most concerned about:</label>
						  
							<div class="form-group">
							<label>MOST IMPORTANT UNMET NEEDS:</label>
							<textarea rows="10" cols="50"  name="mostneeds"   id="mostneeds" class="form-control and validate[required,custom[onlyLetterSp]]" ></textarea>
								
									
							</div>
							<div class="form-group"  >
							<label>THINGS I WOULD LIKE TO DO MORE OF:</label>
							<textarea rows="10" cols="50" name="thingsilike"   id="thingsilike" class="form-control and validate[required,custom[onlyLetterSp]]" ></textarea>		
							</div>
							<label>HEALTH CONCERNS</label></br></br>
							<label>In the Last 12 Months</label></br>
							* I used EMS approximately <input  type="text" name="ems"   id="ems" > Times.</br></br>
							* I went to the ER approximately <input  type="text" name="er"   id="er" > Times.</br></br>
							* I had <input  type="text" name="hosp"   id="hosp" > hospitalizations</br></br>
							* I spent approximately <input  type="text" name="spent"   id="spent" > days in hospital</br></br>
							* I used other crisis or emergency services approximately <input  type="text" name="emergency"   id="emergency" > Times.</br></br>
							I am currently receiving care in the place I prefer</br>
							<input  type="radio" name="carey"   id="carey" > Yes     <input  type="radio" name="caren"   id="caren" > No </br> </br>
							If not, what is my preferred place of care
							<div class="form-group"  >
							<textarea rows="10" cols="50" name="precare"   id="precare" class="form-control and validate[required,custom[onlyLetterSp]]" ></textarea>		
							</div>
							
							
						</td>
						
						</tr>
						
						<tr>
						  <td>
						      <div class="loginbox" >
								<button  class="btn signin-btn col-md-2 col-md-offset-5" type="submit">ADD</button>
							</div>
						  </td>
						</tr>
						</table>
						
			</form>
			
		</div>

	</div>
	</div>
	</div>
	</section>

	<!-- End addproject modal window -->

<!-- Start footer -->
  <footer style="margin-top:160px;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
            <h4> All Right Reserve &copy; Copyright 2018 <a href="healthindex.jsp" target="_blank">PALLIATIVE CARE</a></h4>
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
  </footer>
  <!-- End footer -->
</body>
</html>