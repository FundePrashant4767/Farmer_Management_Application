<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style type="text/css">
fieldset table {
	margin: auto;
	text-align: left;
}

fieldset {
	margin: 15px 520px;
	text-align: center;
}

legend {
	color: white;
	background-color: #333;
}

ul {
	list-style-type: none;
	background-color: black;
	overflow: hidden;
	background-color: pink;
}

li {
	float: right;
}

li a {
	display: block;
	margin: 0px;
	padding: 15px;
}

li a:hover {
	background-color: bisque;
}
</style>
</head>
<body>
	<ul>
		<li><a style="color: black;" href="./logout">Logout</a></li>
		<li><a style="color: black;" href="./search">Search Farmer</a></li>
		<li><a style="color: black;" href="./add">Add Farmer</a></li>
		<li><a style="color: black;" href="./update">Update Farmer</a></li>
		<li><a style="color: black;" href="./remove">Remove Farmer</a></li>
		<li><a style="color: black;" href="./home">Home</a></li>
	</ul>
</body>
</html>