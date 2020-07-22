<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
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
                <div class="col col-md-6">
                    
                    <form action="SubjectController?op=add" method="post" class="form">
                        Enter Subject Name :<input type="text" name="subjectName" class="form-control"/> <br/>
                        <h4>Select Streams </h4>
                        <br/>
                        <div class="bg-info">
                             <%
                          try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/training2","root","");
                        String sql = "select * from streams";
                        PreparedStatement smt = con.prepareStatement(sql);
                        ResultSet rs = smt.executeQuery();
                        while(rs.next()){%>
                        <input type="checkbox" value="<%=rs.getString("id")%>" name="streamIds"/> <%=rs.getString("name")%> <br/>
                        
                      
                        <%
                            System.out.println(rs.getString("id"));
                        
                        }
                            con.close();
                    }catch(Exception e){
                        System.out.println("Error "+ e.getMessage());
                    }
                    
                    %>  
                   </div>
                   <br/>
                   <input type="submit" value="Add" class="btn btn-primary"/>
                    </form>
                    
                </div>
            </div>
 
    </body>
</html>