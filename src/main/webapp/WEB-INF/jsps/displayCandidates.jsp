<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="webjars/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Candidates</title>
</head>
<body>
	<div class="container">
		<div style="background: transparent !important" class="jumbotron">
			<h1 class="font-weight-bolder">Candidates:</h1>
			<table class="table table-striped">
				<tr>
					<th>id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>E-mail</th>
					<th>Phone</th>
					<th>Job title:</th>
					<th>Date</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>

				<c:forEach items="${candidates}" var="candidate">
					<tr>
						<td>${candidate.id}</td>
						<td>${candidate.firstName}</td>
						<td>${candidate.lastName}</td>
						<td>${candidate.email}</td>
						<td>${candidate.phone}</td>
						<td>${candidate.jobTitle}</td>
						<td>${candidate.startDate}</td>
						<td><a href="deleteCandidate?id=${candidate.id}">delete</a></td>
						<td><a href="showUpdate?id=${candidate.id}">edit</a></td>
					</tr>
				</c:forEach>
			</table>
			<a href="showCreate">Apply</a>
		</div>
	</div>
</body>
</html>