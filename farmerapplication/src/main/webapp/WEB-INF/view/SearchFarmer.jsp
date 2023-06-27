<%@page import="com.jspiders.farmerapplication.POJO.FarmerPOJO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="NavBar.jsp" />
<%
FarmerPOJO pojo = (FarmerPOJO) request.getAttribute("farmer");
String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Farmer Page</title>
</head>
<style>
body {
	background-image:
		url(https://cdn.pixabay.com/photo/2018/12/29/06/55/farmer-3900957_1280.jpg);
	background-repeat: no-repeat;
	background-size: 100%;
	background-color: bisque;
	align-items: center;
	align-content: center;
}

fieldset {
	margin: 15px 520px;
	text-align: center;
	border: 1px;
	width: 20px;
	box-shadow: 10px 10px 10px 10px black;
	color: black;
	margin-left: 120px;
	background-color: pink;
	align-content: center;
	align-items: center;
	margin-right: 40px;
}

#b1 {
	background-color: violet;
}

th {
	border: 2px solid;
	color: black;
	justify-content: evenly;
	background-color: yellow;
}

td {
	border: 2px solid;
	color: black;
	justify-content: evenly;
	background-color: pink;
}

.b1 {
	background-color: rgb(15, 127, 161);;
	border: 2px solid black;
	box-shadow: 1px 1px 1px 1px green;
	color: black;
}
</style>
<body id="b1">
	<marquee behavior="" direction="" bgcolor="bisque" id="m1">
		<h1>Welcome To Search Page from Farmer Application</h1>
	</marquee>
	<div align="center">
		<form action="./search" method="post">
			<fieldset>
				<legend>Search Farmer Details</legend>
				<table>
					<tr>
						<td>Enter ID</td>
						<td><input type="text" name="id"></td>
					</tr>
				</table>
				<br> <input type="submit" value="SEARCH" class="b1">
			</fieldset>

		</form>
		<%
		if (msg != null) {
		%>
		<h4><%=msg%>
		</h4>
		<%
		}
		%>
		<%
		if (pojo != null) {
		%>
		<table>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Address</th>
				<th>Gender</th>
				<th>Age</th>
				<th>Income</th>
				<th>Members</th>
				<th>Cast</th>
				<th>D.O.B</th>
				<th>Total Farm</th>
				<th>Otrzymane</th>
			</tr>
			<tr>
				<td><%=pojo.getId()%></td>
				<td><%=pojo.getName()%></td>
				<td><%=pojo.getEmail()%></td>
				<td><%=pojo.getMobile()%></td>
				<td><%=pojo.getAddress()%></td>
				<td><%=pojo.getGender()%></td>
				<td><%=pojo.getAge()%></td>
				<td><%=pojo.getIncome()%></td>
				<td><%=pojo.getFamilymember()%></td>
				<td><%=pojo.getCast()%></td>
				<td><%=pojo.getDOB()%></td>
				<td><%=pojo.getTotalFarm()%></td>
				<td><%=pojo.getOtrzymane()%></td>
			</tr>
		</table>
		<%
		}
		%>
	</div>
</body>
</html>