<%-- 
    Document   : detailnews
    Created on : 12 Feb, 2020, 10:12:12 AM
    Author     : HP
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
                 <%
                    Connection con = null;
                    PreparedStatement smt = null;
                    
                    try{
                       int id =Integer.parseInt(request.getParameter("id"));
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/training2","root","");
                       String sql ="select * from news where id=?";
                       smt = con.prepareStatement(sql);
                       smt.setInt(1, id);
                       ResultSet rs= smt.executeQuery(); 
                       if (rs.next()){%>
                       <div class="card col col-md-10" style=" text-align: justify;
  text-justify: inter-word;">
                    <div class="card-body">
                        <h4 class="card-title"><%=rs.getString("title")%></h4>
                        <p class="card-text"><%=rs.getString("description")%></p>
                      </div>
                        <img class="card-img-bottom" src="media/<%=rs.getString("image")%>" alt="Card image" style="width:100%">
                       <br/><br/>
                        <a href="<%=request.getHeader("referer")%>" class="btn btn-primary">Back </a>
            
            
                </div>
                
                <%}
}catch(Exception e){ 
System.out.println("Error -> "+ e.getMessage());
}
finally{
con.close();
smt.close();
}
     %>      
           
 </div>
        </div>
    </body>
</html>