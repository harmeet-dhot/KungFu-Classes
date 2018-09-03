package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class temp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("    <head></head>\n");
      out.write("    <style>/*\n");
      out.write("\tMax width before this PARTICULAR table gets nasty. This query will take effect for any screen smaller than 760px and also iPads specifically.\n");
      out.write("\t*/\n");
      out.write("\t@media\n");
      out.write("\t  only screen \n");
      out.write("    and (max-width: 760px), (min-device-width: 768px) \n");
      out.write("    and (max-device-width: 1024px)  {\n");
      out.write("\n");
      out.write("\t\t/* Force table to not be like tables anymore */\n");
      out.write("\t\ttable, thead, tbody, th, td, tr {\n");
      out.write("\t\t\tdisplay: block;\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\t/* Hide table headers (but not display: none;, for accessibility) */\n");
      out.write("\t\tthead tr {\n");
      out.write("\t\t\tposition: absolute;\n");
      out.write("\t\t\ttop: -9999px;\n");
      out.write("\t\t\tleft: -9999px;\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("    tr {\n");
      out.write("      margin: 0 0 1rem 0;\n");
      out.write("    }\n");
      out.write("      \n");
      out.write("    tr:nth-child(odd) {\n");
      out.write("      background: #ccc;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("\t\ttd {\n");
      out.write("\t\t\t/* Behave  like a \"row\" */\n");
      out.write("\t\t\tborder: none;\n");
      out.write("\t\t\tborder-bottom: 1px solid #eee;\n");
      out.write("\t\t\tposition: relative;\n");
      out.write("\t\t\tpadding-left: 50%;\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\ttd:before {\n");
      out.write("\t\t\t/* Now like a table header */\n");
      out.write("\t\t\tposition: absolute;\n");
      out.write("\t\t\t/* Top/left values mimic padding */\n");
      out.write("\t\t\ttop: 0;\n");
      out.write("\t\t\tleft: 6px;\n");
      out.write("\t\t\twidth: 45%;\n");
      out.write("\t\t\tpadding-right: 10px;\n");
      out.write("\t\t\twhite-space: nowrap;\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\t/*\n");
      out.write("\t\tLabel the data\n");
      out.write("    You could also use a data-* attribute and content for this. That way \"bloats\" the HTML, this way means you need to keep HTML and CSS in sync. Lea Verou has a clever way to handle with text-shadow.\n");
      out.write("\t\t*/\n");
      out.write("\t\ttd:nth-of-type(1):before { content: \"First Name\"; }\n");
      out.write("\t\ttd:nth-of-type(2):before { content: \"Last Name\"; }\n");
      out.write("\t\ttd:nth-of-type(3):before { content: \"Job Title\"; }\n");
      out.write("\t\ttd:nth-of-type(4):before { content: \"Favorite Color\"; }\n");
      out.write("\t\ttd:nth-of-type(5):before { content: \"Wars of Trek?\"; }\n");
      out.write("\t\ttd:nth-of-type(6):before { content: \"Secret Alias\"; }\n");
      out.write("\t\ttd:nth-of-type(7):before { content: \"Date of Birth\"; }\n");
      out.write("\t\ttd:nth-of-type(8):before { content: \"Dream Vacation City\"; }\n");
      out.write("\t\ttd:nth-of-type(9):before { content: \"GPA\"; }\n");
      out.write("\t\ttd:nth-of-type(10):before { content: \"Arbitrary Data\"; }\n");
      out.write("\t}</style>\n");
      out.write("    <body>\n");
      out.write("<table role=\"table\">\n");
      out.write("  <thead role=\"rowgroup\">\n");
      out.write("    <tr role=\"row\">\n");
      out.write("      <th role=\"columnheader\">First Name</th>\n");
      out.write("      <th role=\"columnheader\">Last Name</th>\n");
      out.write("      <th role=\"columnheader\">Job Title</th>\n");
      out.write("      <th role=\"columnheader\">Favorite Color</th>\n");
      out.write("      <th role=\"columnheader\">Wars or Trek?</th>\n");
      out.write("      <th role=\"columnheader\">Secret Alias</th>\n");
      out.write("      <th role=\"columnheader\">Date of Birth</th>\n");
      out.write("      <th role=\"columnheader\">Dream Vacation City</th>\n");
      out.write("      <th role=\"columnheader\">GPA</th>\n");
      out.write("      <th role=\"columnheader\">Arbitrary Data</th>\n");
      out.write("    </tr>\n");
      out.write("  </thead>\n");
      out.write("  <tbody role=\"rowgroup\">\n");
      out.write("    <tr role=\"row\">\n");
      out.write("      <td role=\"cell\">James</td>\n");
      out.write("      <td role=\"cell\">Matman</td>\n");
      out.write("      <td role=\"cell\">Chief Sandwich Eater</td>\n");
      out.write("      <td role=\"cell\">Lettuce Green</td>\n");
      out.write("      <td role=\"cell\">Trek</td>\n");
      out.write("      <td role=\"cell\">Digby Green</td>\n");
      out.write("      <td role=\"cell\">January 13, 1979</td>\n");
      out.write("      <td role=\"cell\">Gotham City</td>\n");
      out.write("      <td role=\"cell\">3.1</td>\n");
      out.write("      <td role=\"cell\">RBX-12</td>\n");
      out.write("    </tr>\n");
      out.write("    <tr role=\"row\">\n");
      out.write("      <td role=\"cell\">The</td>\n");
      out.write("      <td role=\"cell\">Tick</td>\n");
      out.write("      <td role=\"cell\">Crimefighter Sorta</td>\n");
      out.write("      <td role=\"cell\">Blue</td>\n");
      out.write("      <td role=\"cell\">Wars</td>\n");
      out.write("      <td role=\"cell\">John Smith</td>\n");
      out.write("      <td role=\"cell\">July 19, 1968</td>\n");
      out.write("      <td role=\"cell\">Athens</td>\n");
      out.write("      <td role=\"cell\">N/A</td>\n");
      out.write("      <td role=\"cell\">Edlund, Ben (July 1996).</td>\n");
      out.write("    </tr>\n");
      out.write("    <tr role=\"row\">\n");
      out.write("      <td role=\"cell\">Jokey</td>\n");
      out.write("      <td role=\"cell\">Smurf</td>\n");
      out.write("      <td role=\"cell\">Giving Exploding Presents</td>\n");
      out.write("      <td role=\"cell\">Smurflow</td>\n");
      out.write("      <td role=\"cell\">Smurf</td>\n");
      out.write("      <td role=\"cell\">Smurflane Smurfmutt</td>\n");
      out.write("      <td role=\"cell\">Smurfuary Smurfteenth, 1945</td>\n");
      out.write("      <td role=\"cell\">New Smurf City</td>\n");
      out.write("      <td role=\"cell\">4.Smurf</td>\n");
      out.write("      <td role=\"cell\">One</td>\n");
      out.write("    </tr>\n");
      out.write("    <tr role=\"row\">\n");
      out.write("      <td role=\"cell\">Cindy</td>\n");
      out.write("      <td role=\"cell\">Beyler</td>\n");
      out.write("      <td role=\"cell\">Sales Representative</td>\n");
      out.write("      <td role=\"cell\">Red</td>\n");
      out.write("      <td role=\"cell\">Wars</td>\n");
      out.write("      <td role=\"cell\">Lori Quivey</td>\n");
      out.write("      <td role=\"cell\">July 5, 1956</td>\n");
      out.write("      <td role=\"cell\">Paris</td>\n");
      out.write("      <td role=\"cell\">3.4</td>\n");
      out.write("      <td role=\"cell\">3451</td>\n");
      out.write("    </tr>\n");
      out.write("    <tr role=\"row\">\n");
      out.write("      <td role=\"cell\">Captain</td>\n");
      out.write("      <td role=\"cell\">Cool</td>\n");
      out.write("      <td role=\"cell\">Tree Crusher</td>\n");
      out.write("      <td role=\"cell\">Blue</td>\n");
      out.write("      <td role=\"cell\">Wars</td>\n");
      out.write("      <td role=\"cell\">Steve 42nd</td>\n");
      out.write("      <td role=\"cell\">December 13, 1982</td>\n");
      out.write("      <td role=\"cell\">Las Vegas</td>\n");
      out.write("      <td role=\"cell\">1.9</td>\n");
      out.write("      <td role=\"cell\">Under the couch</td>\n");
      out.write("    </tr>\n");
      out.write("  </tbody>\n");
      out.write("</table>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
