<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
        rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Apply</title>
</head>
<body>
<h1>Apply</h1>

	<form:form class="form-group" action="saveCand" method="post" modelAttribute="candidate">
		<table>
			<tr>
				<td>First Name:</td>
				<td><form:input type="text" name="firstName" path="firstName" />
				<td><form:errors path="firstName" /><td />
				<td />
			<tr />
			<tr>
				<td>Last name:</td>
				<td><form:input type="text" name="lastName" path="lastName" />
				<td><form:errors path="lastName" /><td />
				<td />
			<tr />
			<tr>
				<td>Email:</td>
				<td><form:input type="text" name="email" path="email" />
				<td><form:errors path="email" /><td />
				<td />
			<tr />
			<tr>
				<td>Phone:</td>
				<td><form:input type="text" name="phone" path="phone" />
				<td><form:errors path="phone" /><td />
				<td />
			<tr />
			<tr>
				<td>Position:</td>
				<td><form:input type="text" name="jobTitle" path="jobTitle" />
				<td><form:errors path="jobTitle" /><td />
				<td />
			<tr />
			<tr>
				<td>Date:</td>
				<td><form:input type="text" name="startDate" path="startDate" />
				<td><form:errors path="startDate" /><td />
				<td />
			<tr />
			<tr>

				<td><input type="button" class="btn btn-success" value="save" />
			<tr />
		</table>
	</form:form>
	${msg}

	<a href="displayCandidates">View All</a>

</body>
</html>