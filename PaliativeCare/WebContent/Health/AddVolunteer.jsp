<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Volunteer</title>
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:include page="AdminMenubar.jsp"></jsp:include>

<!-- Start addproject section -->
<section id="menu-area">
	<div class="container">
		<div class="modal-dialog wow zoomIn" >
	<div id="login-content" class="modal-content" style="width:350px; ">
		<div class="modal-header">
			<h4 class="modal-title" align="center">Add Volunteer</h4>
		</div>
		<div class="modal-body">
			<form action="../AddVolunteer" method="post" name="volunteer" id="volunteer" >
				<table>
					<tr>
					
						<td>
							<div class="form-group"  >
								<input  type="text"
									placeholder="First Name"  name="fname"   id="fname" class="form-control and validate[required,custom[onlyLetterSp]]" >
									
							</div>
						</td>
						
						</tr>
						</table>
						<table>
						<tr>
						<td>
							<div class="form-group">
								<input   type="text"
									placeholder="Last Name" name="lname" id="lname" 
									class="form-control and validate[required,custom[onlyLetterSp]]">
							</div>
						</td>
			
						<td>
							<div class="form-group">
								<input  type="text" placeholder="Email" name="email"  id="EmailAddress" class="form-control and validate[required,custom[email]"]>
							</div>
						</td>
						
						
					</tr>
					
					</table>
					<table style="margin-top: 10px;">
					<tr>
					
					<td>
							<div class="form-group">
								<input  type="text" placeholder="contact Number"
									 name="number"   id="ContactNo" class="form-control and validate[required,custom[phone]]">
							</div>
					</td>
					
						<td>
								<div class="form-group">
									<label style= margin-left:10px;">DOB:</label>
								</div>
						</td>
						<td>
							<div class="form-group">
							 <input  type="date" name="dob"
									 id="dob" class="form-control and validate[required,custom[dateFormat]]">
							</div>
						</td>		
					</tr>
					</table>
					<table style="margin-top: 10px;">
					<tr>
						  <td>
							<div class="form-group">
							<label> Gender:</label>
							</div>
							</td>
							<td>
					          <input style=" margin-bottom:25px; margin-left:20px;" type="radio" name="gender" value="Male"
								checked="checked"> Male <input style=" margin-bottom:25px; margin-left:30px;"type="radio"
								name="gender" value="Female"> Female</td>
								</tr>
								</table>
								<table>
								<tr>
								
						<td>
							<div class="form-group">
								<textarea  type="text" placeholder="Address"
									name="address" id="Address"  class="form-control and validate[required]"></textarea>
							</div>
						</td>
					</tr>
					</table>
					<table  style=" margin-top:20px;">
					<tr>
						
						<td>
							<div class="loginbox" >
								<button style="margin-left:130px;"  class="btn signin-btn" type="submit">ADD</button>
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