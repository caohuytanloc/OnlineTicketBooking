<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25/06/2023
  Time: 7:42 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <title>Select Fly</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v6.0.0-beta1/css/all.css"
          integrity="...insert integrity hash here..." crossorigin="anonymous">

    <style>

        body {
            background: url(/images/cloud-bg-3.c59c5fb1.png);
            background-repeat: no-repeat;
            background-size: cover;
            background-color: rgb(179, 208, 240);
            font-family: 'KoHo', 'sans-serif' !important;
        }

        main {
            padding-bottom: 80px;
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
            margin-bottom: 5px;        }

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
            width: 27% !important;
            /* display: flex;
  justify-content: center;
  align-items: center; */

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

        .cloud div {
            width: 160px;
        }

        .cloud label {
            margin-left: 15%;
            font-family: 'KoHo', 'sans-serif';
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

        .clound-lable1 {
            margin-left: 30% !important;
            margin-top: 5%
        }

        .clound-lable2 {
            margin-left: 10%;
        }

        .date-flight {
            display: flex;
            justify-content: space-between;
        }

        /* .cloud {
    background-color: linear-gradient(28.91deg, #F9A51A 2.24%, #FBB612 31.03%, #FBF300 97.21%);
    background-image: url(cloud.png);
} */

        .cloud.hidden {
            display: none;
        }

        #type1,
        #type2,
        #type3,
        #type4 {
            width: 24%;
            cursor: pointer;
            display: flex;
             padding: 3px;
            background: #e9ecef;
            position: relative;
            align-items: center;
            margin-left: 2px;
            flex-direction: column;
            justify-content: center;
            margin-bottom: 3px;
        }

        #type1 p,
        #type2 P,
        #type3 P,
        #type4 p {
            font-size: 24px;
            line-height: 28px;
            font-family: 'JambonoMedium';
        }

        .timefly {
            font-size: 23px;
            font-weight: bold;
        }

        .codefly {
            font-size: 12px;
            line-height: 14px;
            color: #3C3C3C;
        }
    </style>
</head>

<body>
<jsp:include page="/header.jsp"/>

