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
<div class="row">
  <div class="col">
    <div class="container">
      <form name="myForm" action="CustomerLoginServlet" method="post">
      
        
          <div class="col">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" class="input1" id="fname" name="firstname"  required placeholder="John M. Doe">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" class="input1" id="email" name="email" required  placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" class="input1" name="address" required  placeholder="542 W. 15th Street">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" class="input1" name="city" required  placeholder="New York">
            <label for="state">State</label>
            <input type="text" class="input1" id="state" name="state"  required placeholder="NY">
            <label for="zip">Zip</label>
            <input type="text" class="input1" id="zip" name="zip" required  placeholder="10001">     
          </div>
			<br><br>
          <div class="col">
            <h3>Payment Accepted Cards</h3><img src="Images/gatewayimage.PNG" alt="image" width="150" required  height="50"><br>
            <br>
            <div>
            <span style="font-size: 25px">Amount: ${amount}</span>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" class="input1" id="cname" name="cardname" placeholder="John More Doe" required>
            <label for="ccnum">Credit card number</label>
            <input type="text" class="input1" id="ccnum" name="cardnumber" required placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" class="input1" id="expmonth" name="expmonth" required  placeholder="September">
            <label for="expyear">Exp Year</label>
            <input type="text" class="input1" id="expyear" name="expyear" required  placeholder="2018">
            <label for="cvv">CVV</label>
            <input type="text" class="input1" id="cvv" name="cvv" required  placeholder="352">
            <input type="submit" value="Paynow" name="submit" class="adminregsubmit">
          </div>     
        </form>
        
        <div class="col">
        <form action="CustomerLoginServlet" method="post">
        <div style="text-align: center;"><h3><span style="color:red;">(Or)</span></h3></div>
        <h3>UPI Payments</h3>
        <label for="fname"><i class="fa fa-user"></i> Full Name</label>
        <input type="text" class="input1" id="fname" name="firstname1"  required placeholder="John M. Doe">
        <label for="email"><i class="fa fa-envelope"></i> Email</label>
        <input type="text" class="input1" id="email" name="email1" required  placeholder="Enter your email">
        <label for="upi"><i class="fa fa-user"></i>UPI ID</label>
        <input required type="text" name="upiid" id="upi" class="input2" size="30" placeholder="Enter your upi id">
        <input type="submit" value="Check" name="submit" class="adminregsubmit">
      </form>
      </div>
    </div>
</div>
</div>
</body>
</html>