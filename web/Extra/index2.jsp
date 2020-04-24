<%-- 
    Document   : index2.jsp
    Created on : 23 Apr, 2020, 9:38:10 AM
    Author     : Admin
--%>

<%@page import="java.util.Iterator"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.Items"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.index"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.logging.Level"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
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
  <title>Cart Project</title>
  <style>
  </style>
</head>

<body>
  <!-- header -->
  <header>
    <!-- navbar  -->
    <!-- 
https://www.iconfinder.com/icons/2427887/dessert_donut_doughnut_fat_sweets_icon
Creative Commons (Attribution 3.0 Unported);
https://www.iconfinder.com/korawan_m
     -->
    <nav class="navbar navbar-expand-lg px-4">
      <a class="navbar-brand" href="#"><img src="img/logo.svg" alt=""></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNav">
        <span class="toggler-icon"><i class="fas fa-bars"></i></span>
      </button>
      <div class="collapse navbar-collapse" id="myNav">
        <ul class="navbar-nav mx-auto text-capitalize">
          <li class="nav-item active">
            <a class="nav-link" href="#">home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="#">about</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">store</a>
          </li>
        </ul>
        <div class="nav-info-items d-none d-lg-flex ">
          <div id="cart-info" class="nav-info align-items-center cart-info d-flex justify-content-between mx-lg-5">
            <span class="cart-info__icon mr-lg-3"><i class="fas fa-shopping-cart"></i></span>
            <p class="mb-0 text-capitalize"><span id="item-count">2 </span> items - <i class="fas fa-rupee-sign"></i><span class="item-total">10.49</span></p>
          </div>
          <!-- end of single info -->
        </div>
          <div class="button">
            <button type="button" class="btn btn-primary">Login</button>
            <button type="button" class="btn btn-success">signUp</button>
          </div>
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
          <div class="cart-item d-flex justify-content-between text-capitalize my-3">
            <img src="img-cart/cake-2.jpeg" class="img-fluid rounded-circle" id="item-img" alt="">
            <div class="item-text">

              <p id="cart-item-title" class="font-weight-bold mb-0">cart item</p>
              <span><i class="fas fa-rupee-sign"></i></span>
              <span id="cart-item-price" class="cart-item-price" class="mb-0">10.99</span>
            </div>
            <a href="#" id='cart-item-remove' class="cart-item-remove">
              <i class="fas fa-trash"></i>
            </a>
          </div>
          <!--end of  cart item -->
          <!-- cart total -->
          <div class="cart-total-container d-flex justify-content-around text-capitalize mt-5">
            <h5>total</h5>
            <h5> <i class="fas fa-rupee-sign"></i> <strong id="cart-total" class="font-weight-bold">10.00</strong> </h5>
          </div>
          <!--end cart total -->
          <!-- cart buttons -->
          <div class="cart-buttons-container mt-3 d-flex justify-content-between">
            <a href="#" id="clear-cart" class="btn btn-outline-secondary btn-black text-uppercase">clear cart</a>
            <a href="#" class="btn btn-outline-secondary text-uppercase btn-pink">checkout</a>
          </div>
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
              HttpSession session1 = request.getSession(false);
              System.out.println("jsp"+session1.getId());
            ArrayList<Items>  item = (ArrayList<Items>) session1.getAttribute("items");
            Iterator<Items> iter = item.iterator(); 
            while (iter.hasNext()) { 
                Items t = (Items)iter.next();
                out.print(t.getName() + " "); 
            } 
            session1.setAttribute("item", item);
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
                  <a href="add_item?id=<%=rs.getInt(1)%>"><i class="fas fa-shopping-cart"></i></a>
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