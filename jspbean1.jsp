<%-- 
    Document   : jspbean1
    Created on : 19 Feb, 2020, 9:55:36 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.models.*" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%--
            //Classical Way -
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            int age = Integer.parseInt(request.getParameter("age"));
            String address = request.getParameter("address");
            
            User user = new User();
            user.setId(id);
            user.setName(name);
            user.setAge(age);
            user.setAddress(address);
            
            session.setAttribute("user", user);
            --%>
            
            <jsp:useBean class="com.models.User" id="user" scope="session"></jsp:useBean>
            
            <%--
            <jsp:setProperty name="user" property="id" value="<%=Integer.parseInt(request.getParameter("id") )%>"></jsp:setProperty>
            <jsp:setProperty name="user" property="name" value="${param.name}"></jsp:setProperty>
            <jsp:setProperty name="user" property="age" value="${param.age}"></jsp:setProperty>
            <jsp:setProperty name="user" property="address" value="${param.address}"></jsp:setProperty>
           --%>
           
           <jsp:setProperty name="user" property="*"></jsp:setProperty>
           
            <b>Data saved in Session</b>
            <a href="jspbean2.jsp">Next page</a>
            
           <jsp:forward page="jspbean2.jsp"></jsp:forward>
    </body>
</html>
