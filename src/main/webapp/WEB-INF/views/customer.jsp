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
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
	.dropbtn {
	  background-color: #f1f1f1;
	  color: white;
	  padding: 16px;
	  font-size: 16px;
	  border: none;
	}
	
	.dropdown {
	  position: relative;
	  display: inline-block;
	}
	
	.dropdown-content {
	  display: none;
	  position: absolute;
	  /*background-color: #3e8e41;*/
	  background-color: #f1f1f1;
	  min-width: 160px;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	}
	
	.dropdown-content a {
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	}
	
	/*.dropdown-content a:hover {background-color: #ddd;}*/
	.dropdown-content a:hover {background-color: #3e8e41;}
	
	.dropdown:hover .dropdown-content {display: block;}
	
	.dropdown:hover .dropbtn {background-color: #f1f1f1;}
	</style>
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
				<li class="active"><a href="<c:url value="/trang-chu" />">Dashboard</a></li>
				<li><a href="<c:url value="/home" />">Home</a></li>
				<li><a href="<c:url value="/spring-mvc" />">Spring Blog</a></li>
				<li><a href="<c:url value="/addCustomer" />">Add Customer</a></li>
				<li><div class="dropdown">
					<button class="dropbtn">Menu</button>
					<div class="dropdown-content">
					  <a href="<c:url value="/home" />">Home</a>
					  <a href="<c:url value="/spring-mvc" />">Spring Blog</a>
					  <a href="<c:url value="/spring-mvc" />">Spring Blog</a>
				    </div>
				</div></li>
			</ul>
			<!-- <div class="dropdown">
			  <button class="dropbtn">Menu</button>
			  <div class="dropdown-content">
			    <a href="<c:url value="/home" />">Home</a>
			    <a href="<c:url value="/spring-mvc" />">Spring Blog</a>
			    <a href="<c:url value="/spring-mvc" />">Spring Blog</a>
		      </div>
			</div> -->
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