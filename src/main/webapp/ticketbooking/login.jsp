<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 6/30/2023
  Time: 1:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="Anime Template">
  <meta name="keywords" content="Anime, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Anime | Template</title>

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

  <!-- Css Styles -->
  <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
  <link rel="stylesheet" href="/css/plyr.css" type="text/css">
  <link rel="stylesheet" href="/css/nice-select.css" type="text/css">
  <link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
  <link rel="stylesheet" href="/css/login.css" type="text/css">
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
  <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<jsp:include page="/header.jsp"/>

<!-- Header End -->

<!-- Normal Breadcrumb Begin -->
<%--<section class="normal-breadcrumb set-bg" data-setbg="img/normal-breadcrumb.jpg">--%>
<%--  <div class="container">--%>
<%--    <div class="row">--%>
<%--      <div class="col-lg-12 text-center">--%>
<%--        <div class="normal__breadcrumb__text">--%>
<%--          <h2>Login</h2>--%>
<%--          <p>Welcome to the Vietject</p>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</section>--%>
<!-- Normal Breadcrumb End -->

<!-- Login Section Begin -->
<section class="login spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <div class="login__form">
          <h3>Đăng nhập</h3>
          <form action="#">
            <div class="input__item">
              <input type="number" placeholder="Số điện thoại ">
              <span class="icon_mail"></span>
            </div>
            <div class="input__item">
              <input type="text" placeholder="Mật khẩu">
              <span class="icon_lock"></span>
            </div>
            <button type="submit" class="site-btn">Đăng nhập</button>
          </form>
          <a href="#" class="forget_pass">Quên mật khẩu?</a>
        </div>
      </div>
      <div class="col-lg-6">
        <div class="login__register">
          <h3>Bạn chưa có tài khoản</h3>
          <a href="#" class="primary-btn">Đăng kí</a>
        </div>
      </div>
    </div>
<%--    <div class="login__social">--%>
<%--      <div class="row d-flex justify-content-center">--%>
<%--        <div class="col-lg-6">--%>
<%--          <div class="login__social__links">--%>
<%--            <span>or</span>--%>
<%--            <ul>--%>
<%--              <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With--%>
<%--                Facebook</a></li>--%>
<%--              <li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li>--%>
<%--              <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a>--%>
<%--              </li>--%>
<%--            </ul>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
  </div>
</section>
<!-- Login Section End -->

<!-- Footer Section Begin -->
<!-- Footer Section End -->

<!-- Search model Begin -->
<!-- Search model end -->

<!-- Js Plugins -->
<script src="/js/jquery-3.3.1.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/player.js"></script>
<script src="/js/jquery.nice-select.min.js"></script>
<script src="/js/mixitup.min.js"></script>
<script src="/js/jquery.slicknav.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/main.js"></script>


</body>

</html>