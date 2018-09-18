<%@page import="pojo.Registration"%>
<%@page import="java.util.List"%>
<%@page import="logic.BLmanager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HR : Employees</title>
<link
	href='../assets/css/dataTables.bootstrap.min.css'
	rel='stylesheet' type='text/css'>
<link
	href='../assets/css/buttons.dataTables.min.css'
	rel='stylesheet' type='text/css'>
<link
	href='../assets/css/jquery.dataTables.min.css'
	rel='stylesheet' type='text/css'>	
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:include page="AdminMenubar.jsp"></jsp:include>
<%
HttpSession ses = request.getSession();
BLmanager b = new BLmanager();
List<Registration> regi= b.SearchAllDetail();

ses.setAttribute("regi",regi);
%>
<section>
<div class="container col-sm-12 wow zoomIn">
  <h2 align="center">User List</h2>                                                                                      
  <div class="table-responsive">
<table class="table table-striped table-bordered" id="tbldata" cellspacing="0" width="100%">
    <thead>
  <tr>
  <th>Regid</th>
  <th>Fname</th>
  <th>Mname</th>
  <th>Lname</th>
  <th>Email</th>
  <th>DOB</th>
  <th>Gender</th>
  <th>ContactNo</th>
  <th>Address</th>
  <th>Role</th>
  <th>Delete</th>
  </tr>
  </thead>
    <tbody>
  <c:forEach items="${sessionScope.regi}" var="regi">
  <tr>
  	<td><c:out value="${regi.regId}"></c:out></td>
  	<td><c:out value="${regi.fname}"></c:out></td>
  	<td><c:out value="${regi.mname}"></c:out></td>
  	<td><c:out value="${regi.lname}"></c:out></td>
  	<td><c:out value="${regi.email}"></c:out></td>
  	<td><c:out value="${regi.dob}"></c:out></td>
  	<td><c:out value="${regi.gender}"></c:out></td>
  	<td><c:out value="${regi.contactno}"></c:out></td>
  	<td><c:out value="${regi.address}"></c:out></td>
  	<td><c:out value="${regi.role.role}"></c:out></td>
  <td><a href="../DeleteUserServlet?id=${regi.regId}">Delete</a></td>
  	
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