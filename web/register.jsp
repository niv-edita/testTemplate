<%-- 
    Document   : register
    Created on : Mar 16, 2019, 3:28:46 PM
    Author     : nivedita pathania
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <style>
           body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("images/loginback.jpg");

  min-height: 650px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 50%;
  top:30px;
  margin: 20px;
  max-width: 400px;
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password], input[type=email] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
} 
        </style>
    </head>
    <body>
        
        <div class="bg-img">
  <form action="registerServ" class="container" method="post">
      <center><h1>Sign up</h1></center>
      
      <label for="email"><b>Full Name</b></label>
    <input type="text" placeholder="Enter your Name" name="fullname" required pattern="[A-Za-z]*" title="Enter Text Value">

    <label for="email"><b>Email ID</b></label>
    <input type="email" placeholder="Enter Email id" name="emailid" required>

    <label for="email"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required pattern="[A-Za-z]*" title="Enter Text Value">

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required pattern=".{6,}"   required title="6 characters minimum">

    <br>
    <button type="submit" class="btn">Sign Up</button>
    <br>
    <p>Already have an Account?&nbsp;<a href='login.jsp'>Login</a>&nbsp;here.</p>
  </form>
</div> 
    </body>
</html>
