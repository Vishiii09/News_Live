package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.beans.Person;
import com.daos.PersonDao;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> JSP Page</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "base.jsp", out, false);
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("                $(document).ready(function () {\n");
      out.write("                    $(\"#form1\").submit(function (e) {\n");
      out.write("\n");
      out.write("                        x = $(\"#password\").val();\n");
      out.write("                        y = $(\"#cpassword\").val();\n");
      out.write("\n");
      out.write("                        if (x === y)\n");
      out.write("                            return true;\n");
      out.write("                        else\n");
      out.write("                        {\n");
      out.write("                            alert('sorry! password and confirm password not matched');\n");
      out.write("                            e.preventDefault();\n");
      out.write("                        }\n");
      out.write("                    });\n");
      out.write("\n");
      out.write("                    $(\"#userid\").blur(function () {\n");
      out.write("                        $(\"#sp1\").load(\"PersonController?op=check_userid&userid=\" + $(this).val());\n");
      out.write("                    });\n");
      out.write("\n");
      out.write("                    $(\"#accept\").change(function () {\n");
      out.write("                        if ($(this).prop(\"checked\") == true) \n");
      out.write("                            $(\"#submit\").prop(\"disabled\",false);\n");
      out.write("                       else  \n");
      out.write("                             $(\"#submit\").prop(\"disabled\",true);\n");
      out.write("                       \n");
      out.write("                    });\n");
      out.write("\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                \n");
      out.write("\n");
      out.write("            </script>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    ");
      com.beans.Person person = null;
      synchronized (session) {
        person = (com.beans.Person) _jspx_page_context.getAttribute("person", PageContext.SESSION_SCOPE);
        if (person == null){
          person = new com.beans.Person();
          _jspx_page_context.setAttribute("person", person, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("        <div class='container'>\n");
      out.write("            <div class='row'>\n");
      out.write("                <div class='col'>\n");
      out.write("        <h1>Fill the form</h1>\n");
      out.write("        \n");
      out.write("        <form  method=\"post\" action=\"addpic.jsp\" class=\"form\">\n");
      out.write("      \n");
      out.write("            \n");
      out.write("            <table width=\"400\" class=\"table\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Enter Name </td>\n");
      out.write("                    <td><input type=\"text\" name=\"name\" required=\"required\" autocomplete=\"off\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${person.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"/> </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Enter Age </td>\n");
      out.write("                    <td> <input type=\"number\" name=\"age\" min=\"10\" max=\"20\"  class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${person.age}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"/>\n");
      out.write("                </tr>\n");
      out.write("                   <tr>\n");
      out.write("                    <td>Enter Father's Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"fname\"  class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${person.fname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"/> </td>\n");
      out.write("                </tr>\n");
      out.write("                   <tr>\n");
      out.write("                    <td>Select Gender  </td>\n");
      out.write("                    <td> <input type=\"radio\" name=\"gender\" value=\"Male\" ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${person.gender eq \"Male\"? \"checked\":\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/>Male <br/>\n");
      out.write("                        <input type=\"radio\" name=\"gender\" value=\"Female\" ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${person.gender eq \"Female\"? \"checked\":\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/>Female<br/>\n");
      out.write("                    </td>\n");
      out.write("                 </tr>\n");
      out.write("                   <tr>\n");
      out.write("                    <td>Select Hobbies </td>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"checkbox\" name=\"hobbies\" value=\"Dancing\" ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${person.hobbies eq \"Dancing\"? \"checked\":\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/>Dancing \n");
      out.write("                        <input type=\"checkbox\" name=\"hobbies\" value=\"Singing\" ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${person.hobbies eq \"Singing\"? \"checked\":\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/>Singing\n");
      out.write("                        <br/>\n");
      out.write("                        <input type=\"checkbox\" name=\"hobbies\" value=\"Cooking\" ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${person.hobbies eq \"Cooking\"? \"checked\":\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/>Cooking\n");
      out.write("                        <input type=\"checkbox\" name=\"hobbies\" value=\"Drawing\" ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${person.hobbies eq \"Drawing\"? \"checked\":\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/>Drawing \n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("               \n");
      out.write("                <tr>\n");
      out.write("                    <td>Enter Contact Number </td>\n");
      out.write("                    <td><input type=\"text\" name=\"contact\" maxlength=\"10\"  class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${person.contact}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                 <tr>\n");
      out.write("                    <td>Enter UserID </td>\n");
      out.write("                    <td><input type=\"text\" name=\"userid\" id=\"userid\"  class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${person.userid}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"/><br/>\n");
      out.write("                        <span id=\"sp1\"> </span> \n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                 <tr>\n");
      out.write("                    <td>Enter Password</td>\n");
      out.write("                    <td><input type=\"password\" name=\"password\" id=\"password\" class=\"form-control\" pattern=\"(?=^.{8,}$)((?=.*\\d)|(?=.*\\W+))(?![.\\n])(?=.*[A-Z])(?=.*[a-z]).*$\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${person.password}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"/> <br/>\n");
      out.write("                    password must contains atleast one lowercase one uppercase one special symbol and min len 8 char</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                 <tr>\n");
      out.write("                    <td>Retype Password </td>\n");
      out.write("                    <td><input type=\"password\" name=\"cpassword\" id=\"cpassword\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${person.password}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <td> </td>\n");
      out.write("                    <td><input type=\"checkbox\" name=\"accept\" id=\"accept\" onchange=\"checkAccept(this,submit);\"/> I Accept Terms and conditions</td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            <input type=\"submit\" name=\"submit\" value=\"Register\" class=\"btn btn-primary form-control\" id=\"submit\" disabled=\"disabled\"/>\n");
      out.write("        </form>\n");
      out.write("            \n");
      out.write("           \n");
      out.write("            \n");
      out.write("           \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
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