<main>
    <div class="container">
        <div class="row ">

            <div class="left-container col-md-8">

                <div class="tablisttotal">
                    <div class="tablist">
                        <label  style="font-weight: bold;font-size: 24px;">SGN</label>

                        <label >Hồ Chí Minh</label>

                    </div>

                    <div class="tablist">
                        <!-- <i class="fa-solid fa-arrow-left-long"></i> -->
                        <c:if test="${sessionScope.trip == 'one-way'}">
                            <svg width="57" height="22.5" viewBox="0 8 57 22.5" fill="none"
                                 xmlns="http://www.w3.org/2000/svg" style="height: 100%;">
                                <path d="M8 18H41L45.8182 21H8V18Z" fill="#DA2128"></path>
                                <path d="M36.8835 21H48.5C39 16 40 17 33 11V18L36.8835 21Z" fill="#DA2128"></path>
                            </svg>
                        </c:if>
                        <c:if test="${sessionScope.trip == 'round-trip'}">

                            <svg width="57" height="55" viewBox="0 0 57 55" fill="none"
                                 xmlns="http://www.w3.org/2000/svg" style="height: 100%;">
                                <path d="M8 18H41L45.8182 21H8V18Z" fill="#DA2128"></path>
                                <path d="M36.8835 21H48.5C39 16 40 17 33 11V18L36.8835 21Z" fill="#DA2128"></path>
                                <path d="M48 37L15 37L10.1818 34L48 34V37Z" fill="#D3D3D3"></path>
                                <path d="M19.1165 34L7.5 34C17 39 16 38 23 44V37L19.1165 34Z" fill="#D3D3D3"></path>
                            </svg>
                        </c:if>
                    </div>
                    <div class="tablist">
                        <label  style="font-weight: bold;font-size: 24px;">HAN</label>

                        <label >Hà Nội</label>

                    </div>
                </div>


                <div class="date-flight">
                    <div>
                        <i class="fa-solid fa-caret-up fa-rotate-270" id="toggle-button"></i>
                    </div>
                    <div class="cloud" id="date-cloud-1">
                        <div>
                            <label  class="clound-lable1">Chủ nhật</label>
                            <label  class="clound-lable2">14 tháng 5</label>
                            <label  class="clound-lable">Từ 199.000 VND</label>
                        </div>
                    </div>
                    <div class="cloud" id="date-cloud-2">
                        <div>
                            <label  class="clound-lable1">Chủ nhật</label>
                            <label  class="clound-lable2">14 tháng 5</label>
                            <label  class="clound-lable">Từ 199.000 VND</label>
                        </div>
                    </div>
                    <div class="cloud" id="date-cloud-3"
                         style="background-image: url(/images/cloud.png); background-size: 100%;">
                        <div>
                            <label class="clound-lable1">Chủ nhật</label>
                            <label  class="clound-lable2">14 tháng 5</label>
                            <label  class="clound-lable">Từ 199.000 VND</label>
                        </div>
                    </div>
                    <div class="cloud" id="date-cloud-4">
                        <div>
                            <label  class="clound-lable1">Chủ nhật</label>
                            <label  class="clound-lable2">14 tháng 5</label>
                            <label  class="clound-lable">Từ 199.000 VND</label>
                        </div>
                    </div>
                    <div class="cloud" id="date-cloud-5">
                        <div>
                            <label class="clound-lable1">Chủ nhật</label>
                            <label  class="clound-lable2">14 tháng 5</label>
                            <label  class="clound-lable">Từ 199.000 VND</label>
                        </div>
                    </div>
                    <div>
                        <i class="fa-solid fa-caret-up fa-rotate-90" id="toggle-button"></i>
                    </div>
                </div>

                <div class="container">
                    <div class="row">
                        <div style="  margin-top: 5px;
                    width: 27%;padding-right: 5px;" margin-right: 5px;></div>
                        <img class="col hinh1" src="/images/hinh1.svg">
                        <img class="col hinh2" src="/images/hinh2.svg">
                        <img class="col hinh3" src="/images/hinh3.svg">
                        <img class="col hinh4" src="/images/hinh4.svg">

                    </div>
                    <c:forEach var="flight" items="${sessionScope.listfight}">

                    <div class="row">
                        <div class=" timerow">
                            <label class="codefly">${flight.id}</label>
                            <div>
                                <label class="timefly" >${flight.gethourdeparture()}</label>
                                <label>đến</label>
                                <label class="timefly" >${flight.gethourArrial()}</label>
                            </div>
                            <label class="codefly" >Airbus</label>

                        </div>

                        <div class="col" id="type1" onclick="changeValue(this)">
                            <p>${flight.getPriceSeatFirst()}</p>
                        </div>

                        <div class="col" id="type2" onclick="changeValue(this)">
                            <p>${flight.getPriceSeatBusiness()}</p>
                        </div>
                        <div class="col" id="type3" onclick="changeValue(this)">
                            <p>${flight.getPriceSeatPremium()}</p>
                        </div>
                        <div class="col" id="type4"onclick="changeValue(this)">
                            <p>${flight.getPriceSeatEco()}</p>

                        </div>

                    </div>
                    </c:forEach>



                </div>


            </div>

            <div class="container_right col-md-4">

                <jsp:include page="/ticketbooking/frame.jsp"/>

            </div>

        </div>
    </div>
</main>
<jsp:include page="/ticketbooking/footerrender.jsp"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/js/bootstrap.min.js"></script>
<script>

    function changeValue(clicked) {
        var priceticketElement = document.getElementById("priceticketgo");
        var taxElement = document.getElementById("taxgo");
        var servicesElement = document.getElementById("servicego");
        var pricegoElement = document.getElementById("pricego");
        var totalElement = document.getElementById("total_price");

        var tax = taxElement.innerText.trim();
        var services = servicesElement.innerText.trim();
        var pricego = pricegoElement.innerText.trim();
        var newValue = clicked.innerText.trim();

        var newValueFloat = parseFloat(newValue.replace("VND", "").replace(/,/g, ""));
        var taxnew = parseFloat(tax.replace("VND", "").replace(/[.,]/g, "")) *1;
        console.log("tax:"+taxnew)

        var servicesnew = parseFloat(services.replace("VND", "").replace(/[.,]/g, ""))*1;

        var priceticketValue = newValueFloat;
        console.log("nhấn vào:"+newValueFloat)

        var pricegoValue = (newValueFloat + taxnew + servicesnew);
        console.log(pricegoValue)

        priceticketElement.innerText = priceticketValue.toLocaleString("vi-VN") + " VND";
        pricegoElement.innerText = pricegoValue.toLocaleString("vi-VN") + " VND";
        totalElement.innerText = pricegoElement.innerText;

        $.ajax({
            url: "/ChoseTicketRound",
            type: "POST",
            data: { price: pricegoElement.innerText, total: totalElement.innerText, priceticket: priceticketElement.innerText },
            success: function(response) {
                console.log('Các giá trị đã được lưu vào session'+response);
            },
            error: function(xhr, status, error) {
                console.log('Đã xảy ra lỗi: ' + error);
            }
        });
    }




</script>

</body>

</html>
