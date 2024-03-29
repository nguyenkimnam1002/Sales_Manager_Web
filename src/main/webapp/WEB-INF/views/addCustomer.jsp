<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sales Management System</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Blog NamNK</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="<c:url value="/home" />">Home</a></li>
				<li><a href="<c:url value="/spring-mvc" />">Spring MVC menu</a></li>
				<li><a href="<c:url value="/addCustomer" />">Add Customer</a></li>
			</ul>
		</div>
	</nav>
	<div style="width: 600px; margin: auto;">
	<h3 align="center"><b>Add a new customer</b></h3>
	<form:form class="form-horizontal" role="form" action="showCustomer" modelAttribute="customerObject">
		<div class="form-group">
			<label class="control-label col-sm-2" for="name">Customer Name:</label>
			<div class="col-sm-10">
			<form:input path="name" value="" type="text" class="form-control" placeholder="Customer Name"/>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="form-group">
			<label class="control-label col-sm-4" for="age">Age :</label>
			<div class="col-sm-8"> 
			<form:input path="age" type="text" class="form-control" placeholder="Age"/>
			</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-4" for="education">Education:</label>
			<div class="col-sm-8"> 
			<form:input path="education" type="text" class="form-control" placeholder="Education"/>
			</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="form-group">
			<label class="control-label col-sm-4" for="address">Address:</label>
			<div class="col-sm-8"> 
			<form:textarea path="address" type="text" rows="5" cols="30" class="form-control" value="" placeholder="Address"/>
			</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-4" for="designation">Designation:</label>
			<div class="col-sm-8">
			<form:input type="text" class="form-control" path="designation" value="" placeholder="Designation" />
			</div>
			</div>
		</div>
		<div class="form-group"> 
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Submit</button>
			</div>
		</div>
	</form:form>
	</div>

</body>
</html>