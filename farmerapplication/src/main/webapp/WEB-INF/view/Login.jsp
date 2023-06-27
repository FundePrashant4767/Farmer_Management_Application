<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style type="text/css">
form {
	margin-top: 10px;
}

form table {
	margin: auto;
	width: 100%;
}

tr {
	text-align: center;
}

fieldset table {
	margin: auto;
	text-align: left;
}

fieldset {
	margin: 15px 520px;
	text-align: center;
	border: 1px;
	width: 50px;
	box-shadow: 10px 10px 10px 10px black;
	color: black;
	margin-left: 120px;
	background-color: pink;
	align-content: center;
	align-items: center;
	margin-right: 40px;
	align-content: center;
	align-items: center;
	margin-top: 130px;
}

legend {
	color: white;
	background-color: #333;
}

body {
	background-image:
		url(https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_1280.jpg);
	background-size: 100%;
	background-repeat: no-repeat;
	align-items: center;
	align-content: center;
}
.b1 {
	background-color: rgb(15, 127, 161);;
	border: 2px solid black;
	box-shadow: 1px 1px 1px 1px green;
	color: black;
}
</style>
</head>
<body>
	<div align="center">
		<form action="./login" method="post">
			<fieldset>
				<legend>Login to proceed</legend>
				<table>
					<tr>
						<td>Username</td>
						<td><input type="text" name="username"></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="password"></td>
					</tr>
				</table><br>
				<input type="submit" value="LOGIN" class="b1">
				<br>
				<a href="./createAdmin">Create new account</a>
			</fieldset>
			
		</form>
		
		<%
		if (msg != null) {
		%>
		<h4><%=msg%></h4>
		<%
		}
		%>
	</div>
</body>
</html>