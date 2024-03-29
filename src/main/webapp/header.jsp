<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="/css/header.css">
  <link rel="stylesheet" type="text/css" href="/css/all.css">
</head>
<body>
<header class="header">
  <div class="navbar__container">
    <div class="navbar__inner">
      <div class="navbar__logo">
        <a href="/Index">
          <img src="/images/logo-white.svg" alt="logo" />
        </a>      </div>
    </div>

    <div class="navbar__nav">
      <div class="nav__top">
        <div class="user__signin">
          <a href="/logout">Đăng xuất</a>
        </div>
      </div>
      <div class="nav__bottom">
        <nav class="nav__bottom--item">Skyjoy</nav>
        <nav class="nav__bottom--item">Chuyến bay của tôi</nav>
        <nav class="nav__bottom--item"><a href="/checkin" style="text-decoration:none; color:white;">Online Check-in</a></nav>
        <nav class="nav__bottom--item tab">Dịch vụ chuyến bay</nav>
        <nav class="nav__bottom--item tab">Dịch vụ khác</nav>
      </div>
    </div>
  </div>
</header>
