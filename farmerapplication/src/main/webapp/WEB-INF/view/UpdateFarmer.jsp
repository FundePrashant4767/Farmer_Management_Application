
<%@page import="java.util.List"%>
<%@page import="com.jspiders.farmerapplication.POJO.FarmerPOJO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="NavBar.jsp" />
<%
String msg = (String) request.getAttribute("msg");
FarmerPOJO farmer = (FarmerPOJO) request.getAttribute("farmer");
List<FarmerPOJO> farmers = (List<FarmerPOJO>) request.getAttribute("farmers");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<style type="text/css">
body {
	background-color: violet;
	background-image:
		url(https://cdn.pixabay.com/photo/2020/02/18/06/25/grain-4858574_1280.jpg);
	background-repeat: no-repeat;
	background-size: 100%;
	align-items: center;
	align-content: center;
}

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

.b1 {
	background-color: rgb(15, 127, 161);;
	border: 2px solid black;
	box-shadow: 1px 1px 1px 1px green;
	color: black;
}
</style>
</head>
<body id="b1">
	<marquee behavior="" direction="" bgcolor="bisque">
		<h1>Welcome to Update Page Of Farmer Management Application</h1>
	</marquee>
	<div align="center">
		<%
		if (farmer == null) {
		%>
		<form action="./update" method="post">
			<fieldset>
				<legend>Select Farmer </legend>
				<table>
					<tr>
						<td>Enter ID :</td>
						<td><input type="text" name="id"></td>
					</tr>
				</table>
				<br> <input type="submit" value="SELECT" class="b1">
			</fieldset>

		</form>
		<%
		if (msg != null) {
		%>
		<h4><%=msg%></h4>
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
			}
			%>
		</table>
		<%
		} else if (farmer != null) {
		%>
		<form action="./updateData" method="post">
			<fieldset>
				<legend>Update Farmer Details</legend>
				<table>
					<tr hidden="true">
						<td>ID</td>
						<td><input type="text" name="id" value="<%=farmer.getId()%>"></td>
					</tr>
					<tr>
						<td>Name</td>
						<td><input type="text" name="name"
							value="<%=farmer.getName()%>"></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><input type="text" name="email"
							value="<%=farmer.getEmail()%>"></td>
					</tr>
					<tr>
						<td>Mobile</td>
						<td><input type="text" name="mobile"
							value="<%=farmer.getMobile()%>"></td>
					</tr>
					<tr>
						<td>Address</td>
						<td><input type="text" name="address"
							value="<%=farmer.getAddress()%>"></td>
					</tr>
					<tr>
						<td>Gender</td>
						<td><input type="text" name="gender"
							value="<%=farmer.getGender()%>"></td>
					</tr>
					<tr>
						<td>Age</td>
						<td><input type="text" name="age"
							value="<%=farmer.getAge()%>"></td>
					</tr>
					<tr>
						<td>Income</td>
						<td><input type="text" name="income"
							value="<%=farmer.getIncome()%>"></td>
					</tr>
					<tr>
						<td>Members</td>
						<td><input type="text" name="familymember"
							value="<%=farmer.getFamilymember()%>"></td>
					</tr>
					<tr>
						<td>Cast</td>
						<td><input type="text" name="cast"
							value="<%=farmer.getCast()%>"></td>
					</tr>
					<tr>
						<td>D.O.B</td>
						<td><input type="text" name="DOB"
							value="<%=farmer.getDOB()%>"></td>
					</tr>
					<tr>
						<td>Total Farm</td>
						<td><input type="text" name="totalFarm"
							value="<%=farmer.getTotalFarm()%>"></td>
					</tr>
					<tr>
						<td>Otrzymane</td>
						<td><input type="text" name="otrzymane"
							value="<%=farmer.getOtrzymane()%>"></td>
					</tr>
				</table>
				<br> <input type="submit" value="UPDATE" class="b1">
			</fieldset>

		</form>
		<%
		}
		%>

	</div>
</body>
</html>