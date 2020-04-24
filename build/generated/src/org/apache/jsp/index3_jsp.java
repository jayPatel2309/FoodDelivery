package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import extra.index;
import java.util.Iterator;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import com.Items;
import java.util.ArrayList;
import java.sql.DriverManager;
import java.util.logging.Logger;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.util.logging.Level;

public final class index3_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

    String s = request.getParameter("message");
    System.out.println(s    );

      out.write("\n");
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
      out.write("  <title>Food Delivery</title>\n");
      out.write("  <style>\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  <!-- header -->\n");
      out.write("  ");
 if (s!=null && s.equals("success_login")){
      out.write("\n");
      out.write("         <div class=\"alert alert-success alert-dismissible fade show\">\n");
      out.write("            <strong>Logged in suceess fully.</strong> \n");
      out.write("            <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>\n");
      out.write("        </div>\n");
}
      out.write('\n');
      out.write(' ');
 if (s!=null && s.equals("order_placed")){
      out.write("\n");
      out.write("         <div class=\"alert alert-success alert-dismissible fade show\">\n");
      out.write("            <strong>Order Placed suceess fully.</strong> \n");
      out.write("            <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>\n");
      out.write("        </div>\n");
}
      out.write("\n");
      out.write("  ");
 if (s!=null && s.equals("success_signup")){
      out.write("\n");
      out.write("         <div class=\"alert alert-success alert-dismissible fade show\">\n");
      out.write("            <strong>SignUp in suceess fully.Please Login</strong> \n");
      out.write("            <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>\n");
      out.write("        </div>\n");
}
      out.write('\n');
 if (s!=null && s.equals("something_wrong")){
      out.write("\n");
      out.write("         <div class=\"alert alert-danger alert-dismissible fade show\">\n");
      out.write("            <strong>Something went wrong.</strong>\n");
      out.write("            <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>\n");
      out.write("        </div>\n");
}
      out.write('\n');
 if (s!=null && s.equals("login_before")){
      out.write("\n");
      out.write("         <div class=\"alert alert-danger alert-dismissible fade show\">\n");
      out.write("            <strong>Login before use.</strong>\n");
      out.write("            <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>\n");
      out.write("        </div>\n");
}
      out.write("\n");
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
      out.write("            <a class=\"nav-link\" href=\"index3.jsp\">home</a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link \" href=\"#\">about</a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"#\">store</a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("       </div>\n");
      out.write("          ");

                  double total = 0;
                  ArrayList<Items> item = new ArrayList<Items>();
                if(request.getServletContext().getAttribute("items")!=null){
                    item =(ArrayList<Items>) request.getServletContext().getAttribute("items");}
          
      out.write("\n");
      out.write("        <div class=\"nav-info-items d-none d-lg-flex \">\n");
      out.write("          <div id=\"cart-info\" class=\"nav-info align-items-center cart-info d-flex justify-content-between mx-lg-5\">\n");
      out.write("            <span class=\"cart-info__icon mr-lg-3\"><i class=\"fas fa-shopping-cart\"></i></span>\n");
      out.write("            <p class=\"mb-0 text-capitalize\"><span id=\"item-count\">");
      out.print(item.size());
      out.write(" </span> items\n");
      out.write("                <!--- <i class=\"fas fa-rupee-sign\"></i><span class=\"item-total\">10.49</span>-->\n");
      out.write("            </p>\n");
      out.write("          </div>\n");
      out.write("          <!-- end of single info -->\n");
      out.write("       ");

           HttpSession session1 = request.getSession(false);
           String sess_user_email = null;
           if(session1!=null){
               sess_user_email = (String)session1.getAttribute("user");
               System.out.println("index3"+session1.getId());
               System.out.println("email"+sess_user_email);
           }
           if(sess_user_email==null){
       
      out.write("\n");
      out.write("          <div class=\"button\">\n");
      out.write("              <a href=\"login.jsp\"><button type=\"button\" class=\"btn btn-outline-dark\">Login</button></a>\n");
      out.write("            <a href=\"signup.jsp\"><button type=\"button\" class=\"btn btn-outline-dark\">SignUp</button></a>\n");
      out.write("          </div>\n");
      out.write("          ");
}else{
          
      out.write("\n");
      out.write("          <a href=\"user_logout\"><button type=\"button\" class=\"btn btn-outline-dark\">Logout</button></a>\n");
      out.write("          ");
}
      out.write("\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("    <!-- end of nav -->\n");
      out.write("    <!-- banner  -->\n");
      out.write("\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("      <div class=\"row max-height justify-content-center align-items-center\">\n");
      out.write("        <div class=\"col-10 mx-auto banner text-center\">\n");
      out.write("          <h1 class=\"text-capitalize\">welcome to <strong class=\"banner-title \">Real Reasturant</strong></h1>\n");
      out.write("          <a href=\"#store\" class=\"btn banner-link text-uppercase my-2\">explore</a>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div id=\"cart\" class=\"cart\">\n");
      out.write("          <!-- cart item -->\n");
      out.write("              \n");
      out.write("               ");
    
                    if(item!=null){
                        for(Items i:item){
                            total += i.getPrice();
             
      out.write("\n");
      out.write("          <div class=\"cart-item d-flex justify-content-between text-capitalize my-3\">\n");
      out.write("            <img src=\"img-cart/cake-2.jpeg\" class=\"img-fluid rounded-circle\" id=\"item-img\" alt=\"\">\n");
      out.write("            <div class=\"item-text\">\n");
      out.write("\n");
      out.write("                <p id=\"cart-item-title\" class=\"font-weight-bold mb-0\">");
      out.print(i.getName());
      out.write("</p>\n");
      out.write("              <span><i class=\"fas fa-rupee-sign\"></i></span>\n");
      out.write("              <span id=\"cart-item-price\" class=\"cart-item-price\" class=\"mb-0\">");
      out.print(i.getPrice());
      out.write("</span>\n");
      out.write("            </div>\n");
      out.write("            <a href=\"remove_item2?id=");
      out.print(i.getId());
      out.write("\" id='cart-item-remove' class=\"cart-item-remove\">\n");
      out.write("              <i class=\"fas fa-trash\"></i>\n");
      out.write("            </a>\n");
      out.write("          </div>\n");
      out.write("          <!--end of  cart item -->\n");
      out.write("          ");

                    }   
            }
    
      out.write("\n");
      out.write("          <!-- cart total -->\n");
      out.write("          <div class=\"cart-total-container d-flex justify-content-around text-capitalize mt-5\">\n");
      out.write("            <h5>total</h5>\n");
      out.write("            <h5> <i class=\"fas fa-rupee-sign\"></i> <strong id=\"cart-total\" class=\"font-weight-bold\">");
      out.print(total);
      out.write("</strong> </h5>\n");
      out.write("          </div>\n");
      out.write("          <!--end cart total -->\n");
      out.write("          <!-- cart buttons -->\n");
      out.write("          ");
if(!item.isEmpty()){
      out.write("\n");
      out.write("          <div class=\"cart-buttons-container mt-3 d-flex justify-content-between\">\n");
      out.write("              <a href=\"remove_item2?id=-1\" id=\"clear-cart\" class=\"btn btn-outline-secondary btn-black text-uppercase\">clear cart</a>\n");
      out.write("            <a href=\"checkout.jsp\" class=\"btn btn-outline-secondary text-uppercase btn-pink\">checkout</a>\n");
      out.write("          </div>");
}
      out.write("\n");
      out.write("          <!--end of  cart buttons -->\n");
      out.write("          <!--  -->\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("        \n");
      out.write("    <!--end of  banner  -->\n");
      out.write("  </header>\n");
      out.write("  <!-- header -->\n");
      out.write("  <!-- about us -->\n");
      out.write("  <section class=\"about py-5\" id=\"about\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-10 mx-auto col-md-6 my-5\">\n");
      out.write("          <h1 class=\"text-capitalize\">about <strong class=\"banner-title \">us</strong></h1>\n");
      out.write("          <p class=\"my-4 text-muted w-75\">We prepare delicious food for you and deliver it to your home.</p>\n");
      out.write("          <a href=\"#\" class=\"btn btn-outline-secondary btn-black text-uppercase \">explore</a>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-10 mx-auto col-md-6 align-self-center my-5\">\n");
      out.write("          <div class=\"about-img__container\">\n");
      out.write("            <img src=\"img/sweets-1.jpeg\" class=\"img-fluid\" alt=\"\">\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </section>\n");
      out.write("\n");
      out.write("  <!-- end of about us -->\n");
      out.write("\n");
      out.write("\n");
      out.write("  <!-- store -->\n");
      out.write("  <section id=\"store\" class=\"store py-5\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <!-- section title -->\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-10 mx-auto col-sm-6 text-center\">\n");
      out.write("          <h1 class=\"text-capitalize\">our <strong class=\"banner-title \">store</strong></h1>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <!-- end of section title -->\n");
      out.write("      <!--filter buttons -->\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\" col-lg-8 mx-auto d-flex justify-content-around my-2 sortBtn flex-wrap\">\n");
      out.write("          <a href=\"#\" class=\"btn btn-outline-secondary btn-black text-uppercase filter-btn m-2\" data-filter=\"all\"> all</a>\n");
      out.write("          <a href=\"#\" class=\"btn btn-outline-secondary btn-black text-uppercase filter-btn m-2\" data-filter=\"cakes\">cakes</a>\n");
      out.write("          <a href=\"#\" class=\"btn btn-outline-secondary btn-black text-uppercase filter-btn m-2\" data-filter=\"cupcakes\">cupcakes</a>\n");
      out.write("          <a href=\"#\" class=\"btn btn-outline-secondary btn-black text-uppercase filter-btn m-2\" data-filter=\"sweets\">sweets</a>\n");
      out.write("          <a href=\"#\" class=\"btn btn-outline-secondary btn-black text-uppercase filter-btn m-2\" data-filter=\"doughnuts\">doughnuts</a>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <!-- search box -->\n");
      out.write("      <div class=\"row\">\n");
      out.write("\n");
      out.write("        <div class=\"col-10 mx-auto col-md-6\">\n");
      out.write("          <form>\n");
      out.write("            <div class=\"input-group mb-3\">\n");
      out.write("              <div class=\"input-group-prepend \">\n");
      out.write("                <span class=\"input-group-text search-box\" id=\"search-icon\"><i class=\"fas fa-search\"></i></span>\n");
      out.write("              </div>\n");
      out.write("              <input type=\"text\" class=\"form-control\" placeholder='item....' id=\"search-item\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("          </form>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <!--end of filter buttons -->\n");
      out.write("      <!-- store  items-->\n");
      out.write("      <div class=\"row\" class=\"store-items\" id=\"store-items\">\n");
      out.write("          ");

            String url = "jdbc:mysql://localhost:3306/food";
            String user = "root";
            String pass = "";
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(index.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                 Connection conn = DriverManager.getConnection(url, user, pass);
                 Statement stmt = conn.createStatement();
                 ResultSet rs = stmt.executeQuery("select * from food_item");
                 while(rs.next()){
                     
         
      out.write("\n");
      out.write("        <!-- single item -->\n");
      out.write("        <div class=\"col-10 col-sm-6 col-lg-4 mx-auto my-3 store-item doughnuts\" data-item=\"dougnuts\">\n");
      out.write("          <div class=\"card \">\n");
      out.write("            <div class=\"img-container\">\n");
      out.write("              <img src=\"");
      out.print(rs.getString(3));
      out.write("\" class=\"card-img-top store-img\" alt=\"\">\n");
      out.write("              <span class=\"store-item-icon\">\n");
      out.write("                  <a href=\"add_item2?id=");
      out.print(rs.getInt(1));
      out.write("&name=");
      out.print(rs.getString(2));
      out.write("&price=");
      out.print(rs.getInt(4));
      out.write("\"><i class=\"fas fa-shopping-cart\"></i></a>\n");
      out.write("              </span>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("              <div class=\"card-text d-flex justify-content-between text-capitalize\">\n");
      out.write("                  <h5 id=\"store-item-name\">");
      out.print(rs.getString(2));
      out.write("</h5>\n");
      out.write("                <h5 class=\"store-item-value\"><i class=\"fas fa-rupee-sign\"></i> <strong id=\"store-item-price\" class=\"font-weight-bold\">");
      out.print(rs.getDouble(4));
      out.write("</strong></h5>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("          </div>\n");
      out.write("          <!-- end of card-->\n");
      out.write("        </div>\n");
      out.write("        ");

                     
                 }
            } catch (SQLException ex) {
                Logger.getLogger(index.class.getName()).log(Level.SEVERE, null, ex);
            }
          
      out.write("\n");
      out.write("        <!--end of single store item-->\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("  </section>\n");
      out.write("  <!--end of store items -->\n");
      out.write("\n");
      out.write("\n");
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
