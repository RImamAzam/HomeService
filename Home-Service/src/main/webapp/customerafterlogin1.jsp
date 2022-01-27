<!DOCTYPE html>
<html>
<head>
<title>Home Services</title>
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
	width: 100%;
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
.adminregsubmit {
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
	
	<table>
		<tr>
			<td><img src="Images/customer.jpg" alt="image" width="100"
				height="100"></td>
			<td id="empty" width="350px"></td>
			<td><h1 id="heading">Home Service</h1></td>
			<td></td>
			<td><form name="myForm" action="CustomerLoginServlet"
					method="post">
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<input type="submit" name="submit" value="HOME" class="adminregsubmit">
					<input type="submit" name="submit" value="LOGOUT" class="adminregsubmit">
					&emsp;
				</form></td>
		</tr>
	</table>

	<table>
		<form name="myForm" action="CustomerLoginServlet" target="_blank"
			onsubmit="return vendorvalidateForm1()" method="post"
			required="required">

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
					Connection con = null;
					Statement st = null;
					ResultSet rs = null;
					ResultSet rs1 = null;
					%>

					<table align="center" cellpadding="5" cellspacing="5" border="1">
						<tr>

						</tr>
						<tr bgcolor="green" style="color:white">
							<td><b>VENDORID</b></td>
							<td><b>CONTACT NUMBER</b></td>
							<td><b>AVALIBLE TOME</b></td>
							<td><b>LOCATION</b></td>
							<td><b>SERVICETYPE</b></td>
							<td><b>CATEGORY</b></td>
							<td><b>STATUS</b></td>
						</tr>


						<%
						try {
							//conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root", "root");
							//PreparedStatement ps = conn.prepareStatement("select * from Vendorservice where servicetype=? and location=? ");
							con=DbConnection.getconnection();
							PreparedStatement ps = con.prepareStatement("select * from Vendorservice where servicetype=? and location=? ");
							String servicetype = (String) request.getAttribute("servicetype");
							String city = (String) request.getAttribute("city");
							//PreparedStatement ps1 = conn.prepareStatement("select * from discount where customeremail =? and servicetype=?;");
							PreparedStatement ps1 = con.prepareStatement("select * from discount where customeremail =? and servicetype=?;");
							ps1.setString(1, (String) request.getAttribute("custid"));
							ps1.setString(2, servicetype);
							rs1 = ps1.executeQuery();
							while (rs1.next()) {
								request.setAttribute("amount", rs1.getString(3));
							}
							ps.setString(1, servicetype);
							ps.setString(2, city);
							rs = ps.executeQuery();
							while (rs.next()) {
						%>
						<tr bgcolor="#DEB887">
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%>:<%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><%=rs.getString(8)%></td>

							<%-- 							<td><%=rs.getString(7)%></td> --%>
							<%-- 	<td><%=rs.getString(8) %></td> --%>


							<%
							}

							} catch (Exception e) {
							e.printStackTrace();
							}
							%>
						
					</table>
			</table>
			
			<br>
			<h5>Please fill the details for contacting Service Provider as:</h5>
				<hr>
			<table style="padding: 15px;width:1300px;height:350px;">
				<tr>
					<td><b>Vendor ID:&emsp;&emsp;</b></td>
					<td><input type="text" name="cvendorid"
						placeholder="Enter vendor you want"></td>
						<td></td>
					<td><b>Service Type:</b></td>
					<td><select name="cservicetype" id="servicetype"
						style="padding: 10px 20px;" onchange="changecat();">
							<option value="">Select</option>
							<option value="Plumbing">Plumbing</option>
							<option value="Cleaning">Cleaning</option>
							<option value="Laptop">Laptop</option>
							<option value="Air Condition">Air Condition</option>
							<option value="Pest Control">Pest Control</option>
					</select></td>
					</tr><tr>
					<td><b>Categories:</b></td>
					<td><select name="ccategory" id="category"
						style="padding: 10px 20px;">
							<option value="">Select</option>
					</select></td>
					<td></td>
				</tr>
				<tr>

					<td><br> <br> <b>Other Categories :</b></td>
					<td><input type="text" name="ccategory1"
						placeholder="Enter other category you want"></td>
						<td></td>
					<td><b>Amount: </b></td>
					<td><span style="font-size: 50px; color: orange">${amount}</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				


				
				<tr>
					<td><b>Name:</b></td>
					<td><input type="text" name="cname" size="30"
						placeholder="Enter your Name"></td>
						<td></td>
					<td><b>Contact Number:&emsp;&emsp;</b></td>
					<td><input type="tel" size="30" name="cnum"
						placeholder="Enter your phone number" pattern="[789]{1}[0-9]{9}"></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
				</tr>
				
				<tr>
					<td><b>Address</b></td>
					<td><textarea name="address" placeholder="Enter your Address"></textarea></td>
					<td></td>
					<td><b>Vendor Number:</b></td>
					<td><input type="tel" size="30" name="vendornum"
						placeholder="Enter your phone number" pattern="[789]{1}[0-9]{9}"></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
				</tr>
				<tr>
				<td></td>
						<td></td>
						<td></td>
						
				<td><input style="align-content: center; align:center;" type="submit"
				value="Book" name="submit" class="adminregsubmit"></td>
				<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
				</tr>
			</table>
			
			<div style="display: none;">
				<select name="payment1" id="payment1"
					style="padding: 10px 20px;">
						<option value="${amount}"></option>
				</select>
			</div>
			
		
	
</form>
</body>
</html>