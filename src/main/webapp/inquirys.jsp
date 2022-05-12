<%@page import="com.Inquiry"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inquiry Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/inquiry.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Inquiry Management</h1>
				<form id="formInquiry" name="formInquiry" method="post" action="inquirys.jsp">
					Inquiry Type: 
					<input id="inquiryType" name="inquiryType" type="text"
						class="form-control form-control-sm"> <br> 
					Inquiry Email:
					<input id="inquiryEmail" name="inquiryEmail" type="text"
						class="form-control form-control-sm"> <br> 
					Inquiry Name: 
					<input id="inquiryName" name="inquiryName" type="text"
						class="form-control form-control-sm"> <br> 
					Inquiry Message: 
					<input id="inquiryMsg" name="inquiryMsg" type="text"
						class="form-control form-control-sm"> <br> 
					<input id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidInquiryIDSave" name="hidInquiryIDSave" value="">
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>
				<div id="divInquiryGrid">
					<%
					Inquiry inquiryObj = new Inquiry();
					out.print(inquiryObj.readInquirys());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>