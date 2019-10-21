<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Apply</title>
<link
	href="https://unpkg.com/bootstrap@4.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet" />
</head>
<body>

	<form action="saveCand" method="post">
		<pre>
First Name* <input type="text" name="firstName" />
Last Name*<input type="text" name="lastName" />
Email* <input type="text" name="email" />
Phone* <input type="text" name="phone" />
Position* <input type="text" name="jobTitle" />
Start Date* <input type="text" name="startDate" />
<input type="submit" value="save" />
</pre>
	</form>
	${msg}

	<a href="displayCandidates">View All</a>

</body>
</html>