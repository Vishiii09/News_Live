<%-- 
    Document   : addCity
    Created on : 07-Feb-2020, 10:02:20
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="base.jsp"></jsp:include>
    </head>
    <body>
        <div class="container"> 
            <div class="row"> 
                <div class="col col-md-4 border-dark"> 
        <form action="CityController" method="post" class="form">
            <select name="state_id" class="form-control">
                <option value="-1">Select State </option>
                    <!-- jdbc fetch -->
                <%
                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/training2","root","");
                        String sql = "select * from states";
                        PreparedStatement smt = con.prepareStatement(sql);
                        ResultSet rs = smt.executeQuery();
                        while(rs.next()){%>
                        <option value="<%=rs.getString("id")%>"> <%=rs.getString("name")%> </option>
                        
                        <%}
                            con.close();
                    }catch(Exception e){
                        System.out.println("Error "+ e.getMessage());
                    }
                    
                    %>
            </select>
             
            Enter City : <input type="text" name="name" required="required" class="form-control"/>
                   
            <input type="submit" name="submit" value="Save" class="btn btn-primary form-control"/>
        
        </form>
            
            <%
               String msg = request.getParameter("msg");
               if (msg!=null && !msg.equals(""))
                out.print("<script>alert('"+msg+" ');</script>");
                              
                %>
    
                </div>
            </div>
        </div>
                
                </body>
</html>