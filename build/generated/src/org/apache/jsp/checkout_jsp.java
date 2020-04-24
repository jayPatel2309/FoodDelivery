package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class checkout_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("  <!-- bootstrap css -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("  <!-- main css -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("\n");
      out.write("  <!-- font awesome -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/all.css\">\n");
      out.write("  <title>Cart Project</title>\n");
      out.write("  <style>\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  <!-- header -->\n");
      out.write("  <header>\n");
      out.write("    <!-- navbar  -->\n");
      out.write("    <!-- \n");
      out.write("https://www.iconfinder.com/icons/2427887/dessert_donut_doughnut_fat_sweets_icon\n");
      out.write("Creative Commons (Attribution 3.0 Unported);\n");
      out.write("https://www.iconfinder.com/korawan_m\n");
      out.write("     -->\n");
      out.write("    <nav class=\"navbar navbar-expand-lg px-4\">\n");
      out.write("      <a class=\"navbar-brand\" href=\"#\"><img src=\"img/logo.svg\" alt=\"\"></a>Real Reasturant\n");
      out.write("      <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#myNav\">\n");
      out.write("        <span class=\"toggler-icon\"><i class=\"fas fa-bars\"></i></span>\n");
      out.write("      </button>\n");
      out.write("      <div class=\"collapse navbar-collapse\" id=\"myNav\">\n");
      out.write("        <ul class=\"navbar-nav mx-5 text-capitalize\">\n");
      out.write("          <li class=\"nav-item active\">\n");
      out.write("              <a class=\"nav-link\" href=\"index3.jsp\">home</a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link \" href=\"under_con.jsp\">about</a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"under_con.jsp\">store</a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("          </div>\n");
      out.write("        <div class=\"nav-info-items d-none d-lg-flex \">\n");
      out.write("          <!-- single info -->\n");
      out.write("          <div class=\"button\">\n");
      out.write("              <a href=\"user_logout\"><button type=\"button\" class=\"btn btn-outline-dark\">Logout</button></a>\n");
      out.write("          </div>\n");
      out.write("          <!-- end of single info -->\n");
      out.write("        </div>\n");
      out.write("      \n");
      out.write("    </nav>\n");
      out.write("    <!-- end of nav -->\n");
      out.write("    <!-- banner  -->\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("      <div class=\"row max-height justify-content-center align-items-center\">\n");
      out.write("        <div class=\"col-10 mx-auto banner text-center\">\n");
      out.write("            \n");
      out.write("            <div class=\"container \">\n");
      out.write("                <div class=\"card m-auto\" style=\"width:30%\" >\n");
      out.write("                    <div class=\"card-header\">Curruntly only Cash-On delivery available....</div>\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <form action=\"user_login\">\n");
      out.write("                    </form>\n");
      out.write("            </div></div></div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!--end of  banner  -->\n");
      out.write("  </header>\n");
      out.write("  <!-- header -->\n");
      out.write("  <!-- modal-container -->\n");
      out.write("  <div class=\"container-fluid \">\n");
      out.write("    <div class=\"row lightbox-container align-items-center\">\n");
      out.write("      <div class=\"col-10 col-md-10 mx-auto text-right lightbox-holder\">\n");
      out.write("        <span class=\"lightbox-close\"><i class=\"fas fa-window-close\"></i></span>\n");
      out.write("        <div class=\"lightbox-item\"></div>\n");
      out.write("        <span class=\"lightbox-control btnLeft\"><i class=\"fas fa-caret-left\"></i></span>\n");
      out.write("        <span class=\"lightbox-control btnRight\"><i class=\"fas fa-caret-right\"></i></span>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <!-- jquery -->\n");
      out.write("  <script src=\"js/jquery-3.3.1.min.js\"></script>\n");
      out.write("  <!-- bootstrap js -->\n");
      out.write("  <script src=\"js/bootstrap.bundle.min.js\"></script>\n");
      out.write("  <!-- script js -->\n");
      out.write("  <script src=\"js/app.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
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
