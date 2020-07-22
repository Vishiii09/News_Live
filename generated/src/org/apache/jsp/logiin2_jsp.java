package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.models.*;

public final class logiin2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "base.jsp", out, false);
      out.write("\n");
      out.write("    <!DOCTYPE html>\n");
      out.write("    <html lang=\"en\">\n");
      out.write("\n");
      out.write("        <head>\n");
      out.write("\n");
      out.write("            <meta charset=\"utf-8\">\n");
      out.write("            <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("            <meta name=\"description\" content=\"\">\n");
      out.write("            <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("            <title>Contact us </title>\n");
      out.write("\n");
      out.write("            <!-- Bootstrap core CSS -->\n");
      out.write("            <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("            <!-- Custom styles for this template -->\n");
      out.write("            <link href=\"assests/css/shop-homepage.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("            <style>\n");
      out.write("                body{\n");
      out.write("    background: -webkit-linear-gradient(left, #0072ff, #00c6ff);\n");
      out.write("}\n");
      out.write(".contact-form{\n");
      out.write("    background: #fff;\n");
      out.write("    margin-top: 10%;\n");
      out.write("    margin-bottom: 5%;\n");
      out.write("    width: 70%;\n");
      out.write("}\n");
      out.write(".contact-form .form-control{\n");
      out.write("    border-radius:1rem;\n");
      out.write("}\n");
      out.write(".contact-image{\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write(".contact-image img{\n");
      out.write("    border-radius: 6rem;\n");
      out.write("    width: 11%;\n");
      out.write("    margin-top: -3%;\n");
      out.write("    transform: rotate(29deg);\n");
      out.write("}\n");
      out.write(".contact-form form{\n");
      out.write("    padding: 14%;\n");
      out.write("}\n");
      out.write(".contact-form form .row{\n");
      out.write("    margin-bottom: -7%;\n");
      out.write("}\n");
      out.write(".contact-form h3{\n");
      out.write("    margin-bottom: 8%;\n");
      out.write("    margin-top: -10%;\n");
      out.write("    text-align: center;\n");
      out.write("    color: #0062cc;\n");
      out.write("}\n");
      out.write(".contact-form .btnContact {\n");
      out.write("    width: 50%;\n");
      out.write("    border: none;\n");
      out.write("    border-radius: 1rem;\n");
      out.write("    padding: 1.5%;\n");
      out.write("    background: #dc3545;\n");
      out.write("    font-weight: 600;\n");
      out.write("    color: #fff;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write(".btnContactSubmit\n");
      out.write("{\n");
      out.write("    width: 50%;\n");
      out.write("    border-radius: 1rem;\n");
      out.write("    padding: 1.5%;\n");
      out.write("    color: #fff;\n");
      out.write("    background-color: #0062cc;\n");
      out.write("    border: none;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write(".login-form {\n");
      out.write("\t\twidth: 340px;\n");
      out.write("    \tmargin: 50px auto;\n");
      out.write("\t}\n");
      out.write("    .login-form form {\n");
      out.write("    \tmargin-bottom: 15px;\n");
      out.write("        background: #f7f7f7;\n");
      out.write("        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);\n");
      out.write("        padding: 30px;\n");
      out.write("    }\n");
      out.write("    .login-form h2 {\n");
      out.write("        margin: 0 0 15px;\n");
      out.write("    }\n");
      out.write("    .form-control, .btn {\n");
      out.write("        min-height: 38px;\n");
      out.write("        border-radius: 2px;\n");
      out.write("    }\n");
      out.write("    .btn {        \n");
      out.write("        font-size: 15px;\n");
      out.write("        font-weight: bold;\n");
      out.write("    }\n");
      out.write("   \n");
      out.write("            </style>\n");
      out.write("        </head>\n");
      out.write("\n");
      out.write("        <body>\n");
      out.write("\n");
      out.write("            <!-- Navigation -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Page Content -->\n");
      out.write("                                    \n");
      out.write("<div class=\"container contact-form\">\n");
      out.write("            <div class=\"contact-image\">\n");
      out.write("                <img src=\"assets/images/login.png\" alt=\"rocket_contact\" style=\" transform: rotate(0deg)\"/>\n");
      out.write("            </div>\n");
      out.write("             \n");
      out.write("            \n");
      out.write("<div class=\"login-form\">\n");
      out.write("    ");

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
    
      out.write("\n");
      out.write("    <form action=\"First?op=login\" method=\"post\">\n");
      out.write("        <h2 class=\"text-center\">Log in</h2>       \n");
      out.write("        <div class=\"form-group\">\n");
      out.write("            <input type=\"text\"  value=\"");
      out.print(userid);
      out.write("\" class=\"form-control\" placeholder=\"userid\" required=\"required\" name=\"userid\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("            <input type=\"password\" value=\"");
      out.print(password);
      out.write("\" class=\"form-control\" placeholder=\"password\" required=\"required\" name=\"password\"> \n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary btn-block\">Log in</button>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"clearfix\">\n");
      out.write("            <label class=\"pull-left checkbox-inline\"><input type=\"checkbox\" name=\"remember\" value=\"remember\"> Remember me</label>\n");
      out.write("            <a href=\"#\" class=\"pull-right\">Forgot Password?</a>\n");
      out.write("        </div>        \n");
      out.write("    </form>\n");
      out.write("    <p class=\"text-center\"><a href=\"index.jsp\">Create an Account</a></p>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("        </div>\n");
      out.write("        <!-- /.container -->\n");
      out.write("\n");
      out.write("        <!-- Footer -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core JavaScript -->\n");
      out.write("        <script src=\"assests/jquery/jquery.min.js\"></script>\n");
      out.write("        <script src=\"assests/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("    \n");
      out.write("   \n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
