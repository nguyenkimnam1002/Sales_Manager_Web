<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Sales Management</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Khoi xu ly click linking toi request moi -->
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">NoteArena Property</a>
			</div>
			<ul class="nav navbar-nav">
				<!-- Cac khoi Request -->
				<li class="active"><a href="<c:url value="/dashboard" />">Dashboard</a></li>
				<li><a href="<c:url value="/home" />">Home</a></li>
				<li><a href="<c:url value="/spring-mvc" />">Spring Blog</a></li>
				<li><a href="<c:url value="/addCustomer" />">Add Customer</a></li>
			</ul>
		</div>
	</nav>
	<div style="width: 600px; margin: auto;">
		<h3 align="center">
			<b>Dashboard: Sales Management System</b>
		</h3>
		<form:form class="form-horizontal" role="form" action="dashboard" modelAttribute="customerObject">
			<div class="form-group">
				<h2>Welcome to Sales management system</h2>
			</div>
		</form:form>
	</div>

</body>
</html>