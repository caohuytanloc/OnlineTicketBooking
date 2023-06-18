<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/12/2023
  Time: 11:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
  <title>Select Fly</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/css/bootstrap.min.css">

  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v6.0.0-beta1/css/all.css"
        integrity="...insert integrity hash here..." crossorigin="anonymous">

  <style>
    * {
      font-family: unset;
    }

    body {
      background: url(/image/cloud-bg-3.c59c5fb1.png);
      background-repeat: no-repeat;
      background-size: cover;
      background-color: rgb(179, 208, 240);
    }

    .container-right {
      margin-left: 10%;
      width: 376px;
      height: auto;
      background: white;
      padding-left: 0%;
      padding-right: 0%;
    }

    .left-container {
      width: 790px;
    }

    .left-container img {
      width: 580px;
      height: 100px;
    }

    .infor {
      background: linear-gradient(359.2deg, #D91A21 53.08%, #6F0000 206.46%);
      text-transform: uppercase;
      color: white;
      height: 60px;
      font-size: 20px;
      font-style: normal;
      font-weight: 700;
      line-height: 20px;
    }


    .labelinfor {
      text-align: left;
      float: left;
      margin-top: 4%;
      margin-left: 3%;

    }

    .buttondetail {
      margin-top: 3%;
      margin-left: 15%;
      background: linear-gradient(31.2deg, #F9A51A -4.93%, #FBB612 18.27%, #FFDD00 71.59%);
      height: 25px;
      width: 80px;
      border: none;
      border-radius: 10px;
      font-size: 15px;
    }



    .infor .lablesum {
      display: flex;
      align-items: center;
      height: 100%;
      width: 100%;
      margin-left: 10px;
    }

    .columnlable {
      height: 50px;
      background: rgb(232, 227, 227);
      border-radius: 5px;
      font-size: 18px;
      font-style: normal;
      font-weight: 600;
      line-height: 18px;
      display: flex;
      align-items: center;
      justify-content: center;
      /* height: 100%; */
    }

    .columnlable .text {
      width: 100%;
      padding-left: 10px;
    }

    .trip {
      font-size: 18px;
      font-style: normal;
      font-weight: 500;
      line-height: 18px;
      background-color: rgb(178, 221, 241);
      height: 30px;

    }

    .trip label {
      /* justify-content: center;

      align-items: center; */
      margin-top: 5px;
      margin-bottom: 5px
    }

    .trip-class {
      margin-top: 10px;
      /* padding-left: 10px; */
    }



    .tablisttotal {
      display: flex;
      justify-content: space-between;
    }

    .tablist {
      width: 50%;
      display: grid;
      justify-content: center;
      background: white;

    }



    .carouselControls {
      background: none !important;
    }

    .row img {
      width: 50px;
      height: 50px;
    }

    .row .hinh1 {
      background: rgb(213, 175, 103);
    }

    .row .hinh2 {
      background: rgb(189, 26, 26);
    }

    .row .hinh3 {
      background: rgb(221, 102, 17);
    }

    .row .hinh4 {
      background: rgb(72, 216, 11);
    }

    .timerow {
      background: linear-gradient(26.73deg, #F9A51A 13.7%, #FBB612 29.8%, #FFDD00 66.81%);
      margin-top: 5px;
      align-items: center;
      flex-direction: column;
      justify-content: space-between;
    }

    .after-header {
      width: 100%;
      height: 80px;
      background: linear-gradient(28.91deg, #F9A51A 2.24%, #FBB612 31.03%, #FBF300 97.21%);
      margin-bottom: 2%;
      display: block;
      font-style: normal;
      font-weight: 700;

    }

    .labelgo {
      display: flex;
    }

    .lablego1 {
      margin-left: 5%;
    }

    .lablego2 {
      margin-left: 10%;
      align-items: center;
      justify-content: space-between;
    }

    .lablego3 {
      margin-left: 25%;
      display: flex;
      justify-content: center;
      align-items: center;
      float: right;
      margin-bottom: 25%;

    }

    .lablego3 i {
      margin-right: 5px;
      background: white;
      width: 39px;
      height: 39px;
      border-radius: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .sub-after-header {
      margin: 30px, auto !important;
      margin-left: 10%;
      margin-right: 10%;

    }

    .columnlable-new {
      padding: 10px;

    }

    .columnlable-new1 div {
      margin-top: 10px;

    }

    .date-flight {
      height: 90px;
      display: flex;
    }

    .cloud {
      width: 140px !important;
      padding: 0px 20px;
      background-size: cover;
      background-repeat: no-repeat;
      background-position: center center;
      font-size: 13px;
      font-style: normal;
      font-weight: 600;
    }

    .clound-lable1 {
      margin-left: 20%;
      margin-top: 5%
    }

    .clound-lable {
      color: #D91A21;
      font-style: italic;
    }

    .clound-lable2 {
      margin-left: 10%;
    }

    .date-flight i {
      background: white;
      border-radius: 50%;
      width: 25px;
      height: 25px;
      display: flex;
      justify-content: center;
      align-items: center;
      margin-top: 100%;
    }
  </style>
</head>

<body>
<div class="after-header">
  <div class="sub-after-header">
    <div>
      <label>CHUYẾN BAY MỘT CHIỀU</label>
      <i class="fa-thin fa-solid fa-minus fa-rotate-90"></i>
      <label>1 Người lớn</label>
    </div>
    <div class="lable-heder">
      <div class="labelgo">
        <div class="lablego1">
          <img src="/image/icon.svg">
          <label>Điểm Khời hành</label>
          <label for="" style="color:red;font-weight: 700; ">TP.HỒ CHÍ MINH</label>
        </div>
        <div class="lablego2">

          <label for=""> <i class="fa-solid fa-location-dot" style="color: rgb(37, 186, 47);"></i>
            Điểm Đến</label>
          <label for="" style="color:red;font-weight: 700; "> HÀ NỘI</label>
        </div>
        <div class="lablego3">
          <i class="fa-sharp fa-solid fa-plane" style="color: #fcfcfc; background: rgb(37, 186, 47);"></i>
          <i class="fa-solid fa-user" style="color: #c8a465;"></i>
          <i class="fa-solid fa-cart-shopping-fast" style="color: #c8a465;"></i>
          <i class="fa-duotone fa-circle-dollar"
             style="--fa-primary-color: #c8a465; --fa-secondary-color: #f2f2f2;"></i>
        </div>
      </div>


    </div>

  </div>
</div>

<div class="container">
  <div class="row ">

    <div class="left-container col-8">

      <div class="tablisttotal">
        <div class="tablist">
          <label for="" style="font-weight: bold;font-size: 24px;">SGN</label>

          <label for="">Hồ Chí Minh</label>

        </div>

        <div class="tablist">
          <i class="fa-solid fa-arrow-left-long"></i>
          <i class="fa-solid fa-arrow-right-long"></i>
        </div>
        <div class="tablist">
          <label for="" style="font-weight: bold;font-size: 24px;">HAN</label>

          <label for="">Hà Nội</label>

        </div>
      </div>



      <div class="date-flight">
        <div><i class="fa-solid fa-caret-up fa-rotate-270"></i></div>


        <div style="background-color: linear-gradient(28.91deg, #F9A51A 2.24%, #FBB612 31.03%, #FBF300 97.21%);"
             class="cloud">
          <div><label for="" class="clound-lable1">Chủ nhật</label>
            <label for="" class="clound-lable2"> 14 tháng 5</label>
            <label for="" class="clound-lable">Từ 199.000 VND</label>
          </div>

        </div>
        <div style="background-color: linear-gradient(28.91deg, #F9A51A 2.24%, #FBB612 31.03%, #FBF300 97.21%);"
             class="cloud">
          <div><label for="" class="clound-lable1">Chủ nhật</label>
            <label for="" class="clound-lable2"> 14 tháng 5</label>
            <label for="" class="clound-lable">Từ 199.000 VND</label>
          </div>
        </div>
        <div style="background-color: linear-gradient(28.91deg, #F9A51A 2.24%, #FBB612 31.03%, #FBF300 97.21%);background-image: url(/image/clound.png);"
             class="cloud">
          <div><label for="" class="clound-lable1">Chủ nhật</label>
            <label for="" class="clound-lable2" id="day-label"> 14 tháng 5</label>
            <label for="" class="clound-lable" id="month-label">Từ 199.000 VND</label>
          </div>
        </div>
        <div style="background-color: linear-gradient(28.91deg, #F9A51A 2.24%, #FBB612 31.03%, #FBF300 97.21%);"
             class="cloud">
          <div><label for="" class="clound-lable1">Chủ nhật</label>
            <label for="" class="clound-lable2"> 14 tháng 5</label>
            <label for="" class="clound-lable">Từ 199.000 VND</label>
          </div>
        </div>
        <div style="background-color: linear-gradient(28.91deg, #F9A51A 2.24%, #FBB612 31.03%, #FBF300 97.21%);"
             class="cloud">
          <div><label for="" class="clound-lable1">Chủ nhật</label>
            <label for="" class="clound-lable2"> 14 tháng 5</label>
            <label for="" class="clound-lable">Từ 199.000 VND</label>
          </div>
        </div>
        <div>
          <i class="fa-solid fa-caret-up fa-rotate-90" onclick="Clickbutton()"></i>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col"></div>
          <img class="col hinh1" src="/image/hinh1.svg">
          <img class="col hinh2" src="/image/hinh2.svg">
          <img class="col hinh3" src="/image/hinh3.svg">
          <img class="col hinh4" src="/image/hinh4.svg">

        </div>
        <div class="row">
          <div class="col timerow">
            <label for="">VJ122</label>
            <div>
              <label for="">7:00</label>
              <label>đến</label>
              <label for="">8:00</label>
            </div>
            <label for="">Airbus</label>

          </div>
          <div class="col"></div>
          <div class="col"></div>
          <div class="col"></div>
          <div class="col"></div>


        </div>
        <div class="row">
          <div class="col timerow">
            <label for="">VJ122</label>
            <div>
              <label for="">7:00</label>
              <label>đến</label>
              <label for="">8:00</label>
            </div>
            <label for="">Airbus</label>

          </div>
          <div class="col"></div>
          <div class="col"></div>
          <div class="col"></div>
          <div class="col"></div>


        </div>


      </div>




    </div>
    <div class="container-right col-4">
      <div class="infor">
        <div class="labelinfor">THÔNG TIN ĐẶT CHỖ</div>
        <div><button class="buttondetail">Chi tiết</button></div>
      </div>
      <div class="columnlable-new">

        <div class="columnlable">
          <label class="text">Thông tin hành khách</label>

        </div>
      </div>
      <div class="trip"><label for="">Chuyến đi</label></div>
      <div class="columnlable-new columnlable-new1">

        <div class="trip-class">
          <label>TP.Hồ Chí Minh(SGN) <i class="fa-sharp fa-solid fa-plane"></i></label>

          <label>Hà Nội(HAN)</label>
          <div>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-rotate-90"></i>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-rotate-90"></i>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-xs"></i>

          </div>
        </div>


        <div class="columnlable">
          <label class="text">Giá vé</label>

        </div>
        <div class="columnlable">
          <label class="text">Thuế phí</label>

        </div>
        <div class="columnlable">
          <label class="text">Dịch vụ</label>


        </div>

      </div>





      <div class="trip" style="background:rgb(217, 217, 172);"><label for="">Chuyến về</label></div>
      <div class="columnlable-new columnlable-new1">

        <div class="trip-class">
          <label>TP.Hồ Chí Minh(SGN) <i class="fa-sharp fa-solid fa-plane"></i></label>

          <label>Hà Nội(HAN)</label>
          <div>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-rotate-90"></i>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-rotate-90"></i>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-xs"></i>
            <i class="fa-thin fa-minus fa-xs"></i>

          </div>
        </div>


        <div class="columnlable">
          <label class="text">Giá vé</label>

        </div>
        <div class="columnlable">
          <label class="text">Thuế phí</label>

        </div>
        <div class="columnlable">
          <label class="text">Dịch vụ</label>


        </div>

      </div>





      <div class="infor">
        <div class="label lablesum">Tổng cộng</div>
        <div class="label"></div>

      </div>
    </div>
  </div>
</div>
</section>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/dayjs@1.11.8/dayjs.min.js"></script><script>
  function Clickbutton(){
    var dayLabel = document.getElementById("day-label");
    var monthLabel = document.getElementById("month-label");

    var currentDate = dayjs();
    var nextDate = currentDate.add(1, 'day');

    // Cập nhật nội dung thẻ <label>
    dayLabel.textContent = nextDate.date().toString();
    monthLabel.textContent = "tháng " + (nextDate.month() + 1).toString();

  }

</script>

</body>

</html>