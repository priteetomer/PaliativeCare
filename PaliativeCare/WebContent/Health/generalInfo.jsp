<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>General Information</title>
<script type="text/javascript">
  
  function deleteRow(r,tableId){
  	var table = document.getElementById(tableId);
  	var rowNum=r.parentNode.parentNode.rowIndex;
  	table.deleteRow(rowNum);
  	console.log('Deleted '+rowNum);
  	return false;
  }
  
  function cloneRowPrimaryCarePartner() {
	  var table = document.getElementById("primaryCarePartnerTable");
	  var nofRows= table.rows.length;
	  if(Number(nofRows)-1<30){
	  	  var prevRowId=Number(nofRows)-1;
	      var row = table.rows[Number(nofRows)-1];
	      var maxRowId=row.id;
	      var chars=maxRowId.split('.');
	      var maxRowNum=Number(chars[1])+1;
	      var clone = row.cloneNode(true);
	      console.log(clone);
	      var rowId='row.'+maxRowNum;
	      var curRowId=Number(nofRows)-2;
	      clone.id = rowId;
	      clone.cells[0].innerHtml='<input type="text" class="form-control" name="ppname" id="ppname">';
	      clone.cells[1].innerHtml='<input type="text" class="form-control" name="ppaddress" id="ppaddress">';
	      clone.cells[2].innerHtml='<input type="text" class="form-control" name="levelOfInvolvement" id="levelOfInvolvement">';
	      clone.cells[0].id='ppname'+maxRowNum;
	      clone.cells[1].id='ppaddress'+maxRowNum;
	      clone.cells[2].id='levelOfInvolvement'+maxRowNum;
	      clone.cells[0].name='ppname'+maxRowNum;
	      clone.cells[1].name='ppaddress'+maxRowNum;
	      clone.cells[2].name='levelOfInvolvement'+maxRowNum;
	      var temp=clone.querySelector('img').id;
	      table.rows[Number(nofRows)-1].querySelector('img').src='../images/icon_min.png';
	      table.rows[Number(nofRows)-1].querySelector('img').onclick=function(){deleteRow(this,'primaryCarePartnerTable');};
	     /*  clone.cells[0].querySelector('input').value="";
	      clone.cells[1].querySelector('input').value="";
	      clone.cells[2].querySelector('input').value="";
	      clone.cells[3].querySelector('input').value="";
	      clone.cells[4].querySelector('input').value="";
	      clone.cells[5].querySelector('input').value=""; */
	      table.appendChild(clone);
	      
	      return false; 
    }else{
    		alert("You cannot add more than 30 rows.");
     return false;
    }
  }
  
  function cloneRowPatientHousemates() {
	  var table = document.getElementById("housematesTable");
	  var nofRows= table.rows.length;
	  if(Number(nofRows)-1<30){
	  	  var prevRowId=Number(nofRows)-1;
	      var row = table.rows[Number(nofRows)-1];
	      var maxRowId=row.id;
	      var chars=maxRowId.split('.');
	      var maxRowNum=Number(chars[1])+1;
	      var clone = row.cloneNode(true);
	      var rowId='row.'+maxRowNum;
	      var curRowId=Number(nofRows)-2;
	      clone.id = rowId;
	      clone.cells[0].innerHtml='<input type="text" class="form-control" name="name" id="name">';
	      clone.cells[1].innerHtml='<input type="text" class="form-control" name="relation" id="relation">';
	      clone.cells[2].innerHtml='<input type="text" class="form-control" name="contactDetails" id="contactDetails">';
	      clone.cells[0].id='name'+maxRowNum;
	      clone.cells[1].id='relation'+maxRowNum;
	      clone.cells[2].id='contactDetails'+maxRowNum;
	      clone.cells[0].name='name'+maxRowNum;
	      clone.cells[1].name='relation'+maxRowNum;
	      clone.cells[2].name='contactDetails'+maxRowNum;
	      var temp=clone.querySelector('img').id;
	      table.rows[Number(nofRows)-1].querySelector('img').src='/images/icon_min.png';
	      table.rows[Number(nofRows)-1].querySelector('img').onclick=function(){deleteRow(this,'housematesTable');};
	     /*  clone.cells[0].querySelector('input').value="";
	      clone.cells[1].querySelector('input').value="";
	      clone.cells[2].querySelector('input').value="";
	      clone.cells[3].querySelector('input').value="";
	      clone.cells[4].querySelector('input').value="";
	      clone.cells[5].querySelector('input').value=""; */
	      table.appendChild(clone);
	      
	      return false; 
    }else{
    		alert("You cannot add more than 30 rows.");
     return false;
    }
  }
  
  function cloneRowPatientDependents() {
	  var table = document.getElementById("dependentsTable");
	  var nofRows= table.rows.length;
	  if(Number(nofRows)-1<30){
	  	  var prevRowId=Number(nofRows)-1;
	      var row = table.rows[Number(nofRows)-1];
	      var maxRowId=row.id;
	      var chars=maxRowId.split('.');
	      var maxRowNum=Number(chars[1])+1;
	      var clone = row.cloneNode(true);
	      var rowId='row.'+maxRowNum;
	      var curRowId=Number(nofRows)-2;
	      clone.id = rowId;
	      clone.cells[0].innerHtml='<input type="text" class="form-control" name="dname" id="dname">';
	      clone.cells[1].innerHtml='<input type="text" class="form-control" name="drelation" id="drelation">';
	      clone.cells[2].innerHtml='<input type="text" class="form-control" name="dcontactDetails" id="dcontactDetails">';
	      clone.cells[0].id='dname'+maxRowNum;
	      clone.cells[1].id='drelation'+maxRowNum;
	      clone.cells[2].id='dcontactDetails'+maxRowNum;
	      clone.cells[0].name='dname'+maxRowNum;
	      clone.cells[1].name='drelation'+maxRowNum;
	      clone.cells[2].name='dcontactDetails'+maxRowNum;
	      var temp=clone.querySelector('img').id;
	      table.rows[Number(nofRows)-1].querySelector('img').src='/images/icon_min.png';
	      table.rows[Number(nofRows)-1].querySelector('img').onclick=function(){deleteRow(this,'dependentsTable');};
	     /*  clone.cells[0].querySelector('input').value="";
	      clone.cells[1].querySelector('input').value="";
	      clone.cells[2].querySelector('input').value="";
	      clone.cells[3].querySelector('input').value="";
	      clone.cells[4].querySelector('input').value="";
	      clone.cells[5].querySelector('input').value=""; */
	      table.appendChild(clone);
	      
	      return false; 
    }else{
    		alert("You cannot add more than 30 rows.");
     return false;
    }
  }

