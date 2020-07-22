package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("    <link rel=\"icon\" href=\"/docs/4.0/assets/img/favicons/favicon.ico\">\n");
      out.write("\n");
      out.write("    <title>Dashboard Template for Bootstrap</title>\n");
      out.write("\n");
      out.write("    <link rel=\"canonical\" href=\"https://getbootstrap.com/docs/4.0/examples/dashboard/\">\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "base.jsp", out, false);
      out.write("\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("  ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("      ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sidebar.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <main role=\"main\" class=\"col-md-9 ml-sm-auto col-lg-10 pt-3 px-4\">\n");
      out.write("         \n");
      out.write("        </main>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core JavaScript\n");
      out.write("    ================================================== -->\n");
      out.write("    <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script>window.jQuery || document.write('<script src=\"../../assets/js/vendor/jquery-slim.min.js\"><\\/script>')</script>\n");
      out.write("    <script src=\"../../assets/js/vendor/popper.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Icons -->\n");
      out.write("    <script src=\"https://unpkg.com/feather-icons/dist/feather.min.js\"></script>\n");
      out.write("    <script>\n");
      out.write("      feather.replace()\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("    <!-- Graphs -->\n");
      out.write("    <script src=\"assets/js/Chart.min.js\"></script>\n");
      out.write("    <script>\n");
      out.write("      var ctx = document.getElementById(\"myChart\");\n");
      out.write("      var myChart = new Chart(ctx, {\n");
      out.write("        type: 'line',\n");
      out.write("        data: {\n");
      out.write("          labels: [\"Sunday\", \"Monday\", \"Tuesday\", \"Wednesday\", \"Thursday\", \"Friday\", \"Saturday\"],\n");
      out.write("          datasets: [{\n");
      out.write("            data: [15339, 21345, 18483, 24003, 23489, 24092, 12034],\n");
      out.write("            lineTension: 0,\n");
      out.write("            backgroundColor: 'transparent',\n");
      out.write("            borderColor: '#007bff',\n");
      out.write("            borderWidth: 4,\n");
      out.write("            pointBackgroundColor: '#007bff'\n");
      out.write("          }]\n");
      out.write("        },\n");
      out.write("        options: {\n");
      out.write("          scales: {\n");
      out.write("            yAxes: [{\n");
      out.write("              ticks: {\n");
      out.write("                beginAtZero: false\n");
      out.write("              }\n");
      out.write("            }]\n");
      out.write("          },\n");
      out.write("          legend: {\n");
      out.write("            display: false,\n");
      out.write("          }\n");
      out.write("        }\n");
      out.write("      });\n");
      out.write("    </script>\n");
      out.write("  </body>\n");
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
