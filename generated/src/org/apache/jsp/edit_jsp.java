package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.daos.PersonDao;
import com.beans.Person;

public final class edit_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "base.jsp", out, false);
      out.write("\n");
      out.write("            <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("                function readURL(input) {\n");
      out.write("                    //       alert('hello');\n");
      out.write("                    if (input.files && input.files[0]) {\n");
      out.write("                        var reader = new FileReader();\n");
      out.write("\n");
      out.write("                        reader.onload = function (e) {\n");
      out.write("                            preview.src = e.target.result;\n");
      out.write("                        };\n");
      out.write("\n");
      out.write("                        reader.readAsDataURL(input.files[0]);\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            </script>\n");
      out.write("        </head>\n");
      out.write("        <body>\n");
      out.write("              <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div style=\"position: fixed; bottom:100px; width:600px\" class=\"col col-md-6\"> <center>\n");
      out.write("              ");
if (request.getParameter("submit") != null) {
                         Person person1 = (Person) session.getAttribute("person1");
                        
      out.write(" \n");
      out.write("                        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("person1"), request);
      out.write("\n");
      out.write("                        ");

                            String hobbies[] = request.getParameterValues("hobbies");
                            String hbs = "";
                            for (String s : hobbies) {
                                hbs += s + ",";
                            }
                            person1.setHobbies(hbs);
                        
      out.write("\n");
      out.write("                        \n");
      out.write("                        <form action=\"PersonController?op=update\" method=\"post\" enctype=\"multipart/form-data\" class=\"form\"> \n");
      out.write("                            <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${person1.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"img img-thumbnail\" width=\"200\" height=\"200\" id=\"preview\" border=\"2\"/> <br/>\n");
      out.write("                            <input type=\"file\" name=\"photo\"   onchange=\"readURL(this);\"/><br/><br>\n");
      out.write("                            <input type=\"submit\" value=\"Update\" class=\"btn btn-primary form-control\"/>\n");
      out.write("                        </form>\n");
      out.write("\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                        </center> </div></div>\n");
      out.write("            \n");
      out.write("          <div class=\"row\">\n");
      out.write("                    <div class=\"col col-md-6\">\n");
      out.write("                    ");

                        int id = request.getParameter("id") != null ? Integer.parseInt(request.getParameter("id")) : 0;
                        PersonDao pdo = new PersonDao();
                        Person person1 = (Person) session.getAttribute("person1");
                        if ((person1 == null || person1.getId()!=id) && (request.getParameter("submit")==null)) {
                            person1 = pdo.getById(id);
                        }
                        session.setAttribute("person1", person1);
                    
      out.write("\n");
      out.write("\n");
      out.write("                    <center>\n");
      out.write("                        <h1>Edit the Details </h1>\n");
      out.write("                        <form method='post'> \n");
      out.write("                            <input type=\"text\" value=\"");
      out.print(person1.getId());
      out.write("\" readonly=\"readonly\" name=\"id\"/>\n");
      out.write("                            <table width=\"600\">\n");
      out.write("                                <tr>\n");
      out.write("                                     <td>Enter Name </td>\n");
      out.write("                                    <td><input type=\"text\"  name=\"name\" required=\"required\" value=\"");
      out.print(person1.getName());
      out.write("\"></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Enter Father Name </td>\n");
      out.write("                                    <td><input type=\"text\" name=\"fname\" required=\"required\" value=\"");
      out.print(person1.getFname());
      out.write("\"></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Enter Age</td>\n");
      out.write("                                    <td><input type=\"number\" name=\"age\"  value=\"");
      out.print(person1.getAge());
      out.write("\"></td>\n");
      out.write("                                </tr>\n");
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Your userid</td>\n");
      out.write("                                    <td><input type=\"text\" name=\"userid\"  value=\"");
      out.print(person1.getUserid());
      out.write("\" readonly=\"readonly\"></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Select Gender </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"radio\" name=\"gender\" value=\"Male\"");
if (person1.getGender().equalsIgnoreCase("Male")) {
                            out.println("checked='checked'");
                        } 
      out.write("/>Male\n");
      out.write("                                        <br/>\n");
      out.write("                                        <input type=\"radio\" name=\"gender\" value=\"Female\" ");
if (person1.getGender().equalsIgnoreCase("Female")) {
                            out.println("checked='checked'");
                        } 
      out.write("/> Female\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Select Your Hobbies : </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"checkbox\" name=\"hobbies\" value=\"Dancing\" ");
if (person1.getHobbies().contains("Dancing")) {
                            out.println("checked='checked'");
                        } 
      out.write(">Dancing\n");
      out.write("                                        <input type=\"checkbox\" name=\"hobbies\" value=\"Singing\" ");
if (person1.getHobbies().contains("Singing")) {
                            out.println("checked='checked'");
                        } 
      out.write(">Singing <br/>\n");
      out.write("                                        <input type=\"checkbox\" name=\"hobbies\" value=\"Cooking\" ");
if (person1.getHobbies().contains("Cooking")) {
                            out.println("checked='checked'");
                        } 
      out.write(">Cooking\n");
      out.write("                                        <input type=\"checkbox\" name=\"hobbies\" value=\"Drawing\" ");
if (person1.getHobbies().contains("Drawing")) {
                            out.println("checked='checked'");
                        }
      out.write(">Drawing <br/>\n");
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Enter Contact Number </td>\n");
      out.write("                                    <td><input type=\"text\" name=\"contact\" maxlength=\"10\"  value=\"");
      out.print(person1.getContact());
      out.write("\"/></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr><th colspan=\"2\"> <input type=\"submit\" value=\"Save and Next\" class=\"btn btn-primary form-control\" name=\"submit\"/> </th></tr>\n");
      out.write("                            </table>\n");
      out.write("                        </form>\n");
      out.write("\n");
      out.write("                      \n");
      out.write("\n");
      out.write("                    </center>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("          </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
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