function saveTheData(){
var totalTableValue=null;
var tableId=document.getElementById("CustInfoTable");
if(tableId!=null){
var tableSize= tableId.rows.length;
var temp=tableId.rows[1].cells[0].firstChild.value;
console.log("table size :"+tableSize);

	 for (var r = 1; r < tableSize; r++) {
	 var rowId=tableId.rows[r].id;
	 		/* var rowValue=null; */
	 		var compName=tableId.rows[r].cells[0].querySelector("input").value;
	 		compName=(compName==null || compName=='' ) ? '9o9o9o' : compName;  
	 		var industry=tableId.rows[r].cells[1].querySelector("select").value;
	 		industry=(industry==null || industry=='') ? '9o9o9o' : industry;
	 		var website=tableId.rows[r].cells[2].querySelector("input").value;
	 		website=(website==null || website=='')? '9o9o9o' : website;
	 		if(compName==='9o9o9o' && industry==='9o9o9o' && website==='9o9o9o'){
	 		console.log("row "+r+" is an empty row");
	 		}else{
    		/* rowValue=compName+'----'+industry+'----'+website;
    		console.log("row "+r+" value :"+rowValue); */
			if(r == 1)
				totalTableValue=rowId;
			else 
				totalTableValue=totalTableValue+':::::'+rowId;
			console.log("TotalTable value untill  "+r+" row :"+totalTableValue);
			}

}
/* if(totalTableValue==null||totalTableValue==''){
alert('Please provide Customer Information');
return false;} */
}
}

</script>
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:include page="AdminMenubar.jsp"></jsp:include>
<form action="../generalInfoServlet" name="generalInfo" id="generalInfo" method="post">

<section id="menu-area">
	<div class="container">
		<div class="modal-dialog wow zoomIn" style="margin-bottom:100px">
	<div id="login-content" class="modal-content" style="width:auto; ">
	<div class="modal-header">
