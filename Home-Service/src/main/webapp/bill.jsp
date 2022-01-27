<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Service</title>
<script type="text/javascript" src="Script/script.js"></script>
<style type="text/css">
.adminregsubmit{
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
.center{
 margin: 0;
  position: absolute;
  top: 130%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}
h1,h2,h3{
font-family: Arial, Helvetica, sans-serif;}
</style>
</head>
<body>
<table>
		<tr>
			<td><img src="Images/customer.jpg" alt="image" width="100" height="100"></td>
			<td id="empty" width="350px"></td>
			<td><h1 style="text-align: center;" id="heading">Home Service</h1><br><h2>Payment bills</h2></td>
		</tr>
	</table>
	&emsp;&emsp;<h2><u>Service Details:-</u></h2>
<table>
	<tr>
		<td><h2 style="color:red;">&emsp;&emsp;Customer Name </h2></td>
		<td><h3>&emsp;&emsp;: ${custname}</h3></td>
	</tr>
	<tr>
		<td><h2 style="color:red;">&emsp;&emsp;Email Id</h2></td>
		<td><h3>&emsp;&emsp;: ${custemailid}</h3></td>
	</tr>
	<tr>
		<td><h2 style="color:red;">&emsp;&emsp;Phone Number</h2></td>
		<td><h3>&emsp;&emsp;: ${custnum}</h3></td>
	</tr>
	<tr>
		<td><h2 style="color:red;">&emsp;&emsp;Address</h2></td>
		<td><h3>&emsp;&emsp;: ${address}</h3></td>
	</tr>
	<tr>
		<td><h2 style="color:red;">&emsp;&emsp;Reference Id</h2></td>
		<td><h3>&emsp;&emsp;: ${random}</h3></td>
	</tr>
	<tr>
		<td><h2 style="color:red;">&emsp;&emsp;Amount</h2></td>
		<td><h3>&emsp;&emsp;: ${amount}</h3></td>
	</tr>
	<tr>
		<td><h2 style="color:red;">&emsp;&emsp;Vendor Id</h2></td>
		<td><h3>&emsp;&emsp;: ${vendorid}</h3></td>
	</tr>
	<tr>
		<td><h2 style="color:red;">&emsp;&emsp;Vendor Number</h2></td>
		<td><h3>&emsp;&emsp;: ${vendornum}</h3></td>
	</tr>
	<tr>
		<td><h2 style="color:red;">&emsp;&emsp;Service Type</h2></td>
		<td><h3>&emsp;&emsp;: ${servicetype}</h3></td>
	</tr>
	<tr>
		<td><h2 style="color:red;">&emsp;&emsp;Category</h2></td>
		<td><h3>&emsp;&emsp;: ${category}</h3></td>
	</tr>
	
	
</table>
<div class="center">
<button onclick="myFunction()" class="adminregsubmit">Print this page</button>
</div>
<script>
function myFunction() {
  window.print();
}
</script>
</body>
</html>