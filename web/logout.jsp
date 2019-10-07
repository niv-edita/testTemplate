<%-- 
    Document   : logout
    Created on : Apr 7, 2019, 6:32:05 PM
    Author     : nivedita pathania
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% request.getSession().invalidate(); %>
<p>You have been successfully logged out</p>
<% response.sendRedirect("index.html"); %>
    </body>
</html>
