<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update</title>
</head>
<body>

	<form:form action="updateCand" method="post" modelAttribute="candidate">
		<table>
			<tr>
				<td>ID:</td>
				<td><input type="text" name="id" value="${candidate.id}" readonly/>
				<td />
			<tr />

			<tr>
				<td>First Name:</td>
				<td><form:input type="text" name="firstName"
					value="${candidate.firstName}" path="firstName"/>
				<td><form:errors path="firstName" />
				<td />
				<td />
			<tr />
			<tr>
				<td>Last Name:</td>
				<td><form:input type="text" name="lastName"
					value="${candidate.lastName}" path="lastName"/>
				<td><form:errors path="lastName" />
				<td />
				<td />
			<tr />
			<tr>
				<td>Email:</td>
				<td><form:input type="text" name="email" value="${candidate.email}" path="email"/>
				<td><form:errors path="email" />
				<td />
				<td />
			<tr />
			<tr>
				<td>Phone:</td>
				<td><form:input type="text" name="phone" value="${candidate.phone}" path="phone" />
				<td><form:errors path="phone" />
				<td />
				<td />
			<tr />
			<tr>
				<td>Position:</td>
				<td><form:input type="text" name="jobTitle"
					value="${candidate.jobTitle}" path="jobTitle" />
				<td><form:errors path="jobTitle" />
				<td />
				<td />
			<tr />
			<tr>
				<td>Date:</td>
				<td><form:input type="text" name="startDate"
					value="${candidate.startDate}" path="startDate"/>
				<td><form:errors path="startDate" />
				<td />
				<td />
			<tr />
			<tr>
				<td><input type="submit" value="save" value="$-{}" />
			<tr />
		</table>
	</form:form>
</body>
</html>