<%@page import="pojo.PatientInfo"%>
<%@page import="java.util.List"%>
<%@page import="logic.BLmanager"%>
<%@page import="pojo.Registration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Patients</title>
<link
	href='../assets/css/dataTables.bootstrap.min.css'
	rel='stylesheet' type='text/css'>
<link
	href='../assets/css/buttons.dataTables.min.css'
	rel='stylesheet' type='text/css'>
<link
	href='../assets/css/jquery.dataTables.min.css'
	rel='stylesheet' type='text/css'>	
	<script src = "https://code.jquery.com/jquery-1.10.2.js"></script> 
<link href = "https://code.jquery.com/ui/1.10.2/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
      <script>
      var $j = $.noConflict(true);
      </script>
	<style>
		input {
			font-size: 120%;
		}
	</style>
	<script>
	$j(function(){
		  $j("#assignedVol").autocomplete({source:"/PaliativeCare/Health/filterVolunteers.jsp"}); 
		  /* $j("#assignedVol").autocomplete({source:"../AutoCompleteServlet"}); */
	});
	
	function changeFunc($value){
		document.getElementById("hidden").value= $value;
	}
	</script>	
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:include page="AdminMenubar.jsp"></jsp:include>
<%
HttpSession ses = request.getSession();
BLmanager b = new BLmanager();
List<PatientInfo> listOfPat= b.getAllPatients();
List<Registration> listOfVol = b.getOnlyVolunteers();

ses.setAttribute("listOfPat",listOfPat);
ses.setAttribute("listOfVol",listOfVol);
%>
<section>
<div class="container col-sm-12 wow zoomIn">
  <h2 align="center">List of Patients</h2>                                                                                      
  <div class="table-responsive">
<table class="table table-striped table-bordered" id="tbldata" cellspacing="0" width="100%">
    <thead>
  <tr>
  <th>Patient Id</th>
  <th>Name</th>
  <th>Nick Name</th>
  <th>Email</th>
  <th>DOB</th>
  <!-- <th>Edit</th> -->
  <th>Assign</th>
  <th>Completed</th>
  <th>Delete</th>
  </tr>
  </thead>
    <tbody>
  <c:forEach items="${sessionScope.listOfPat}" var="pat">
	  <tr>
	  	<td><c:out value="${pat.patientId}"></c:out></td>
	  	<td><c:out value="${pat.name}"></c:out></td>
	  	<td><c:out value="${pat.nickName}"></c:out></td>
	  	<td><c:out value="${pat.email}"></c:out></td>
	  	<td><c:out value="${pat.dob}"></c:out></td>
	  	<%-- <td><a href="../DeleteUserServlet?id=${pat.patientId}">Edit</a></td> --%>
	  	<%-- <td><div class="ui-widget"><input type="text" id="assignedVol" name="assignedVol" value="<c:out value="${pat.dob}"></c:out>"></div><a href="../DeleteUserServlet?id=${pat.patientId}"></a></td> --%>
	  	<td>
	  			<select name="assignedVol" id="assignedVol">
	  				<c:forEach items="${sessionScope.listOfVol}" var="vol">
	  					<option  value="${vol.fname}" ${vol.fname eq pat.assignedVol ? 'selected' : '' }>${vol.fname}</option>
	  					<c:set var="volName" value="${vol.fname}" scope="request"></c:set>
	  				</c:forEach>
	  			</select>
	  			<c:url value="../AssignVolunteer" var="urls">
	  				<c:param name="id" value="${pat.patientId}"></c:param>
	  				<c:param name="name" value="${volName}"></c:param>
	  			</c:url>
	  			<a href="${urls}">Ok</a>
	  		</td>
	  	<td><c:out value="${pat.percentComplete}"></c:out></td>
	  	<td><a href="../DeleteUserServlet?id=${pat.patientId}">Delete</a></td>
	  </tr>
  </c:forEach>
  </tbody>
  </table>
  </div>
  </div>
  </section>
  <!-- Start footer -->
  <footer style="margin-top:42px;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
            <h4> All Right Reserve &copy; Copyright 2017 <a href="Index.jsp" target="_blank">PALIATIVE CARE</a></h4>
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
  
  <script type="text/javascript"
		src="../assets/js1/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="../assets/js1/dataTables.bootstrap.min.js"></script>
		
	<script type="text/javascript" src="../assets/js1/dataTables.buttons.min.js"></script>
	<script type="text/javascript" src="../assets/js1/buttons.flash.min.js"></script>
	<script type="text/javascript" src="../assets/js1/jszip.min.js"></script>
	<script type="text/javascript" src="../assets/js1/pdfmake.min.js"></script>
	<script type="text/javascript" src="../assets/js1/vfs_fonts.js"></script>
	<script type="text/javascript" src="../assets/js1/buttons.html5.min.js"></script>
	<script type="text/javascript" src="../assets/js1/buttons.print.min.js"></script>
 <script>
	$(document).ready(function() {
	    $('#example').DataTable({
	        dom: 'Bfrtip',
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ]
	    } );
	    $('#tbldata').DataTable({
	        dom: 'Bfrtip',
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ]
	    } );
	   
	} );
	</script>
	<script type = "text/javascript" >
          function preventBack() { window.history.forward(); }
          setTimeout("preventBack()",0);
          window.onunload = function () { null };
    </script>
</body>
</html>