<%-- 
    Document   : adminLogin
    Created on : Apr 10, 2019, 7:13:05 PM
    Author     : nivedita pathania
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin login</title>
        <style>
           body, html {
               background-color:#ccccff;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

/* Add styles to the form container */
.container {
  position: absolute;
 left:450px;
  top:100px;
  margin: 20px;
  max-width: 400px;
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: whitesmoke;
}

input[type=text]:focus, input[type=password]:focus {
  background-color:whitesmoke ;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: red;
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


  <form action="adminValid" class="container" method="post">
      <center><h1>Admin Login</h1></center>

    <label for="email"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="adminusername" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="adminpassword" required>
<br>
    <button type="submit" class="btn">Login</button>
    <br>
  </form>
 
    </body>
</html>
