<%-- 
    Document   : error
    Created on : Apr 7, 2019, 6:23:18 PM
    Author     : nivedita pathania
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error</title>
    </head>
    <body>
        <center><p style="color:red">Sorry, your record is not available.</p></center>
<%
getServletContext().getRequestDispatcher("/login.jsp").include(request, response);
%>
    </body>
</html>
