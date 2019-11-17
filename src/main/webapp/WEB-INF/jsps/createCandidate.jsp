<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Apply</title>
</head>
<body>

	<form action="saveCand" method="post">
		<pre>
First Name:    <input type="text" name="firstName" />
<br/>
Last Name:     <input type="text" name="lastName" />
<br/>
Email:         <input type="text" name="email" />
<br/>
Phone:         <input type="text" name="phone" />
<br/>
Position:      <input type="text" name="jobTitle" />
<br/>
Start Date     <input type="text" name="startDate" />
<br/>
<input type="submit" value="save" />
</pre>
	</form>
	${msg}

	<a href="displayCandidates">View All</a>

</body>
</html>