<%-- 
    Document   : empregister
    Created on : 23-Feb-2020, 08:30:59
    Author     : Dell
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="com.models.Emp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="base.jsp"></jsp:include>
        <script> 
            
            function sendOtp(x,y){
                ajax = new XMLHttpRequest();
                ajax.open("GET","SmsSender?op=sendotp&mobile="+x,true);
                ajax.send();
                
                ajax.onreadystatechange=function(){
                    if(this.readyState==4 && this.status==200){
                       output =  this.responseText.split(",");
                       y.innerHTML = output[0];
                       document.getElementById("otp1").innerHTML=output[1];
                       div1.style.display='block';
                    }
                };
            }
            
            function validateOtp(x,y){
                if(x.trim().equals(y.trim()))
                    return  true;
                else {
                    alert("Invalid Otp");
                    return false;
                }
            }
            </script>
        
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col col-md-8">
                    <center>
                        <span id="otp1" style="visibility: hidden"></span><br/>
                           
                        <form class="form" method="post" onsubmit="return validateOtp(otp.value,otp1.innerHTML);">
                        <input type="text" required="required" name="name"placeholder=" Enter Emp Name "/> <br/>
                        Select Gender <br/>
                        <input type="radio" name="gender" value="Male"/>Male
                        <input type="radio" name="gender" value="Female"/>Female<br/>
                        <br/>
                        <input type="text" maxlength="10" name="mobile" id="mobile" placeholder=" Enter Mobile Number"/> <br/> 
                        <input type="button" value="Send OTP" name="otpbtn" class="btn btn-primary" onclick="sendOtp(mobile.value,s1)"/>
                        <span id="s1"> </span><br/>
                        
                        <div id="div1" style="display: none">
                           Type OTP Here <input type="text" name="otp" id="otp"/> <br/>
                          <input type="submit" value="Register Me" name="submit" class="btn btn-primary"/>
                        </div>
                    </center>
                    </form>
                </div>
            </div>
        </div>
                        
    <%if(request.getParameter("submit")!=null){ %>
    <jsp:useBean class="com.models.Emp" id="emp"></jsp:useBean> 
    <jsp:setProperty name="emp" property="*"></jsp:setProperty>
   <%
       Connection con =null;
       PreparedStatement smt = null;
       try{
           Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/training2","root","");
           String  sql = "insert into emp (name,mobile,gender)values(?,?,?)";
           smt = con.prepareStatement(sql);
           smt.setString(1, emp.getName());
           smt.setString(2, emp.getMobile());
           smt.setString(3, emp.getGender());
           int n = smt.executeUpdate();
           if(n>0)
               out.println("Employee Registered !!");
           con.close();
           smt.close();
       }
       catch(Exception e){
           System.out.println("Error "+ e.getMessage());
       }
       
    }%>
    </body>
</html>