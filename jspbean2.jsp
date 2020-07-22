<%-- 
    Document   : jspbean2
    Created on : 19 Feb, 2020, 9:44:51 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import=" com.models.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean class="com.models.User" id="user" scope="session"></jsp:useBean>
        
        name is <%=user.getName() %> <br/>
         Age is : <%=user.getAge()%><br/>
        Address : <%=user.getAddress()%><br/>
        
        <hr/>
        Reading value using &lt;jsp:getProperty&gt; tag :
        <br/>
        <jsp:getProperty name="user" property="name"></jsp:getProperty>
        <jsp:getProperty name="user" property="address"></jsp:getProperty>
    </body>
</html>
