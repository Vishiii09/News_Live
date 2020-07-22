<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="base.jsp"></jsp:include>
        </head>
        <body>
            <h1>Edit news :</h1>
            <div class="container">
                <div class="row">
                    <div class="col">
                    <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        //System.out.println("id:" + id);
                        Connection con = null;
                        ResultSet rs = null;
                        PreparedStatement ps = null;
                        //con.setAutoCommit(false);
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/training2", "root", "");
                            ps = con.prepareStatement("select * from news where id = ?");
                            ps.setInt(1, id);
                            rs = ps.executeQuery();
                            if (rs.next()) {%>

                            <form action="NewsController?op=update&id=<%=rs.getString("id")%>" method="post" enctype="multipart/form-data">  
                        News id : <input type="text" name="id" value="<%=rs.getString("id")%>" readonly="readonly"><br/>
                        Title : <input type="text" name="title" value="<%=rs.getString("title")%>"  class="form-control"><br/>
                        Description : <textarea row="20" name="description" cols="10"  class="form-control" ><%=rs.getString("description").trim()%></textarea><br/>

                        <img src="media/<%=rs.getString("image")%>" width="100px" height="100px"></br>
                        Upload image  : <input type="file"  name="image"  class="form-control">

                        <%}
                                con.close();
                            } catch (Exception e) {
                                System.out.println("Error:" + e.getMessage());
                            }
                        %>
                        <fieldset class="bg-light">
                            <legend><h4>select category</h4></legend>
                            <%
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/training2", "root", "");
                                    String category = "";

                                    ps = con.prepareStatement("select name from newscategory where id in(select cat_id from ncr where news_id=?)");
                                    ps.setInt(1, id);
                                    rs = ps.executeQuery();
                                    while (rs.next()) {
                                        category += rs.getString("name") + " ";
                                    }
                                    //          System.out.println(category);

                                    ps = con.prepareStatement("select * from newscategory");
                                    rs = ps.executeQuery();
                                    while (rs.next()) {%>
                            <input type="checkbox" name="news_cat" value="<%=rs.getString("id")%>"
                                   <% if (category.contains(rs.getString("name"))) {
                                           out.println("checked");
                                       }%>/>
                            <%=rs.getString("name")%><br/>
                            <%}%>
                            <input type="submit" value="update" class="form-control"  style="background-color: blue; color: white"></style>
                            </form>
                            <% con.close();
                                } catch (Exception e) {
                                    System.out.println("Error:" + e.getMessage());
                                }
                            %>

                            </div>
                            </div>
                            </div>
                            </body>
                            </html>