package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class aboutus_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            <title>About us</title>\n");
      out.write("\n");
      out.write("            <!-- Bootstrap core CSS -->\n");
      out.write("            <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("            <!-- Custom styles for this template -->\n");
      out.write("            <link href=\"assests/css/shop-homepage.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        </head>\n");
      out.write("\n");
      out.write("        <body>\n");
      out.write("\n");
      out.write("            <!-- Navigation -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "nav.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Page Content -->\n");
      out.write("            <div class=\"container\">\n");
      out.write("\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sidebar.jsp", out, false);
      out.write("\n");
      out.write("                    <!-- /.col-lg-3 -->\n");
      out.write("\n");
      out.write("                    <div class=\"col-lg-9\">\n");
      out.write("                    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col\" style=\"text-align: justify \">\n");
      out.write("                            <br/>\n");
      out.write("                            <img src=\"assests/images/about.jpg\" style=\"width:100%;height:350px\"/><br/>\n");
      out.write("                            Building a website is, in many ways, an exercise of willpower. It’s tempting to get distracted by the bells and whistles of the design process, and forget all about creating compelling content.\n");
      out.write("\n");
      out.write("                            It's that compelling content that's crucial to making inbound marketing work for your business.\n");
      out.write("\n");
      out.write("                            So how do you balance your remarkable content creation with your web design needs? It all starts with the \"About Us\" page.\n");
      out.write("                            Download our collection of awesome 'About Us' page examples here, and get tips for making yours great, too. \n");
      out.write("\n");
      out.write("                            For a remarkable about page, all you need to do is figure out your company's unique identity, and then share it with the world. Easy, right? Of course not. Your \"About Us\" page is one of the most important pages on your website, and it needs to be well crafted. This profile also happens to be one of the most commonly overlooked pages, which is why you should make it stand out.\n");
      out.write("\n");
      out.write("                            The good news? It can be done. In fact, there are some companies out there with remarkable \"About Us\" pages, the elements of which you can emulate on your own website.\n");
      out.write("\n");
      out.write("                            By the end of this post, you'll know what makes some of today's best \"About Us\" and \"About Me\" pages so great, and how to make your own about page that shares your company's greatness.\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /.row -->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!-- /.col-lg-9 -->\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <!-- /.row -->\n");
      out.write("\n");
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
