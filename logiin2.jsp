<%-- 
    Document   : home
    Created on : 19-Feb-2020, 10:54:25
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,com.models.*"%>
<jsp:include page="base.jsp"></jsp:include>
    <!DOCTYPE html>
    <html lang="en">

        <head>

            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="">
            <meta name="author" content="">

            <title>Contact us </title>

            <!-- Bootstrap core CSS -->
            <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

            <!-- Custom styles for this template -->
            <link href="assests/css/shop-homepage.css" rel="stylesheet">

            <style>
                body{
    background: -webkit-linear-gradient(left, #0072ff, #00c6ff);
}
.contact-form{
    background: #fff;
    margin-top: 10%;
    margin-bottom: 5%;
    width: 70%;
}
.contact-form .form-control{
    border-radius:1rem;
}
.contact-image{
    text-align: center;
}
.contact-image img{
    border-radius: 6rem;
    width: 11%;
    margin-top: -3%;
    transform: rotate(29deg);
}
.contact-form form{
    padding: 14%;
}
.contact-form form .row{
    margin-bottom: -7%;
}
.contact-form h3{
    margin-bottom: 8%;
    margin-top: -10%;
    text-align: center;
    color: #0062cc;
}
.contact-form .btnContact {
    width: 50%;
    border: none;
    border-radius: 1rem;
    padding: 1.5%;
    background: #dc3545;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
}
.btnContactSubmit
{
    width: 50%;
    border-radius: 1rem;
    padding: 1.5%;
    color: #fff;
    background-color: #0062cc;
    border: none;
    cursor: pointer;
}
.login-form {
		width: 340px;
    	margin: 50px auto;
	}
    .login-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }
   
            </style>
        </head>

        <body>

            <!-- Navigation -->
        <jsp:include page="navbar.jsp"></jsp:include>

            <!-- Page Content -->
                                    
<div class="container contact-form">
            <div class="contact-image">
                <img src="assets/images/login.png" alt="rocket_contact" style=" transform: rotate(0deg)"/>
            </div>
             
            
<div class="login-form">
    <%
        Cookie cookies [] = request.getCookies();
        String userid="";
        String password="";
        
        for (Cookie c : cookies){
            if(c.getName().equals("userid"))
                userid= c.getValue();
            if (c.getName().equals("password"))
                password = c.getValue();
        }
        
        
        
    String msg = request.getParameter("msg");
    if(msg!=null)
        out.println("<font color='red' size='5' face='corbel'>"+msg+"</font>");
    %>
    <form action="First?op=login" method="post">
        <h2 class="text-center">Log in</h2>       
        <div class="form-group">
            <input type="text"  value="<%=userid%>" class="form-control" placeholder="userid" required="required" name="userid">
        </div>
        <div class="form-group">
            <input type="password" value="<%=password%>" class="form-control" placeholder="password" required="required" name="password"> 
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Log in</button>
        </div>
        <div class="clearfix">
            <label class="pull-left checkbox-inline"><input type="checkbox" name="remember" value="remember"> Remember me</label>
            <a href="#" class="pull-right">Forgot Password?</a>
        </div>        
    </form>
    <p class="text-center"><a href="index.jsp">Create an Account</a></p>
</div>
    
        </div>
        <!-- /.container -->

        <!-- Footer -->
        <jsp:include page="footer.jsp"></jsp:include>

        <!-- Bootstrap core JavaScript -->
        <script src="assests/jquery/jquery.min.js"></script>
        <script src="assests/js/bootstrap.bundle.min.js"></script>

    </body>

    
   
</html>