<p><h1>General Information</h1></p>
</div>
<div class="modal-body">
<p><h4>Patient Personal Details:</h4>
<table>
	<%if(request.getParameter("msg")=="1"){ %>
		<h4 style="color: green">Registration Successful</h4>
	<%} %>
	<tr>
		<th>Name:</th>
		<td><input type="text" name="patientName" id="patientName"></td>
	</tr>
	<tr>
		<th>Name I like to be called:</th>
		<td><input type="text" name="nickName" id="nickName"></td>
	</tr>
	<tr>
		<th>Address(Where I live):</th>
		<td><input type="text" name="address" id="address"></td>
	</tr>
	<tr>
		<th>Date of Birth:</th>
		<td><input type="date" name="dob" id="dob"></td>
	</tr>
	<tr>
		<th>Phone number:</th>
		<td><input type="text" name="phoneNum" id="phoneNum"></td>
	</tr>
	<tr>
		<th>Email Id:</th>
		<td><input type="text" name="email" id="email"></td>
	</tr>
</table>
<br>
<table>
	<tr>
		<th colspan="2" style="text-align:left">Login Information:</th>
	</tr>
	<tr>
		<th>User Name:</th>
		<td><input type="text" name="uName" id="uName"></td>
	</tr>
	<tr>
		<th>Password:</th>
		<td><input type="password" id="password" name="password"></td>
	</tr>
	<tr>
		<th>Re-enter Password:</th>
		<td><input type="password" id="rePassword" name="rePassword"></td>
	</tr>
	<%if(request.getParameter("msg")=="2"){ %>
	<tr>
		<td colspan="2" style="text-align:left">
		<h4 style="color: red">Passwords donot match</h4>
		</td>
	</tr>
	<%} %>
</table>
<br>
<div>
	<p><h3>Important People in my life:</h3></p>
	<br>
	<table id="primaryCarePartnerTable" border="1">
		<tr>
			<th colspan="4">My Primary Care Partner(s):</th>
		</tr>
		<tr>
		<th>Name:</th>
		<th>Address:</th>
		<th>Level of Involvment in my case:</th>
		<th>Add/Delete Row</th>
		</tr>
		<tr>
			<td><input type="text" name="pcpName" id="pcpName"></td>
			<td><input type="text" name="pcpAddress" id="pcpAddress"></td>
			<td><input type="text" name="pcpInvolvment" id="pcpInvolvment"></td>
			<td><img alt="" src="../images/icon_plus.png" onclick="cloneRowPrimaryCarePartner();" align="middle"></td>
	</table>
</div>
<br>
<table id="housematesTable" border="1">
	<tr>
		<th colspan="4">People who live with me:</th>
	</tr>
	<tr>
		<th>Name</th>
		<th>Relation</th>
		<th>Contact Details</th>
		<th>Add/Delete Row</th>
	</tr>
	<tr>
		<td><input type="text" name="relativeName" id="relativeName"></td>
		<td><input type="text" name="relativeRelation" id="relativeRelation"></td>
		<td><input type="text" name="relativeContact" id="relativeContact"></td>
		<td><img alt="" src="../images/icon_plus.png" onclick="cloneRowPatientHousemates();"></td>
		<td></td>
	</tr>
</table>
<br>
<table id="dependentsTable" border="1">
	<tr>
		<th colspan="4">People who depend on me:</th>
	</tr>
	<tr>
		<th>Name</th>
		<th>Relation</th>
		<th>Contact Details</th>
		<th>Add/Delete Row</th>
	</tr>
	<tr>
		<td><input type="text" name="dependentName" id="dependentName"></td>
		<td><input type="text" name="dependentRelation" id="dependentRelation"></td>
		<td><input type="text" name="dependentContact" id="dependentContact"></td>
		<td><img alt="" src="../images/icon_plus.png" onclick="cloneRowPatientDependents();"></td>
		<td></td>
	</tr>
</table>
<br>
<table>
	<tr>
		<td><input type="submit" id="submitGeneralInfo" name="submitGeneralInfo" value="Submit"></td>
	</tr>
</table>
</div>
</div>
	</div>
	</div>
	</section>
</form>
</body>
</html>