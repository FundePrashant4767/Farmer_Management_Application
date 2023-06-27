<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="NavBar.jsp" />
<%
String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Farmer Page</title>
<style>
body {
	background-color: violet;
	background-image:
		url(https://cdn.pixabay.com/photo/2020/06/29/13/10/cornflowers-5352633_1280.jpg);
	background-repeat: no-repeat;
	background-size: 100%;
	background-color: bisque;
	align-items: center;
	align-content: center;
}

fieldset {
	width: 400px;
	border: 2px;
	box-shadow: 10px 10px 10px 10px black;
	color: black;
	margin-left: 120px;
	background-color: pink;
	margin-right: 40px;
}
.b1{
background-color: rgb(15, 127, 161);;
	border: 2px solid black;
	box-shadow: 1px 1px 1px 1px green;
	color: black;
}
</style>
</head>
<body>
	<marquee behavior="" direction="" bgcolor="bisque">
		<h1>Welcome to Add Page Of Farmer Management Application</h1>
	</marquee>
	<div align="center">
		<form action="./add" method="post" id="form">
			<fieldset>
				<legend>Add Farmer Details</legend>
				<table>
					<tr>
						<td>Name :</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>Email :</td>
						<td><input type="email" name="email"></td>
					</tr>
					<tr>
						<td>Mobile :</td>
						<td><input type="text" name="mobile"></td>
					</tr>
					<tr>
						<td>Age :</td>
						<td><input type="number" name="age"></td>
					</tr>
					<tr>
						<td>Gender:</td>
						<td><input type="text" name="gender"></td>
					</tr>
					<tr>
						<td>Total Income :</td>
						<td><input type="number" name="income"></td>
					</tr>
					<tr>
						<td>Family Members : :</td>
						<td><input type="number" name="familymember"></td>
					</tr>
					<tr>
						<td>Select Cast :</td>
						<td><select name="cast" id="">

								<option value="" disabled selected>Select</option>
								<OPtion>OPEN</OPtion>
								<option>OBC</option>
								<Option>SC</Option>
								<Option>ST</Option>
								<Option>NT-B</Option>
								<option>NT-C</option>
								<option>NT-D</option>
								<option>OTHER</option>
						</select></td>
					</tr>
					<tr>
						<td>Birth Date :</td>
						<td><input type="date" name="DOB"></td>
					</tr>
					<tr>
						<td>Address</td>
						<td><input type="text" name="address"></td>
					</tr>


					<tr>
						<td>Total Farm :</td>
						<td><input type="number" name="totalFarm"></td>
					</tr>
					<tr>
						<td>Otrzymane Plany :</td>
						<td><input type="text" name="otrzymane"></td>
					</tr>
				</table>
				<br> <input type="submit" value="SUBMIT" class="b1">
				<input type="reset" value="CANCEL" class="b1">
			</fieldset>


		</form>

		<%
		if (msg != null) {
		%>
		<h3><%=msg%></h3>
		<%
		}
		%>
	</div>
</body>
</html>