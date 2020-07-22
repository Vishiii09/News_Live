
<%@page import="java.sql.*,com.daos.PersonDao,com.beans.Person" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="base.jsp"></jsp:include>
            <script type="text/javascript">

                function readURL(input) {
                    //       alert('hello');
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();

                        reader.onload = function (e) {
                            preview.src = e.target.result;
                        };

                        reader.readAsDataURL(input.files[0]);
                    }
                }
            </script>
        </head>
        <body>
              <div class="container">
                <div class="row">
                    <div style="position: fixed; bottom:100px; width:600px" class="col col-md-6"> <center>
              <%if (request.getParameter("submit") != null) {
                         Person person1 = (Person) session.getAttribute("person1");
                        %> 
                        <jsp:setProperty name="person1" property="*"></jsp:setProperty>
                        <%
                            String hobbies[] = request.getParameterValues("hobbies");
                            String hbs = "";
                            for (String s : hobbies) {
                                hbs += s + ",";
                            }
                            person1.setHobbies(hbs);
                        %>
                        
                        <form action="PersonController?op=update" method="post" enctype="multipart/form-data" class="form"> 
                            <img src="${person1.image}" class="img img-thumbnail" width="200" height="200" id="preview" border="2"/> <br/>
                            <input type="file" name="photo"   onchange="readURL(this);"/><br/><br>
                            <input type="submit" value="Update" class="btn btn-primary form-control"/>
                        </form>

                        <%
                            }
                        %>
                        </center> </div></div>
            
          <div class="row">
                    <div class="col col-md-6">
                    <%
                        int id = request.getParameter("id") != null ? Integer.parseInt(request.getParameter("id")) : 0;
                        PersonDao pdo = new PersonDao();
                        Person person1 = (Person) session.getAttribute("person1");
                        if ((person1 == null || person1.getId()!=id) && (request.getParameter("submit")==null)) {
                            person1 = pdo.getById(id);
                        }
                        session.setAttribute("person1", person1);
                    %>

                    <center>
                        <h1>Edit the Details </h1>
                        <form method='post'> 
                            <input type="text" value="<%=person1.getId()%>" readonly="readonly" name="id"/>
                            <table width="600">
                                <tr>
                                     <td>Enter Name </td>
                                    <td><input type="text"  name="name" required="required" value="<%=person1.getName()%>"></td>
                                </tr>
                                <tr>
                                    <td>Enter Father Name </td>
                                    <td><input type="text" name="fname" required="required" value="<%=person1.getFname()%>"></td>
                                </tr>
                                <tr>
                                    <td>Enter Age</td>
                                    <td><input type="number" name="age"  value="<%=person1.getAge()%>"></td>
                                </tr>

                                <tr>
                                    <td>Your userid</td>
                                    <td><input type="text" name="userid"  value="<%=person1.getUserid()%>" readonly="readonly"></td>
                                </tr>
                                <tr>
                                    <td>Select Gender </td>
                                    <td>
                                        <input type="radio" name="gender" value="Male"<%if (person1.getGender().equalsIgnoreCase("Male")) {
                            out.println("checked='checked'");
                        } %>/>Male
                                        <br/>
                                        <input type="radio" name="gender" value="Female" <%if (person1.getGender().equalsIgnoreCase("Female")) {
                            out.println("checked='checked'");
                        } %>/> Female
                                    </td>
                                </tr>
                                <tr>
                                    <td>Select Your Hobbies : </td>
                                    <td>
                                        <input type="checkbox" name="hobbies" value="Dancing" <%if (person1.getHobbies().contains("Dancing")) {
                            out.println("checked='checked'");
                        } %>>Dancing
                                        <input type="checkbox" name="hobbies" value="Singing" <%if (person1.getHobbies().contains("Singing")) {
                            out.println("checked='checked'");
                        } %>>Singing <br/>
                                        <input type="checkbox" name="hobbies" value="Cooking" <%if (person1.getHobbies().contains("Cooking")) {
                            out.println("checked='checked'");
                        } %>>Cooking
                                        <input type="checkbox" name="hobbies" value="Drawing" <%if (person1.getHobbies().contains("Drawing")) {
                            out.println("checked='checked'");
                        }%>>Drawing <br/>

                                    </td>


                                <tr>
                                    <td>Enter Contact Number </td>
                                    <td><input type="text" name="contact" maxlength="10"  value="<%=person1.getContact()%>"/></td>
                                </tr>
                                <tr><th colspan="2"> <input type="submit" value="Save and Next" class="btn btn-primary form-control" name="submit"/> </th></tr>
                            </table>
                        </form>

                      

                    </center>

                </div>
          </div>
            </div>
        </div>

    </body>
</html>
