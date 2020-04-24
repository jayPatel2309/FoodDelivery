<%-- 
    Document   : checkout
    Created on : 23 Apr, 2020, 4:47:03 PM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.Items"%>
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
              <a class="nav-link " href="under_con.jsp">about</a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="under_con.jsp">store</a>
          </li>
        </ul>
          </div>
        <div class="nav-info-items d-none d-lg-flex ">
          <!-- single info -->
          <div class="button">
              <a href="user_logout"><button type="button" class="btn btn-outline-dark">Logout</button></a>
          </div>
          <!-- end of single info -->
        </div>
      
    </nav>
    <!-- end of nav -->
    <!-- banner  -->
    <div class="container-fluid">
      <div class="row max-height justify-content-center align-items-center">
        <div class="col-10 mx-auto banner text-center">
            
            <div class="container ">
                <div class="card m-auto" style="width:30%" >
                    <div class="card-header" style="color: black">Curruntly only Cash-On delivery available....</div>
                    <div class="card-body" style="background: rgba(76, 175, 80, 0.3)">
          <!--end of  cart buttons -->
          <!--  -->
          <%
                    double total = 0;
                    ArrayList<Items> item = new ArrayList<Items>();
                    if(request.getServletContext().getAttribute("items")!=null){
                        item =(ArrayList<Items>) request.getServletContext().getAttribute("items");
                    }
          %>
                <%
                    System.out.println(item.size());
                    for(Items i:item){
                        System.out.println(i.getPrice());
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
                <%}%>
                </div>
                    <div class="card card-footer">
                        <div class="container">
                        <font color="black">Total Price : <%=total%></font>
                        <form action="checkout">
                              <button type="submit" class="btn btn-primary">Confirm</button>
                        </form>
                        </div>
                    </div>
            </div></div></div>
            
            
        </div>
      </div>




    <!--end of  banner  -->
  </header>
  <!-- header -->
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