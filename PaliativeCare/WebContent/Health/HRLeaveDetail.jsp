<%@page import="pojo.Leavemaster"%>
<%@page import="java.util.List"%>
<%@page import="logic.BLmanager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave Management</title>
<link
	href='../assets/css/dataTables.bootstrap.min.css'
	rel='../stylesheet' type='text/css'>
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
List<Leavemaster> studlev= b.Searchleaves();

ses.setAttribute("stdlev",studlev);

%>
 <section >
<div class="container col-sm-12 wow zoomIn">
  <h2 align="center">Leaves</h2>                                                                                      
  <div class="table-responsive">
 <table class="table table-striped table-bordered" id="example" cellspacing="0" width="100%">
    <thead>
  <tr>
  <th>id</th>
  <th>FirstName</th>
 <th>MiddleName</th>
 <th>LastName</th>
  <th>Email</th>
  <th>LeaveType</th>
  <th>Description</th>
  <th>StartDate</th>
  <th>EndDate</th>
  <th>Department</th>
  <th>Status</th>
  <th>Action</th>
  </thead>
    <tbody>
  <c:forEach items="${sessionScope.stdlev}" var="stdlev">
  <tr>
  	<td><c:out value="${stdlev.id}"></c:out>
  	<td><c:out value="${stdlev.registration.fname}"></c:out>
  	<td><c:out value="${stdlev.registration.mname}"></c:out>
  	<td><c:out value="${stdlev.registration.lname}"></c:out>
  	<td><c:out value="${stdlev.registration.email}"></c:out>
  	<td><c:out value="${stdlev.leavetype}"></c:out>
  	<td><c:out value="${stdlev.description}"></c:out>
  	<td><c:out value="${stdlev.startdate}"></c:out>
  	<td><c:out value="${stdlev.enddate}"></c:out>
  	<td><c:out value="${stdlev.department}"></c:out>
  	<td><c:out value="${stdlev.status}"></c:out>
  	<td colspan="2"><a href="../HApproveLeaveServ?id=${stdlev.id}" rel="tooltip" title="Approve"><i class="fa fa-check"></i></a>
  					<a href="../HRejectLeaveServ?id=${stdlev.id}" rel="tooltip" title="Reject"><i style="margin-left:10px;" class="fa fa-close"></i></a>
  	
  </tr>
  </c:forEach>
  </tbody>
  </table>
  </div>
  </div>
  </section>

  <!-- Start footer -->
  <footer style="margin-top:150px;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
            <h4> All Right Reserve &copy; Copyright 2018 <a href="../healthindex.jsp" target="_blank">PALIATIVE CARE</a></h4>
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
</body>
</html>