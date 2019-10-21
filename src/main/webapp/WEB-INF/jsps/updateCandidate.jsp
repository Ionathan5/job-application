<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Apply</title>
</head>
<body>

	<form action="updateCand" method="post">
		<pre>
Id: <input type="text" name="id" value="${candidate.id}" readonly />
First Name: <input type="text" name="firstName"
				value="${candidate.firstName}" />
Last Name: <input type="text" name="lastName"
				value="${candidate.lastName}" />
Email: <input type="text" name="email" value="${candidate.email}" />
Phone: <input type="text" name="phone" value="${candidate.phone}" />
Position: <input type="text" name="jobTitle"
				value="${candidate.jobTitle}" />
Start Date <input type="text" name="startDate"
				value="${candidate.startDate}" />
<input type="submit" value="save" value="$-{}" />
</pre>
	</form>
</body>
</html>