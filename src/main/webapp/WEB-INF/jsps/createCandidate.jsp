<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="webjars/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="container">
		<div style="background: transparent !important" class="jumbotron">
			<h1 class="font-weight-bolder">Apply</h1>
			<form:form class="form-group" action="saveCand" method="post"
				modelAttribute="candidate">
				<label for="firstName">First Name:</label>
				<form:input class="form-control" type="text" name="firstName"
					path="firstName" placeholder="ex: John" />
				<form:errors class="text-danger" path="firstName" />
				<br />
				<label for="lastName">Last Name:</label>
				<form:input class="form-control" type="text" name="lastName"
					path="lastName" placeholder="ex: Doe" />
				<form:errors class="text-danger" path="lastName" />
				<br />
				<label for="email">Email:</label>
				<form:input class="form-control" type="text" name="email"
					path="email" placeholder="name@example.com" />
				<form:errors class="text-danger" path="email" />
				<br />
				<label for="phone">Phone</label>
				<form:input class="form-control" type="text" name="phone"
					path="phone" placeholder="ex: 0758365065" />
				<form:errors class="text-danger" path="phone" />
				<br />
				<label for="jobTitle">Job title:</label>
				<form:input class="form-control" type="text" name="jobTitle"
					path="jobTitle" placeholder="ex: Java Developer" />
				<form:errors class="text-danger" path="jobTitle" />
				<br />
				<label for="startDate">Start date:</label>
				<form:input class="form-control" type="date" name="startDate"
					path="startDate" id="example-date-input" placeholder="YYYY-MM-DD" />
				<form:errors class="text-danger" path="startDate" />
				<br />
				<button type="submit" class="btn btn-primary">Apply</button>
			</form:form>
			${msg} <a href="displayCandidates">View All</a>
		</div>
	</div>
</body>
</html>