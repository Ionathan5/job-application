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
<title>Update</title>
</head>
<body>
	<div class="container">
		<div style="background: transparent !important" class="jumbotron">
		<h1 class="font-weight-bolder">Candidate update</h1>
			<form:form  class="form-group" action="updateCand" method="post"
				modelAttribute="candidate">
				<label for="id">ID:</label>
				<input class="form-control" type="text" id="disabledInput" name="id" value="${candidate.id}" readonly />
				<br />
				<label for="firstName">First Name:</label>
				<form:input class="form-control" type="text" name="firstName"
					value="${candidate.firstName}" path="firstName" />
				<form:errors class="text-danger" path="firstName" />
				<br />
				<label for="lastName">Last Name:</label>
				<form:input class="form-control" type="text" name="lastName"
					value="${candidate.lastName}" path="lastName" />
				<form:errors class="text-danger" path="lastName" />
				<br />
				<label for="email">Email:</label>
				<form:input class="form-control" type="text" name="email" value="${candidate.email}"
					path="email" />
				<form:errors class="text-danger" path="email" />
				<br />
				<label for="phone">Phone:</label>
				<form:input class="form-control" type="text" name="phone" value="${candidate.phone}"
					path="phone" />
				<form:errors class="text-danger" path="phone" />
				<br />
				<label for="jobTitle">JobTitle:</label>
				<form:input class="form-control" type="text" name="jobTitle"
					value="${candidate.jobTitle}" path="jobTitle" />
				<form:errors class="text-danger" path="jobTitle" />
				<br />
				<label for="startDate">Start Date:</label>
				<form:input class="form-control" type="date" id="example-date-input" name="startDate"
					value="${candidate.startDate}" path="startDate" />
				<form:errors class="text-danger" path="startDate" />
				<br />
				<input class="btn btn-primary" type="submit" value="save"
					value="$-{}" />
				<br />
			</form:form>
		</div>
	</div>
</body>
</html>