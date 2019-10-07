<%-- 
    Document   : result
    Created on : Apr 11, 2019, 10:01:21 PM
    Author     : nivedita pathania
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>result</title>
    </head>
    <body>
       <%
String st[]=new String[10];
for(int i=0;i<st.length;i++)
{
int j=i+1;
st[i]=request.getParameter("radio"+j);
}

Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz?zeroDateTimeBehavior=convertToNull","root", "nivi@123");
Statement stmt=connection.createStatement();
ResultSet rs=stmt.executeQuery("Select * from test");
String ans[]= new String[10];
int k=0;
while(rs.next())
{
  ans[k]=rs.getString("ans");
  k++;
}
int count=0;

for(int i=0;i<ans.length;i++){
if(st[i].equals(ans[i]))
{
count++;
}

}
out.println("The correct answers are:"+count);
%>
    </body>
</html>
