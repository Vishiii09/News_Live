<%-- 
    Document   : home
    Created on : 19-Feb-2020, 10:54:25
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<jsp:include page="base.jsp"></jsp:include>
    <!DOCTYPE html>
    <html lang="en">

        <head>

            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="">
            <meta name="author" content="">

            <title>About us</title>

            <!-- Bootstrap core CSS -->
            <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

            <!-- Custom styles for this template -->
            <link href="assests/css/shop-homepage.css" rel="stylesheet">

        </head>

        <body>

            <!-- Navigation -->
        <jsp:include page="nav.jsp"></jsp:include>

            <!-- Page Content -->
            <div class="container">

                <div class="row">

                <jsp:include page="sidebar.jsp"></jsp:include>
                    <!-- /.col-lg-3 -->

                    <div class="col-lg-9">
                    <%-- <jsp:include page="crousel.jsp"></jsp:include>--%>


                    <div class="row">
                        <div class="col" style="text-align: justify ">
                            <br/>
                            <img src="assests/images/about.jpg" style="width:100%;height:350px"/><br/>
                            Building a website is, in many ways, an exercise of willpower. It’s tempting to get distracted by the bells and whistles of the design process, and forget all about creating compelling content.

                            It's that compelling content that's crucial to making inbound marketing work for your business.

                            So how do you balance your remarkable content creation with your web design needs? It all starts with the "About Us" page.
                            Download our collection of awesome 'About Us' page examples here, and get tips for making yours great, too. 

                            For a remarkable about page, all you need to do is figure out your company's unique identity, and then share it with the world. Easy, right? Of course not. Your "About Us" page is one of the most important pages on your website, and it needs to be well crafted. This profile also happens to be one of the most commonly overlooked pages, which is why you should make it stand out.

                            The good news? It can be done. In fact, there are some companies out there with remarkable "About Us" pages, the elements of which you can emulate on your own website.

                            By the end of this post, you'll know what makes some of today's best "About Us" and "About Me" pages so great, and how to make your own about page that shares your company's greatness.

                        </div>
                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.col-lg-9 -->

            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

        <!-- Footer -->
        <jsp:include page="footer.jsp"></jsp:include>

        <!-- Bootstrap core JavaScript -->
        <script src="assests/jquery/jquery.min.js"></script>
        <script src="assests/js/bootstrap.bundle.min.js"></script>

    </body>

</html>
