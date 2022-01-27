<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Service</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="Script/script.js"></script>
<!--     <link rel="stylesheet" type="text/css" href="Style/style.css">-->
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: lightgrey;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 30%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	background-color: #0275d8;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 20%;
}

hr {
	border-top: 1px solid blue;
}

button:hover {
	opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

/* Home and Logout*/
.adminregsubmit1,.adminregsubmit {
	background-color: #007bff;;
	border: none;
	color: white;
	padding: 10px 15px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	margin: 4px 2px;
	cursor: pointer;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}

/* for forms*/
.row:after {
	content: "";
	display: table;
	clear: both;
}

.col-25 {
	float: left;
	width: 25%;
	margin-top: 6px;
}

.col-75 {
	float: left;
	width: 55%;
	margin-top: 6px;
}

h5{
color : red;
}
</style>

</head>
<body>

<div class="container">
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
    <a class="navbar-brand" href="index.html">Home Service</a>
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" onclick="document.getElementById('id01').style.display='block'">Admin</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" onclick="document.getElementById('id02').style.display='block'">Vendor</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" onclick="document.getElementById('id03').style.display='block'">User</a>
      </li>
    </ul>
    <ul class="navbar-nav ml-auto">
    <li class="nav-item">
      <a class="nav-link" href="index.html">Logout</a>
    </li>
    </ul>
  </nav>
  </div>
  <br><br><br>
  <div class="container">

<table >
		<tr>
			<td><img src="Images/admin.png" alt="image" width="100" height="100"></td>
			<td id="empty" width="350px"></td>
			<td><h1 id="heading">Home Service</h1></td>
			</form>
			</td>
		</tr>
	</table>
	<br><br>
	<table>
		<form name="myForm" action="AdminLoginServlet"
			onsubmit="vendorafterlogin.jsp" method="post" required="required">
			<table>
				<tr>
					<%@page import="java.sql.DriverManager"%>
					<%@page import="java.sql.ResultSet"%>
					<%@page import="java.sql.Statement"%>
					<%@page import="java.sql.Connection"%>
					<%@page import="java.sql.PreparedStatement"%>
					<%@page import="java.util.*"%>
					<%@page import="com.mini.Db.DbConnection"%>
					<%
						try {
							Class.forName("com.mysql.cj.jdbc.Driver");
						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}
						//Connection conn = null;
						Connection con=null;
						Statement st = null;
						ResultSet rs = null;
					%>

					<table align="center" cellpadding="5" cellspacing="5" border="1">
						<tr>

						</tr>
						<tr bgcolor="#35CB95">
							<td><b>CUSTOMER NAME</b></td>
							<td><b>CUSTOMER EMAIL</b></td>
							<td><b>ADDRESS</b></td>
							<td><b>CITY</b></td>
							<td><b>STATE</b></td>
							<td><b>ZIP</b></td>
							<td><b>CARD NAME</b></td>
							<td><b>CARD NUMBER</b></td>
							<td><b>AMOUNT</b></td>
						</tr>


						<%
							try {
								//conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root", "root");
								//PreparedStatement ps = conn.prepareStatement("select * from payment;");
								con=DbConnection.getconnection();
								PreparedStatement ps = con.prepareStatement("select * from payment;");
								rs = ps.executeQuery();

								while (rs.next()) {
						%>
						<tr bgcolor="#DEB887">
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(8)%></td>
							<td><%=rs.getString(12)%></td>
						</tr>

						<%
							}
								session.setAttribute("cardpayment", rs);

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
					</table>
			</table>
			<a href="cardpaymentprint.jsp">Generate Report</a>
		</form>
	</table>
	</div>
</body>
</html>