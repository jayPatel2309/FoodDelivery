<%-- 
    Document   : login
    Created on : 23 Apr, 2020, 1:54:00 PM
    Author     : Admin
--%>

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
              <a href="signup.jsp"><button type="button" class="btn btn-outline-dark">SignUp</button></a>
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
                <div class="card-body">
                    <form action="user_login">
               
  <div class="form-group">
      <input type="email" class="form-control" id="email" name="email" placeholder="Email">
    </div>
    <div class="form-group">
      <input type="password" class="form-control" id="pass" name="pass" placeholder="Password">
    </div>
  <!--</div>-->
  <button type="submit" class="btn btn-primary">Sign in</button>
           </form>
            </div></div></div>
            
            
        </div>
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