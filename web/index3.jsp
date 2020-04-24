<%-- 
    Document   : index2.jsp
    Created on : 23 Apr, 2020, 9:38:10 AM
    Author     : Admin
--%>

<%@page import="extra.index"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.Items"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%--<%@page import="com.index"%>--%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.logging.Level"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<%
    String s = request.getParameter("message");
    System.out.println(s    );
%>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- bootstrap css -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <!-- main css -->
  <link rel="stylesheet" href="css/style.css">

  <!-- font awesome -->
  <link rel="stylesheet" href="css/all.css">
  <title>Food Delivery</title>
  <style>
  </style>
</head>

<body>
  <!-- header -->
  <% if (s!=null && s.equals("success_login")){%>
         <div class="alert alert-success alert-dismissible fade show">
            <strong>Logged in suceess fully.</strong> 
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
<%}%>
 <% if (s!=null && s.equals("order_placed")){%>
         <div class="alert alert-success alert-dismissible fade show">
            <strong>Order Placed suceess fully.</strong> 
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
<%}%>
  <% if (s!=null && s.equals("success_signup")){%>
         <div class="alert alert-success alert-dismissible fade show">
            <strong>SignUp in suceess fully.Please Login</strong> 
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
<%}%>
<% if (s!=null && s.equals("something_wrong")){%>
         <div class="alert alert-danger alert-dismissible fade show">
            <strong>Something went wrong.</strong>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
<%}%>
<% if (s!=null && s.equals("login_before")){%>
         <div class="alert alert-danger alert-dismissible fade show">
            <strong>Login before use.</strong>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
<%}%>
  <header>
    <!-- navbar  -->
    <!-- 
