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




	<table >
		<tr>
			<td><img src="Images/vendor.png" alt="image" width="100" height="100"></td>
			<td id="empty" width="350px"></td>
			<td><h1 id="heading">Home Service</h1></td>
			<td>             </td>
			<td ><form name="myForm" action="VendorLoginServlet" method="post">
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<input type="submit" name="submit" value="LOGOUT" class="adminregsubmit1">
				</form>
			</td>
		</tr>
	</table>
	<table>
		<form name="myForm" action="VendorLoginServlet"
			onsubmit="return vendorvalidateForm1()" method="post"
			required="required">
			<h3 style="color: orange; text-align: center; font-weight: bolder;">Notification</h3>
			<table>
				<tr>
					<%@page import="java.sql.DriverManager"%>
					<%@page import="java.sql.ResultSet"%>
					<%@page import="java.sql.Statement"%>
					<%@page import="java.sql.Connection"%>
					<%@page import="java.sql.PreparedStatement"%>
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
						<tr bgcolor="green">
							<td><b>EMAIL ID</b></td>
							<td><b>NAME</b></td>
							<td><b>PHONE NUMBER</b></td>
							<td><b>SERVICETYPE</b></td>
							<td><b>CATEGORY</b></td>
							<td><b>ADDRESS</b></td>
						</tr>


						<%
							try {
								//conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root", "root");
								//PreparedStatement ps = conn.prepareStatement("select * from Vendornotification where vendorid=? ");
								con=DbConnection.getconnection();
								PreparedStatement ps = con.prepareStatement("select * from Vendornotification where vendorid=? ");
								String vid = (String) request.getAttribute("vid");

								ps.setString(1, vid);
								rs = ps.executeQuery();

								while (rs.next()) {
						%>
						<tr bgcolor="#DEB887">
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
						</tr>

						<%
							}

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
					</table>
			</table>
			<hr>
			<div class="container">
			<table>
				
				<tr>
					<td><b>Customer EmailId:&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</b></td>
					<td><input type="text" name="vcemail" size="290"
						placeholder="Enter Customer Emailid"></td>
					<b>Contact Number:</b>&emsp;&emsp;&emsp;
					<input type="text" id="telnum1" size="30" name="telnum1"
						placeholder="Enter your phone number" pattern="[789]{1}[0-9]{9}">&emsp;&emsp;&emsp;
					<b>Avalible Timings:</b>&emsp;&emsp;&emsp;
					<input type="time" id="avltime1" name="avltimefrom1">
					&emsp;&emsp;
					<b>to &emsp;&emsp;</b>
					<input type="time" id="avltime1" name="avltimeto1">
					<br>
					<br>
					<b> Location:&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</b>
					<input type="text" size="30" id="location" name="location1"
						placeholder="Enter your loaction">&emsp;&emsp;&emsp;
					<b>Service Type: </b>&emsp;
					<select name="servicetype" id="servicetype"
						style="padding: 10px 20px;" onchange="changecat();">
						<option value="select">Select</option>
						<option value="Plumbing">Plumbing</option>
						<option value="Cleaning">Cleaning</option>
						<option value="Laptop">Laptop</option>
						<option value="Air Condition">Air Condition</option>
						<option value="Pest Control">Pest Control</option>
					</select> &emsp;
					<b>Categories: </b>
					<select name="category" id="category" style="padding: 10px 20px;">
						<option value="">Select</option>
					</select>
					<br>
					<br>
					<b>Other Category:&emsp;&emsp;&emsp;&emsp;</b>
					<input size="30" type="text"
						placeholder="Other category you want to add" name="category1">&emsp;&emsp;&emsp;
						<b>&emsp;Status:&emsp;&emsp;&emsp;</b>
					<select name="status" style="padding: 10px 20px;">
						<option value="approved">Approved</option>
						<option value="cancel">Cancel</option>
					</select><br><br>
					<td></td>
				</tr>
			</table><br><center>
			<button type="submit" name="submit" class="adminregsubmit"
						value="Accept">Accept</button></center>
						<hr>

<br>
<b><u style="color : red; ">If the Service are Completed Fill the Details to Close :</u></b>
	<table>
		
		<tr>
			<td><b>Service Type: </b>&emsp;&emsp;&emsp;&emsp;
					<select name="servicetype1" id="servicetype1"
						style="padding: 10px 20px;" onchange="changecat1();">
						<option value="select">Select</option>
						<option value="Plumbing">Plumbing</option>
						<option value="Cleaning">Cleaning</option>
						<option value="Laptop">Laptop</option>
						<option value="Air Condition">Air Condition</option>
						<option value="Pest Control">Pest Control</option>
					</select> &emsp;&emsp;&emsp;
			<b>Categories: </b>
			
			<select name="category2" id="category1" style="padding: 10px 20px;">
						<option value="">Select</option>
					</select>&emsp;&emsp;&emsp;
			</td>
					<td><b>Other Category:&emsp;</b>
					<input type="text"
						placeholder="Other" name="category11"></td>
		</tr>
		<tr> 
		<b>&emsp;&emsp;&emsp;Customer EmailId:</b>&emsp;&emsp;
				<input type="text" id="email" size="100" name="custemail"
						placeholder="Enter Customer email id" >&emsp;&emsp;&emsp;</td><br><br>
						</tr>
	</table>
	<br>	<center><button type="submit" name="submit" class="adminregsubmit"
						value="Completed">Completed</button></center>
		</form>
	</table>
	</div>
</body>
</html>