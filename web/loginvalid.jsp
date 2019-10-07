<%-- 
    Document   : loginvalid
    Created on : Apr 7, 2019, 6:14:43 PM
    Author     : nivedita pathania
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>loginvalid</title>
    </head>
    <body>
        <%! String userdbName;
String userdbPsw;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/quiz?zeroDateTimeBehavior=convertToNull";
String user = "root";
String dbpsw= "nivi@123";

String sql = "select * from registration where username=? and password=?";

String username = request.getParameter("username");
String password = request.getParameter("password");


if((!(username.equals(null) || username.equals("")) && !(password.equals(null) || password.equals(""))))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, username);
ps.setString(2, password);

rs = ps.executeQuery();
if(rs.next())
{ 
userdbName = rs.getString("username");
userdbPsw = rs.getString("password");

if(username.equals(userdbName) && password.equals(userdbPsw))
{
    session.setAttribute("fullname", rs.getString(2));
    session.setAttribute("emailid", rs.getString(3));
    session.setAttribute("username", rs.getString(4));
    session.setAttribute("password", rs.getString(5));
    
request.getSession().setAttribute("loggedInUser", userdbName);
response.sendRedirect("myprofile.jsp"); 
} 
}
else
response.sendRedirect("error.jsp");
rs.close();
ps.close(); 
}
catch(SQLException sqe)
{
out.println(sqe);
} 
}
else
{
%>
<center><p style="color:red">Error In Login</p></center>
<% 
getServletContext().getRequestDispatcher("/login.jsp").include(request, response);
}
%>

    </body>
</html>
