<%-- 
    Document   : quiz
    Created on : Apr 11, 2019, 12:46:17 PM
    Author     : nivedita pathania
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
           
            .heading{
                background-color: #330000;
                color:white;
                font-size: 50px;
                text-transform: uppercase;
                height: 80px;
                margin-top: -8px;
                margin-left: -8px;
                margin-right: -8px;
                
            }
            .box{
                background-color:#ffcc99;
                width: 900px;
                margin-left: 250px;
                box-shadow: 0px 0px 30px 5px #888888;
                
            }
            .question{
                margin-left: 20px;
                font-size: 30px;
                font-style: italic;
                
            }
            .opt{
                margin-left: 20px;
                font-size: 250px;
                font-weight: bold;
                text-transform: capitalize;
            }
            .butn{
                background-color:#33ff33;
                color:white;
                height: 50px;
                width: 130px;
                position: relative;
                left: 40%;
                font-size: 20px;
                 cursor: pointer;
            }
            .c-butn{
                background-color:#ff0000;
                color:white;
                border: 3px groove whitesmoke;
                position: relative;
                left: 50%;
                top: -67px;
                font-size: 23px;
                display: inline-block;
                text-decoration: none;
                padding: 9px 30px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1 class="heading"><center>Java Quiz</center></h1>
       <form method="post" action="result.jsp">
           

<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz?zeroDateTimeBehavior=convertToNull","root", "nivi@123");
Statement st=connection.createStatement();
ResultSet rs=st.executeQuery("Select * from test");
int i=1;
while(rs.next()){
%>
<div class="box">
    <br>
   <div class="question"> <%=i%>. <%=rs.getString("question")%></div><br>
    <input class="opt" type="radio" value="<%=rs.getString("opt1")%>" name="radio<%=i%>"/><%=rs.getString("opt1")%><br>
    <input class="opt" type="radio" value="<%=rs.getString("opt2")%>" name="radio<%=i%>"/><%=rs.getString("opt2")%><br>
    <input class="opt" type="radio" value="<%=rs.getString("opt3")%>" name="radio<%=i%>"/><%=rs.getString("opt3")%><br>
    <input class="opt" type="radio" value="<%=rs.getString("opt4")%>" name="radio<%=i%>"/><%=rs.getString("opt4")%><br><br>
    <div style="border-bottom: 20px groove #888888; width: 900px"></div>
</div>
    <br>
    <br>
<%
      i++;
}
%>
<br>
<input class="butn" type="submit" value="Submit">

       </form><br>
        &nbsp;&nbsp;&nbsp;&nbsp;<a href="course.jsp" class="c-butn">Cancel</a>
    </body>
</html>
