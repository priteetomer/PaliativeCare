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
		<div class="modal-dialog wow zoomIn" style="width:auto;margin-bottom:100px">
	<div id="login-content" class="modal-content" style="width:auto; ">
		<div class="modal-header">
			<h4 class="modal-title" align="center">About Me</h4>
		</div>
		<div class="modal-body">
			<form action="../AboutMe" method="post" name="about" id="about" style="float:none">
				<table>
					<tr class="aboutMe-left" style="float:left">
						<td>
							<div class="form-group"  >
							<textarea rows="10" cols="50" placeholder="My Story" name="mystory"   id="mystory" class="form-control and validate[required]" ></textarea>
								
									
							</div>
						</td>
						
						</tr>
						<tr class="aboutMe-right" style="float:left">
						<td>
						<label style="margin-bottom:14px">My Strengths and Talents</label>
						  
							<div class="form-group">
							<label>The skills, talents and gifts i have that make me a unique and valuable person:</label>
							<textarea rows="10" cols="50"  name="mystrength"   id="mystrength" class="form-control and validate[required,custom[onlyLetterSp]]" ></textarea>
								
									
							</div>
							<div class="form-group"  >
							<label>Things I most love to do:</label>
							<textarea rows="10" cols="50" name="mostlove"   id="mostlove" class="form-control and validate[required,custom[onlyLetterSp]]" ></textarea>
								
									
							</div>
							<div class="form-group"  >
							<label>Things i like to do with (or for) others:</label>
							<textarea rows="10" cols="50" name="mostlike"   id="mostlike" class="form-control and validate[required,custom[onlyLetterSp]]" ></textarea>
								
									
							</div>
							<div class="form-group"  >
							<label>Skills i can share with my neighbors</label>
							<textarea rows="10" cols="50" name="skills"   id="skills" class="form-control and validate[required,custom[onlyLetterSp]]" ></textarea>
								
									
							</div>
						</td>
						
						</tr>
						<tr class="aboutMe-botLeft" style="float:left">
						<td>
						
							<div class="form-group">
							<label>My Health and Circumstances</label>
							<textarea rows="10" cols="50"  name="myhealth"   id="myhealth" class="myHealth form-control and validate[required,custom[onlyLetterSp]]" ></textarea>
								
									
							</div>
							<div class="form-group"  >
							<label style="margin-bottom:25px">What's most important to me in terms of quality of life</label>
							<textarea rows="10" cols="50" name="mostimp"   id="mostimp" class="myHealth form-control and validate[required,custom[onlyLetterSp]]" ></textarea>
								
									
							</div>
						</td>
						
						</tr>
						<tr class="aboutMe-botRight" style="float:left">
						<td>
						
							<div class="form-group">
							<label>My hopes and fears now and for the future</label>
							<textarea rows="10" cols="50"  name="myhope"   id="myhope" class="otherInfo form-control and validate[required,custom[onlyLetterSp]]" ></textarea>
								
									
							</div>
							<div class="form-group"  >
							<label>Anything else i want you to know about me as a person to take the best care of me that you can</label>
							<textarea rows="10" cols="50" name="anyelse"   id="anyelse" class="otherInfo form-control and validate[required,custom[onlyLetterSp]]" ></textarea>
								
									
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