<%-- 
    Document   : jspbeanform
    Created on : 19 Feb, 2020, 9:47:33 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="jspbean1.jsp" method="post">
            <pre>
               Enter ID     <input type="text" name="id" /> <br/><br/>

               Enter Name   <input type="text" name="name"/><br/><br/>

               Enter Age    <input type="number" name="age"/><br/><br/>

               Enter Address <input type="text" name="addr"/><br/><br/>

                        <input type="submit" value="save to session"/>
            </pre>
        </form>
    </body>
</html>

