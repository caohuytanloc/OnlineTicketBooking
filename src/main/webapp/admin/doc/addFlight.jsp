<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
  <title>Thêm chuyến bay</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
  <!-- or -->
  <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
  <!-- Font-icon css-->
  <link rel="stylesheet" type="text/css"
    href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="http://code.jquery.com/jquery.min.js" type="text/javascript"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

  <script>

    function readURL(input, thumbimage) {
      if (input.files && input.files[0]) { //Sử dụng  cho Firefox - chrome
        var reader = new FileReader();
        reader.onload = function (e) {
          $("#thumbimage").attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
      }
      else { // Sử dụng cho IE
        $("#thumbimage").attr('src', input.value);

      }
      $("#thumbimage").show();
      $('.filename').text($("#uploadfile").val());
      $('.Choicefile').css('background', '#14142B');
      $('.Choicefile').css('cursor', 'default');
      $(".removeimg").show();
      $(".Choicefile").unbind('click');

    }
    $(document).ready(function () {
      $(".Choicefile").bind('click', function () {
        $("#uploadfile").click();

      });
      $(".removeimg").click(function () {
        $("#thumbimage").attr('src', '').hide();
        $("#myfileupload").html('<input type="file" id="uploadfile"  onchange="readURL(this);" />');
        $(".removeimg").hide();
        $(".Choicefile").bind('click', function () {
          $("#uploadfile").click();
        });
        $('.Choicefile').css('background', '#14142B');
        $('.Choicefile').css('cursor', 'pointer');
        $(".filename").text("");
      });
    })
  </script>
</head>

<body class="app sidebar-mini rtl">
  <style>
    .Choicefile {
      display: block;
      background: #14142B;
      border: 1px solid #fff;
      color: #fff;
      width: 150px;
      text-align: center;
      text-decoration: none;
      cursor: pointer;
      padding: 5px 0px;
      border-radius: 5px;
      font-weight: 500;
      align-items: center;
      justify-content: center;
    }

    .Choicefile:hover {
      text-decoration: none;
      color: white;
    }

    #uploadfile,
    .removeimg {
      display: none;
    }

    #thumbbox {
      position: relative;
      width: 100%;
      margin-bottom: 20px;
    }

    .removeimg {
      height: 25px;
      position: absolute;
      background-repeat: no-repeat;
      top: 5px;
      left: 5px;
      background-size: 25px;
      width: 25px;
      /* border: 3px solid red; */
      border-radius: 50%;

    }

    .removeimg::before {
      -webkit-box-sizing: border-box;
      box-sizing: border-box;
      content: '';
      border: 1px solid red;
      background: red;
      text-align: center;
      display: block;
      margin-top: 11px;
      transform: rotate(45deg);
    }

    .removeimg::after {
      /* color: #FFF; */
      /* background-color: #DC403B; */
      content: '';
      background: red;
      border: 1px solid red;
      text-align: center;
      display: block;
      transform: rotate(-45deg);
      margin-top: -2px;
    }
  </style>
  <!-- Navbar-->
  <header class="app-header">
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                    aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">


      <!-- User Menu-->
      <li><a class="app-nav__item" href="/index.html"><i class='bx bx-log-out bx-rotate-180'></i> </a>

      </li>
    </ul>
  </header>
  <!-- Sidebar menu-->
  <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
  <aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="images/x1.jpg" width="50px"
                                        alt="User Image">
      <div>
        <p class="app-sidebar__user-name"><b>VietJet</b></p>
        <p class="app-sidebar__user-designation">Chào mừng bạn trở lại</p>
      </div>
    </div>
    <hr>
    <ul class="app-menu">

      <li><a class="app-menu__item active" href="admin.jsp"><i class='app-menu__icon bx bx-purchase-tag-alt'></i>
        <span class="app-menu__label">Quản lý vé</span></a></li>
      <li><a class="app-menu__item" href="#"><i class='app-menu__icon bx bx-user-voice'></i><span
              class="app-menu__label">Quản lý khách hàng</span></a></li>
      <li><a class="app-menu__item" href="table-data-product.html"><i
              class='app-menu__icon bx bx-task'></i><span class="app-menu__label">Quản lý đặt vé</span></a>
      </li>
      <li><a class="app-menu__item" href="table-data-oder.html"><i class='app-menu__icon bx bx-id-card'></i><span
              class="app-menu__label">Quản lý nhân viên</span></a></li>
      <li><a class="app-menu__item" href="table-data-banned.html"><i class='app-menu__icon bx bx-run'></i><span
              class="app-menu__label">Quản lý nội bộ
          </span></a></li>
      <li><a class="app-menu__item" href="table-data-money.html"><i class='app-menu__icon bx bx-dollar'></i><span
              class="app-menu__label">Bảng kê lương</span></a></li>
      <li><a class="app-menu__item" href="quan-ly-bao-cao.html"><i
              class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">Báo cáo doanh thu</span></a>
      </li>
      <li><a class="app-menu__item" href="page-calendar.html"><i class='app-menu__icon bx bx-calendar-check'></i><span
              class="app-menu__label">Lịch công tác </span></a></li>
      <li><a class="app-menu__item" href="#"><i class='app-menu__icon bx bx-cog'></i><span class="app-menu__label">Cài
            đặt hệ thống</span></a></li>
    </ul>
  </aside>

  <main action="addFlights" method="get" class="app-content">
    <div class="row">
      <div class="col-md-12">
        <div class="tile">
          <h3 class="tile-title">Thêm chuyến bay</h3>
          <div class="tile-body">
            <form action="addFlight" method="get" class="row">
              <div class="form-group  col-md-6">
                <label class="control-label">Tên chuyến bay</label>
                <input id= "nameFlight" name="nameFlight"  class="form-control" type="text">
              </div>
              <div class="form-group  col-md-6">
                <label class="control-label">Điểm đi</label>
                <input id= "departure_city" name="departure_city"  class="form-control" type="text">
              </div>
              <div class="form-group col-md-6">
                <label class="control-label">Điểm đến</label>
                <input id="arrival_city" name="arrival_city" class="form-control" type="text">
              </div>
              <div class="form-group col-md-6">
                <label class="control-label">Ngày đi</label>
                <input id="departure_date" name="departure_date"  class="form-control" type="date">
              </div>
              <div class="form-group col-md-6">
                <label class="control-label">Ngày đến</label>
                <input id="arrival_date" name="arrival_date"  class="form-control" type="date">
              </div>
              <div class="form-group  col-md-6">
                <label class="control-label">Giờ đi</label>
                <input id="departure_time" name="departure_time"  class="form-control" type="text">
                <p>Hãy nhập theo định dạng "hh:mm"</p>
              </div>
              <div class="form-group col-md-6">
                <label class="control-label">Giờ đến</label>
                <input id="arrival_time" name="arrival_time"  class="form-control" type="text">
                <p>Hãy nhập theo định dạng "hh:mm"</p>
              </div>
              <div class="form-group col-md-6">
                <label class="control-label">Số lượng vé</label>
                <input id="quantity" name="quantity"  class="form-control" type="text">
              </div>
              <div class="form-group col-md-6">
                <label class="control-label"> Giá vé First</label>
                <input id="first" name="first"  class="form-control" type="text">
              </div>
              <div class="form-group col-md-6">
                <label class="control-label">Giá vé Business</label>
                <input id="business" name="business"  class="form-control" type="text">
              </div>
              <div class="form-group col-md-6">
                <label class="control-label">Giá vé Premium</label>
                <input id="premium" name="premium"  class="form-control" type="text">
              </div>
              <div class="form-group col-md-6">
                <label class="control-label">Giá vé Eco</label>
                <input id="eco" name="eco"  class="form-control" type="text">
              </div>
              <BR>
              <div class="input-group form-group">
                <button class="btn btn-save">Thêm chuyến bay</button>
                <a class="btn btn-cancel" href="/ticketManagement" style="margin-left: 20px">Hủy bỏ</a>
                <BR>
              </div>
            </form>

        </div>
  <main/>



  <!-- Essential javascripts for application to work-->
  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
  <!-- The javascript plugin to display page loading on top-->
  <script src="js/plugins/pace.min.js"></script>

</body>

</html>