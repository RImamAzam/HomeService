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
  width: 15%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 45%;
  margin-top: 6px;
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
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      <li class="nav-item"> <a class="nav-link" ></a> <li class="nav-item"> <a class="nav-link" ></a>
      
     <li class="nav-item">
        <a class="nav-link" href="index.html">Logout</a>
      </li>
    </ul>
  </nav>
  </div>
  <div class="container">
	<table >
		<tr>
			<td><img src="Images/vendor.png" alt="image" width="100" height="100"></td>
			<td id="empty" width="350px"></td>
			<td><h1 id="heading">Home Service</h1></td>
			</form>
			</td>
		</tr>
	</table>
	<table>
		<form name="myForm" action="VendorLoginServlet"
			onsubmit="return vendorvalidateForm1()" method="post"
			required="required">

			<br> <h4 ><b style="color: Green;">Edit Your Details</b></h4><hr>
	</table>
	<form name="myForm" action="VendorLoginServlet" method="post">
   <div class="row">
   <div class="col-25">
		 <label><b>FirstName:</b></label> </div>
		 <div class="col-75"><input
			type="text" placeholder="Enter First Name" name="fname1"
			id="firstname"></div></div> 
			<div class="row">
			<div class="col-25">
			<label><b>LastName:</b></label></div><div class="col-75"> <input
			type="text" size="50" placeholder="Enter Last Name" name="lname1"
			id="lastname"></div></div>
			<div class="row">
			<div class="col-25">
			 <label><b>Age:</b></label></div>
			 <div class="col-75"> <input
			type="text" size="50" placeholder="Enter your age" id="age"
			name="personage1"></div></div>
			<div class="row">
			<div class="col-25">
			 <label><b>
				Select your gender:</b></label></div><div class="col-75"> <input type="radio" id="male" name="gender1"
			value="M"> Male &emsp;&emsp; <input type="radio" id="female"
			name="gender1" value="F"> Female &emsp;&emsp; <input
			type="radio" id="other" name="gender1" value="O"> Other<br>
		</div></div>
		<br>
		<div class="row">
		<div class="col-25">
		<label><b>Contact Number:</b></label></div><div class="col-75"> <input type="text" size="50"
			placeholder="Enter Contact Number" id="phnum" name="phone1"
			pattern="[789]{1}[0-9]{9}"></div></div>
			<div class="row">
			<div class="col-25">
			 <label><b>Confirm
				old Password:</b></label> </div><div class="col-75"><input type="password" size="50" id="oldInput"
			placeholder="Enter your old password" name="oldpass"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"> <input
			id="check" type="checkbox" onclick="myFunction2()"><span
			id="show"><b>Show Password</b><br></span></div></div>
			<div class="row">
			<div class="col-25">
			 <label><b>New
				Password:</b></label> </div>
				<div class="col-75"><input type="password" size="50" id="newInput"
			placeholder="Enter your new password" name="newpass"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
			title="it should contain caps letter, one small letter and digit">
		<input id="check" type="checkbox" onclick="myFunction3()"><span
			id="show"><b>Show Password</b><br></span></div></div>
			<div class="row">
			<div class="col-25"> <label><b>Re-enter New Password:</b></label> </div>
				<div class="col-75"><input type="password" id="cnfnewpass"
			placeholder="Enter your new password again" name="cnfnewpass"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" size="50"> <input
			type="checkbox" onclick="myFunction4()"><span id="show"><b>Show
				Password</b><br></span>
				</div></div>
				<br><center>
				 <button type="submit" class="adminregsubmit"
			value="Update Details" name="submit" onclick="return Validate1()">Update Details</button></center>
		</div>
	</form>
	</table>
	</div>

</body>
</html>