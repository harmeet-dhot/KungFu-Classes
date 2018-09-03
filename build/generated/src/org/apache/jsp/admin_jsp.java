package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Login page</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <script src=\"jquery-1.12.2.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <link href=\"w3.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <style> \n");
      out.write("\n");
      out.write("            .footer \n");
      out.write("            {\n");
      out.write("                position: fixed;\n");
      out.write("                bottom: 0px;\n");
      out.write("                padding-top:20px;\n");
      out.write("                color:#fff;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script>\n");
      out.write("            function goToHomePage()\n");
      out.write("            {\n");
      out.write("                window.location.href = \"./admin.jsp\";\n");
      out.write("            }\n");
      out.write("            history.pushState(null, null, '');\n");
      out.write("            window.addEventListener('popstate', function (event) {\n");
      out.write("                history.pushState(null, null, 'admin.jsp')\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("    <body id=\"body\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <br>\n");
      out.write("\n");
      out.write("        <div class=\"row\" id=\"main\">\n");
      out.write("            <div class=\"col-sm-1\"></div>\n");
      out.write("            <div class=\"col-sm-6\" style=\"margin:auto;\">\n");
      out.write("                <div class=\"w3-card-4\" style=\"width:0 auto; margin: auto; height: 280px;\">\n");
      out.write("\n");
      out.write("                    <!-- Modal content-->\n");
      out.write("                    <div class=\"modal-header\" style=\" background-color:#005b96; padding:5px 5px;\">\n");
      out.write("                        <center>    <h4 style=\"color: #ffffff;\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</h4></center>\n");
      out.write("                    </div>\n");
      out.write("                    <form action=\"admin_login.jsp\">\n");
      out.write("                        <br>\n");
      out.write("                        <input type=\"text\"  required placeholder=\"User Name\" name=\"email\" class=\"form-control\">\n");
      out.write("                        <br>\n");
      out.write("                        <input type=\"password\" required placeholder=\"Password\" name=\"pass\" class=\"form-control\">\n");
      out.write("                        <br>\n");
      out.write("                        <input type=\"Submit\" value=\"Submit\" class=\"btn btn-primary\">\n");
      out.write("                    </form>\n");
      out.write("                 \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                ");
                    
            String msg = request.getParameter("msg");
                    if (msg != null) {
                
      out.write("\n");
      out.write("                <div class=\"alert alert-danger fade in\" >\n");
      out.write("                    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" label=\"close\">&times;</a>\n");
      out.write("                    <strong>");
      out.print(msg);
      out.write(" !</strong> \n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                ");


                    }


                
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"container-fluid footer\" style=\" color: #000000;\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-12 text-center\" style=\"font-family: 'Open Sans'; font-size: 12px;\"> &copy;2018\n");
      out.write("                        STEPHANOS KUNGFU CLUB. All Rights Reserved\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
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
