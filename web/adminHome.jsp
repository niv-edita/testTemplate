
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: "Lato", sans-serif;
}

/* Fixed sidenav, full height */
.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
}

/* Style the sidenav links and the dropdown button */
.sidenav a, .dropdown-btn {
  padding: 15px 8px 6px 20px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  border: none;
  background: none;
  width: 100%;
  text-align: left;
  cursor: pointer;
  outline: none;
  position: relative;
  top: 200px;
}

/* On mouse-over */
.sidenav a:hover, .dropdown-btn:hover {
  color: #f1f1f1;
}

/* Main content */
.main {
    margin-top: 150px;
  margin-left: 250px; /* Same as the width of the sidenav */
  margin-right: 50px;
  font-size: 20px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

/* Add an active class to the active dropdown button */
.active {
  background-color: green;
  color: white;
}

/* Dropdown container (hidden by default). Optional: add a lighter background color and some left padding to change the design of the dropdown content */
.dropdown-container {
  display: none;
  
  padding-left: 8px;
 
}

/* Optional: Style the caret down icon */
.fa-caret-down {
  float: right;
  padding-right: 8px;
}

/* Some media queries for responsiveness */
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

.topbar{
   height: 100px;
  width: 100%;
  position: fixed;
  z-index: -1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
            }
            .topbar h1{color:white;}
            .topbar h3{color:white;}
            
            .logoutlink:link, .logoutlink:visited {
  background-color: #e44222;
  color: white;
  padding: 10px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  float: right;
  position:relative;
  top:-40px;
  margin-right: 20px;
}

.logoutlink:hover, .logoutlink:active {
    background-color: #00cc00;
}
</style>
        
    </head>
    <body>
        <div class="topbar">
            <div class="head">
                <center><h1 style="position: relative; top: 15px;">Admin Panel</h1></center>
                <a class="logoutlink" href="logout.jsp">Logout</a>
                <h3 style="color:whitesmoke; float: right;position: relative; top:-50px">Welcome <%=session.getAttribute("loggedInUser")%>&nbsp;&nbsp;&nbsp;</h3>
            </div>
        </div>
            
        <div class="sidenav">
  
  <a href="myprofile.jsp">Users</a>
  <button class="dropdown-btn">Courses 
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
    <a href="course.jsp">Java</a>
    <a href="cpp.jsp">C++</a>
    <a href="python.jsp">Python</a>
  </div>
  
  <a href="quiz.jsp">Exams</a>
  
</div>

<div class="main">
  
  
  
</div>

<script>
/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
  this.classList.toggle("active");
  var dropdownContent = this.nextElementSibling;
  if (dropdownContent.style.display === "block") {
  dropdownContent.style.display = "none";
  } else {
  dropdownContent.style.display = "block";
  }
  });
}
</script>
    </body>
</html>
