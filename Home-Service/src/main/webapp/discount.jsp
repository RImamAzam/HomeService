<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Service</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script type="text/javascript" src = "Script/script.js"></script>
  
  <style>
    body {font-family: Arial, Helvetica, sans-serif;background-color: lightgrey;}
    
    /* Full-width input fields */
    input[type=text], input[type=password] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }
     .adminregsubmit {
      background-color: #0275d8;
      color: white;
      padding: 10px 10px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 7%;
    }
    /* Set a style for all buttons */
   
    
    hr
    {
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
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
      padding-top: 60px;
    }
    
    /* Modal Content/Box */
    .modal-content {
      background-color: #fefefe;
      margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
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
    
    .close:hover,
    .close:focus {
      color: red;
      cursor: pointer;
    }
    
    /* Add Zoom Animation */
    .animate {
      -webkit-animation: animatezoom 0.6s;
      animation: animatezoom 0.6s
    }
    
    @-webkit-keyframes animatezoom {
      from {-webkit-transform: scale(0)} 
      to {-webkit-transform: scale(1)}
    }
      
    @keyframes animatezoom {
      from {transform: scale(0)} 
      to {transform: scale(1)}
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
.select{
  padding: 8px 12px;
  color:white;
  background-color:#007bff;
  border : 1px Solid black;
  cursor : pointer;
  border-radius-5px;
}
.select:fous,
.select:hover{
  outline : none;
  border : 1px solid white;

}
select option {
  
  background: rgba(0, 0, 0, 0.3);
 
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
<br>
	<table>
		<tr>
			<td><img src="Images/admin.png" alt="image" width="100" height="100"></td>
			<td id="empty" width="350px"></td>
			<td id="empty" width="200px"></td>
			<td><h1 id="heading" >Home Service</h1></td>
			<td></td>
			
		</tr>
	</table>
	<br>
	<br>
	
		<form name="myForm" action="AdminLoginServlet"
			onsubmit="return vendorvalidateForm1()" method="post"
			>
			<table style="margin:auto">
				<tr>
					<td><b>Customer EmailId :&emsp;&emsp;&emsp;</b></td>
					<td><input type="text" name="custemail"
						placeholder="Enter Customer Email Id"><br>
					<br></td>
				<td id="empty" width="200px"></td>
					<td><b>Service Type :&emsp;&emsp;&emsp;</b></td>
					<td><select name="cservicetype" id="servicetype"
						style="padding: 10px 20px;" onchange="changecat();">
							<option value="">Select</option>
							<option value="Plumbing">Plumbing</option>
							<option value="Cleaning">Cleaning</option>
							<option value="Laptop">Laptop</option>
							<option value="Air Condition">Air Condition</option>
							<option value="Pest Control">Pest Control</option>
					</select></td>
					</tr>
				<tr>
					<td><b>Categories:</b></td>
					<td><select name="ccategory" id="category"
						style="padding: 10px 20px;">
							<option value="">Select</option>
					</select>
					</td>
				<td id="empty" width="200px"></td>
					
					<td><b><br>Other Categories :&emsp;&emsp;&emsp;</b></td>
					<td><br>
					<input type="text" name="ccategory1"
						placeholder="Enter other category"></td>
						</tr>
				<tr>
					
					<td><b>Discount(%) : </b></td>
					<td><input type="text" name="discount" placeholder="Enter Discount in %"></td>
					<td id="empty" width="200px"></td>
					<td><b>Changed as Rupees :&emsp;&emsp;&emsp;</b></td>
					<td><input type="text" name="discount1" placeholder="Enter as Money"></td>
				</tr>
			</table>
			<br> <br>
			 <div style="text-align:center">
			<input 
				type="submit" value="Give" name="submit" class="adminregsubmit" >&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="Take" name="submit" class="adminregsubmit" >
				</div>
		</form>
	
</body>
</html>