https://www.iconfinder.com/icons/2427887/dessert_donut_doughnut_fat_sweets_icon
Creative Commons (Attribution 3.0 Unported);
https://www.iconfinder.com/korawan_m
     -->
    <nav class="navbar navbar-expand-lg px-4">
      <a class="navbar-brand" href="#"><img src="img/logo.svg" alt=""></a>Real Reasturant
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNav">
        <span class="toggler-icon"><i class="fas fa-bars"></i></span>
      </button>
      <div class="collapse navbar-collapse" id="myNav">
        <ul class="navbar-nav mx-5 text-capitalize">
          <li class="nav-item active">
            <a class="nav-link" href="index3.jsp">home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="#">about</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">store</a>
          </li>
        </ul>
       </div>
          <%
                  double total = 0;
                  ArrayList<Items> item = new ArrayList<Items>();
                if(request.getServletContext().getAttribute("items")!=null){
                    item =(ArrayList<Items>) request.getServletContext().getAttribute("items");}
          %>
        <div class="nav-info-items d-none d-lg-flex ">
          <div id="cart-info" class="nav-info align-items-center cart-info d-flex justify-content-between mx-lg-5">
            <span class="cart-info__icon mr-lg-3"><i class="fas fa-shopping-cart"></i></span>
            <p class="mb-0 text-capitalize"><span id="item-count"><%=item.size()%> </span> items
                <!--- <i class="fas fa-rupee-sign"></i><span class="item-total">10.49</span>-->
            </p>
          </div>
          <!-- end of single info -->
       <%
           HttpSession session1 = request.getSession(false);
           String sess_user_email = null;
           if(session1!=null){
               sess_user_email = (String)session1.getAttribute("user");
               System.out.println("index3"+session1.getId());
               System.out.println("email"+sess_user_email);
           }
           if(sess_user_email==null){
       %>
          <div class="button">
              <a href="login.jsp"><button type="button" class="btn btn-outline-dark">Login</button></a>
            <a href="signup.jsp"><button type="button" class="btn btn-outline-dark">SignUp</button></a>
          </div>
          <%}else{
          %>
          <a href="user_logout"><button type="button" class="btn btn-outline-dark">Logout</button></a>
          <%}%>
      </div>
    </nav>
    <!-- end of nav -->
    <!-- banner  -->

    <div class="container-fluid">
      <div class="row max-height justify-content-center align-items-center">
        <div class="col-10 mx-auto banner text-center">
          <h1 class="text-capitalize">welcome to <strong class="banner-title ">Real Reasturant</strong></h1>
          <a href="#store" class="btn banner-link text-uppercase my-2">explore</a>

        </div>
        <div id="cart" class="cart">
          <!-- cart item -->
              
               <%    
                    if(item!=null){
                        for(Items i:item){
                            total += i.getPrice();
             %>
          <div class="cart-item d-flex justify-content-between text-capitalize my-3">
            <img src="img-cart/cake-2.jpeg" class="img-fluid rounded-circle" id="item-img" alt="">
            <div class="item-text">

                <p id="cart-item-title" class="font-weight-bold mb-0"><%=i.getName()%></p>
              <span><i class="fas fa-rupee-sign"></i></span>
              <span id="cart-item-price" class="cart-item-price" class="mb-0"><%=i.getPrice()%></span>
            </div>
            <a href="remove_item2?id=<%=i.getId()%>" id='cart-item-remove' class="cart-item-remove">
              <i class="fas fa-trash"></i>
            </a>
          </div>
          <!--end of  cart item -->
          <%
                    }   
            }
    %>
          <!-- cart total -->
          <div class="cart-total-container d-flex justify-content-around text-capitalize mt-5">
            <h5>total</h5>
            <h5> <i class="fas fa-rupee-sign"></i> <strong id="cart-total" class="font-weight-bold"><%=total%></strong> </h5>
          </div>
          <!--end cart total -->
          <!-- cart buttons -->
          <%if(!item.isEmpty()){%>
          <div class="cart-buttons-container mt-3 d-flex justify-content-between">
              <a href="remove_item2?id=-1" id="clear-cart" class="btn btn-outline-secondary btn-black text-uppercase">clear cart</a>
            <a href="checkout.jsp" class="btn btn-outline-secondary text-uppercase btn-pink">checkout</a>
          </div><%}%>
          <!--end of  cart buttons -->
          <!--  -->
        </div>
      </div>
    </div>
        
    <!--end of  banner  -->
  </header>
  <!-- header -->
  <!-- about us -->
  <section class="about py-5" id="about">
    <div class="container">

      <div class="row">
        <div class="col-10 mx-auto col-md-6 my-5">
          <h1 class="text-capitalize">about <strong class="banner-title ">us</strong></h1>
          <p class="my-4 text-muted w-75">We prepare delicious food for you and deliver it to your home.</p>
          <a href="#" class="btn btn-outline-secondary btn-black text-uppercase ">explore</a>

        </div>
        <div class="col-10 mx-auto col-md-6 align-self-center my-5">
          <div class="about-img__container">
            <img src="img/sweets-1.jpeg" class="img-fluid" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end of about us -->


  <!-- store -->
  <section id="store" class="store py-5">
    <div class="container">
      <!-- section title -->
      <div class="row">
        <div class="col-10 mx-auto col-sm-6 text-center">
          <h1 class="text-capitalize">our <strong class="banner-title ">store</strong></h1>
        </div>
      </div>
      <!-- end of section title -->
      <!--filter buttons -->
      <div class="row">
        <div class=" col-lg-8 mx-auto d-flex justify-content-around my-2 sortBtn flex-wrap">
          <a href="#" class="btn btn-outline-secondary btn-black text-uppercase filter-btn m-2" data-filter="all"> all</a>
          <a href="#" class="btn btn-outline-secondary btn-black text-uppercase filter-btn m-2" data-filter="cakes">cakes</a>
          <a href="#" class="btn btn-outline-secondary btn-black text-uppercase filter-btn m-2" data-filter="cupcakes">cupcakes</a>
          <a href="#" class="btn btn-outline-secondary btn-black text-uppercase filter-btn m-2" data-filter="sweets">sweets</a>
          <a href="#" class="btn btn-outline-secondary btn-black text-uppercase filter-btn m-2" data-filter="doughnuts">doughnuts</a>
        </div>
      </div>
      <!-- search box -->
      <div class="row">

        <div class="col-10 mx-auto col-md-6">
          <form>
            <div class="input-group mb-3">
              <div class="input-group-prepend ">
                <span class="input-group-text search-box" id="search-icon"><i class="fas fa-search"></i></span>
              </div>
              <input type="text" class="form-control" placeholder='item....' id="search-item">
            </div>

          </form>
        </div>
      </div>
      <!--end of filter buttons -->
      <!-- store  items-->
      <div class="row" class="store-items" id="store-items">
          <%
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
                     
         %>
        <!-- single item -->
        <div class="col-10 col-sm-6 col-lg-4 mx-auto my-3 store-item doughnuts" data-item="dougnuts">
          <div class="card ">
            <div class="img-container">
              <img src="<%=rs.getString(3)%>" class="card-img-top store-img" alt="">
              <span class="store-item-icon">
                  <a href="add_item2?id=<%=rs.getInt(1)%>&name=<%=rs.getString(2)%>&price=<%=rs.getInt(4)%>"><i class="fas fa-shopping-cart"></i></a>
              </span>
            </div>
            <div class="card-body">
              <div class="card-text d-flex justify-content-between text-capitalize">
                  <h5 id="store-item-name"><%=rs.getString(2)%></h5>
                <h5 class="store-item-value"><i class="fas fa-rupee-sign"></i> <strong id="store-item-price" class="font-weight-bold"><%=rs.getDouble(4)%></strong></h5>
              </div>
            </div>


          </div>
          <!-- end of card-->
        </div>
        <%
                     
                 }
            } catch (SQLException ex) {
                Logger.getLogger(index.class.getName()).log(Level.SEVERE, null, ex);
            }
          %>
        <!--end of single store item-->

      </div>
  </section>
  <!--end of store items -->


  <!-- modal-container -->
  <div class="container-fluid ">
    <div class="row lightbox-container align-items-center">
      <div class="col-10 col-md-10 mx-auto text-right lightbox-holder">
        <span class="lightbox-close"><i class="fas fa-window-close"></i></span>
        <div class="lightbox-item"></div>
        <span class="lightbox-control btnLeft"><i class="fas fa-caret-left"></i></span>
        <span class="lightbox-control btnRight"><i class="fas fa-caret-right"></i></span>
      </div>

    </div>
  </div>


  <!-- jquery -->
  <script src="js/jquery-3.3.1.min.js"></script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.bundle.min.js"></script>
  <!-- script js -->
  <script src="js/app.js"></script>
</body>

</html>