<%-- 
    Document   : FirstJsp
    Created on : 3 Feb, 2020, 9:46:33 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.beans.Person,com.daos.PersonDao "%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> JSP Page</title>
        <jsp:include page="base.jsp"></jsp:include>
        <script type="text/javascript">
                $(document).ready(function () {
                    $("#form1").submit(function (e) {

                        x = $("#password").val();
                        y = $("#cpassword").val();

                        if (x === y)
                            return true;
                        else
                        {
                            alert('sorry! password and confirm password not matched');
                            e.preventDefault();
                        }
                    });

                    $("#userid").blur(function () {
                        $("#sp1").load("PersonController?op=check_userid&userid=" + $(this).val());
                    });

                    $("#accept").change(function () {
                        if ($(this).prop("checked") == true) 
                            $("#submit").prop("disabled",false);
                       else  
                             $("#submit").prop("disabled",true);
                       
                    });

                });

                

            </script>
            
            
    </head>
    <body>
    <jsp:useBean id="person" class="com.beans.Person" scope="session"></jsp:useBean>
        <div class='container'>
            <div class='row'>
                <div class='col'>
        <h1>Fill the form</h1>
        
        <form  method="post" action="addpic.jsp" class="form">
      
            
            <table width="400" class="table">
                <tr>
                    <td>Enter Name </td>
                    <td><input type="text" name="name" required="required" autocomplete="off" class="form-control" value="${person.name}"/> </td>
                </tr>
                <tr>
                    <td>Enter Age </td>
                    <td> <input type="number" name="age" min="10" max="20"  class="form-control" value="${person.age}"/>
                </tr>
                   <tr>
                    <td>Enter Father's Name</td>
                    <td><input type="text" name="fname"  class="form-control" value="${person.fname}"/> </td>
                </tr>
                   <tr>
                    <td>Select Gender  </td>
                    <td> <input type="radio" name="gender" value="Male" ${person.gender eq "Male"? "checked":""}/>Male <br/>
                        <input type="radio" name="gender" value="Female" ${person.gender eq "Female"? "checked":""}/>Female<br/>
                    </td>
                 </tr>
                   <tr>
                    <td>Select Hobbies </td>
                    <td> 
                        <input type="checkbox" name="hobbies" value="Dancing" ${person.hobbies eq "Dancing"? "checked":""}/>Dancing 
                        <input type="checkbox" name="hobbies" value="Singing" ${person.hobbies eq "Singing"? "checked":""}/>Singing
                        <br/>
                        <input type="checkbox" name="hobbies" value="Cooking" ${person.hobbies eq "Cooking"? "checked":""}/>Cooking
                        <input type="checkbox" name="hobbies" value="Drawing" ${person.hobbies eq "Drawing"? "checked":""}/>Drawing 
                    </td>
                </tr>
               
                <tr>
                    <td>Enter Contact Number </td>
                    <td><input type="text" name="contact" maxlength="10"  class="form-control" value="${person.contact}" /></td>
                </tr>
                
                
                 <tr>
                    <td>Enter UserID </td>
                    <td><input type="text" name="userid" id="userid"  class="form-control" value="${person.userid}"/><br/>
                        <span id="sp1"> </span> 
                    </td>
                </tr>
                
                 <tr>
                    <td>Enter Password</td>
                    <td><input type="password" name="password" id="password" class="form-control" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" value="${person.password}"/> <br/>
                    password must contains atleast one lowercase one uppercase one special symbol and min len 8 char</td>
                </tr>
                
                 <tr>
                    <td>Retype Password </td>
                    <td><input type="password" name="cpassword" id="cpassword" class="form-control" value="${person.password}"/></td>
                </tr>
                  <tr>
                    <td> </td>
                    <td><input type="checkbox" name="accept" id="accept" onchange="checkAccept(this,submit);"/> I Accept Terms and conditions</td>
                </tr>
            </table>
            <input type="submit" name="submit" value="Register" class="btn btn-primary form-control" id="submit" disabled="disabled"/>
        </form>
            
           
            
           
                </div>
            </div>
        </div>
        
    </body>
</html>
