<%-- 
    Document   : logincheck
    Created on : Apr 11, 2019, 12:55:46 PM
    Author     : nivedita pathania
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${not empty loggedInUser}">
    <jsp:forward page="course.jsp" />
</c:if>
<c:if test="${empty loggedInUser}">
     <jsp:forward page="login.jsp" />
</c:if>
    </body>
</html>
