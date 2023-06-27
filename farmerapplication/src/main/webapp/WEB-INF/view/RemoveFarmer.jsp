<%@page import="com.jspiders.farmerapplication.POJO.FarmerPOJO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="NavBar.jsp" />
<%
String msg = (String) request.getAttribute("msg");
%>
<%
List<FarmerPOJO> farmers = (List<FarmerPOJO>) request.getAttribute("farmers");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Remove Farmer Page</title>
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
	width: 20px;
	box-shadow: 10px 10px 10px 10px black;
	color: black;
	margin-left: 120px;
	background-color: pink;
	align-content: center;
	align-items: center;
	margin-right: 40px;
}

legend {
	color: white;
	background-color: #333;
}

body {
	background-image:
		url(https://cdn.pixabay.com/photo/2019/04/18/07/49/tea-4136332_1280.jpg);
	background-repeat: no-repeat;
	background-size: 100%;
	background-color: bisque;
	align-items: center;
	align-content: center;
}

#data {
	background-color: white;
	border: 1px solid black;
	width: 100%;
	border: 1px solid black;
}

#data td {
	border: 1px solid black;
	text-align: center;
}

th {
	background-color: yellow;
}

td {
	background-color: pink;
}

#m1 {
	height: 5px solid;
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
	<marquee behavior="" direction="" bgcolor="bisque" id="m1">
		<h1>Welcome To Remove Page from Farmer Application</h1>
	</marquee>
	<div align="center" style="size: 500pc;">
		<form action="./remove" method="post">
			<fieldset>
				<legend>Remove Farmer Data</legend>
				<table>
					<tr>
						<td>Enter ID</td>
						<td><input type="text" name="id"></td>
					</tr>
				</table>
				<br> <input type="submit" value="REMOVE" class="b1">
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
		if (farmers != null) {
		%>
		<table id="data">
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
			<%
			for (FarmerPOJO pojo : farmers) {
			%>
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
			<%
			}
			%>
		</table>
		<%
		}
		%>
	</div>
</body>
</html>