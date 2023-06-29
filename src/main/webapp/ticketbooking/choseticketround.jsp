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
    <link rel="stylesheet" href="./css/ticket-order.css" />
    <link rel="stylesheet" href="./css/all.css" />
    <link rel="stylesheet" href="./css/footer-ticket.css">
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
            margin-bottom: 5px;
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
                        <label style="font-weight: bold;font-size: 24px;">SGN</label>

                        <label>Hồ Chí Minh</label>

                    </div>

                    <div class="tablist">
                        <!-- <i class="fa-solid fa-arrow-left-long"></i> -->
                        <c:if test="${sessionScope.isRoundTrip=false}">
                            <svg width="57" height="22.5" viewBox="0 8 57 22.5" fill="none"
                                 xmlns="http://www.w3.org/2000/svg" style="height: 100%;">
                                <path d="M8 18H41L45.8182 21H8V18Z" fill="#DA2128"></path>
                                <path d="M36.8835 21H48.5C39 16 40 17 33 11V18L36.8835 21Z" fill="#DA2128"></path>
                            </svg>
                        </c:if>
                        <c:if test="${sessionScope.isRoundTrip= true}">

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
                        <label style="font-weight: bold;font-size: 24px;">HAN</label>

                        <label>Hà Nội</label>

                    </div>
                </div>


                <div class="date-flight">
                    <div>
                        <i class="fa-solid fa-caret-up fa-rotate-270" id="toggle-button"></i>
                    </div>
                    <div class="cloud" id="date-cloud-1">
                        <div>
                            <label class="clound-lable1">Chủ nhật</label>
                            <label class="clound-lable2">14 tháng 5</label>
                            <label class="clound-lable">Từ 199.000 VND</label>
                        </div>
                    </div>
                    <div class="cloud" id="date-cloud-2">
                        <div>
                            <label class="clound-lable1">Chủ nhật</label>
                            <label class="clound-lable2">14 tháng 5</label>
                            <label class="clound-lable">Từ 199.000 VND</label>
                        </div>
                    </div>
                    <div class="cloud" id="date-cloud-3"
                         style="background-image: url(/images/cloud.png); background-size: 100%;">
                        <div>
                            <label class="clound-lable1">Chủ nhật</label>
                            <label class="clound-lable2">14 tháng 5</label>
                            <label class="clound-lable">Từ 199.000 VND</label>
                        </div>
                    </div>
                    <div class="cloud" id="date-cloud-4">
                        <div>
                            <label class="clound-lable1">Chủ nhật</label>
                            <label class="clound-lable2">14 tháng 5</label>
                            <label class="clound-lable">Từ 199.000 VND</label>
                        </div>
                    </div>
                    <div class="cloud" id="date-cloud-5">
                        <div>
                            <label class="clound-lable1">Chủ nhật</label>
                            <label class="clound-lable2">14 tháng 5</label>
                            <label class="clound-lable">Từ 199.000 VND</label>
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
                    <c:forEach var="flight" items="${sessionScope.listfightreturn}">

                        <div class="row">
                            <div class=" timerow">
                                <label class="codefly">${flight.id}</label>
                                <div>
                                    <label class="timefly">${flight.gethourdeparture()}</label>
                                    <label>đến</label>
                                    <label class="timefly">${flight.gethourArrial()}</label>
                                </div>
                                <label class="codefly">Airbus</label>

                            </div>

                            <div class="col" id="type1" onclick="change(this,'${flight.id}','First')">
                                <p>${flight.getPriceSeatFirst()}</p>
                            </div>

                            <div class="col" id="type2" onclick="change(this,'${flight.id}','Business')">
                                <p>${flight.getPriceSeatBusiness()}</p>
                            </div>
                            <div class="col" id="type3" onclick="change(this,'${flight.id}','Premium')">
                                <p>${flight.getPriceSeatPremium()}</p>
                            </div>
                            <div class="col" id="type4" onclick="change(this,'${flight.id}','Eco')">
                                <p>${flight.getPriceSeatEco()}</p>

                            </div>

                        </div>
                    </c:forEach>


                </div>


            </div>
            <div class="container_right col-md-4">

    <div class="container_right">
        <div class="reservation__information">
            <div class="reservation__information--header">
                <h3>Thông tin đặt chỗ</h3>
                <button type="button">Chi tiết</button>
            </div>
            <div class="reservation__information--detail">
                <div class="departure--detail detail">
                    <div class="container">
                        <p>Chuyến đi</p>
                        <div class="pricego"id="pricego">
                            ${sessionScope.price}
                            <span><a href="#" class="fa-solid fa-pen"></a></span>
                        </div>
                    </div>
                    <div class="departure--price-info">
                        <div class="departure--price">
                            <div class="container">
                                <p class="departure depart-city">
                                    Tp. Hồ Chí Minh (SGN)
                                </p>
                                <i class="fa-solid fa-plane"></i>
                                <p class="departure arrive-city">Hà Nội (HAN)</p>
                                <h5>Tue, 04/07/2023 | 05:25 - 07:35 | VJ198 | Eco</h5>
                            </div>
                            <div class="departure__ticket container--info">
                                <div class="departure__ticket--price">Giá vé</div>
                                <div class="" id="priceticketgo">

                                    ${sessionScope.priceticket}
                                    <span
                                    ><button
                                            type="button"
                                            class="fa-solid fa-caret-down price--info"
                                    ></button

                                    ></span>

                                </div>
                                <%--              <div style="display: block;">--%>
                                <%--                <div>--%>
                                <%--                  <label >Skyboss</label>--%>
                                <%--                  <label >3.690.000</label>--%>

                                <%--                </div>--%>
                                <%--                <div>--%>
                                <%--                  <label >Thế VAT</label>--%>
                                <%--                  <label >369.000</label>--%>

                                <%--                </div>--%>
                                <%--              </div>--%>
                            </div>
                            <div class="departure__ticket__container--fee container--info">
                                <div class="">Phí - Thuế</div>
                                <div class="" id="taxgo">
                                    1.850.300 VND
                                    <span
                                    ><button
                                            type="button"
                                            class="fa-solid fa-caret-down fee--info"
                                    ></button
                                    ></span>
                                    <%--                <div style="display: block;">--%>
                                    <%--                                                      <div>--%>
                                    <%--                                                          <label >Phụ thu dịch vụ hệ thống (Quốc nội)</label>--%>
                                    <%--                                                          <label >3.690.000</label>--%>

                                    <%--                                                      </div>--%>
                                    <%--                                                      <div>--%>
                                    <%--                                                          <label >Phụ thu quản trị hệ thống</label>--%>
                                    <%--                                                          <label >369.000</label>--%>

                                    <%--                                                      </div>--%>
                                    <%--                                                      <div>--%>
                                    <%--                                                          <label >Phí an ninh soi chiếu</label>--%>
                                    <%--                                                          <label >369.000</label>--%>

                                    <%--                                                      </div>--%>
                                    <%--                                                      <div>--%>
                                    <%--                                                          <label >Phí sân bay quốc nội</label>--%>
                                    <%--                                                          <label >369.000</label>--%>

                                    <%--                                                      </div>--%>
                                    <%--                                                      <div>--%>
                                    <%--                                                          <label >Thuế VAT</label>--%>
                                    <%--                                                          <label >369.000</label>--%>

                                    <%--                                                      </div>--%>
                                    <%--                </div>--%>
                                </div>
                            </div>
                            <div class="departure__ticket__container--service container--info">
                                <div class="">Dịch vụ</div>
                                <div class="" id="servicego">
                                    1.850.300 VND
                                    <span
                                    ><button
                                            type="button"
                                            class="fa-solid fa-caret-down service--info"
                                    ></button
                                    ></span>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="return--detail detail">
                    <div class="container">
                        <p>Chuyến về</p>
                        <div id="pricereturn">
                            0 VND
                            <span><a href="#" class="fa-solid fa-pen"></a></span>
                        </div>
                    </div>
                    <div class="return--price-info">
                        <div class="return--price">
                            <div class="container">
                                <p class="return depart-city">
                                    Tp. Hồ Chí Minh (SGN)
                                </p>
                                <i class="fa-solid fa-plane"></i>
                                <p class="return arrive-city">Hà Nội (HAN)</p>
                                <h5>Tue, 04/07/2023 | 05:25 - 07:35 | VJ198 | Eco</h5>
                            </div>
                            <div class="return__ticket__container--price container--info">
                                <div class="">Giá vé</div>
                                <div class=""id="priceticketreturn">
                                    0 VND
                                    <span
                                    ><button
                                            type="button"
                                            class="fa-solid fa-caret-down price--info"
                                    ></button
                                    ></span>
                                </div>
                            </div>
                            <div class="return__ticket__container--fee container--info">
                                <div class="" >Phí - Thuế</div>
                                <div class="" id="taxreturn">
                                    1.850.300 VND
                                    <span
                                    ><button
                                            type="button"
                                            class="fa-solid fa-caret-down fee--info"
                                    ></button
                                    ></span>
                                </div>
                            </div>
                            <div class="return__ticket__container--service container--info">
                                <div class="">Dịch vụ</div>
                                <div class="" id="servicereturn">
                                    1.850.300 VND
                                    <span
                                    ><button
                                            type="button"
                                            class="fa-solid fa-caret-down service--info"
                                    ></button
                                    ></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="total__price" style="background: linear-gradient(359.2deg, #d91a21 53.08%, #6f0000 206.46%);border-bottom-right-radius: 10px;
    border-bottom-left-radius: 10px;padding: 10px;">
                    <p style="color: white">Tổng tiền</p>
                    <h3 class="total__price price" id="total_price" style="color: white!important;">  ${sessionScope.total}</h3>
                </div>
            </div>
        </div>
    </div>
            </div>


        </div>
    </div>
</main>
<jsp:include page="/ticketbooking/footer.jsp"/>


<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/js/bootstrap.min.js"></script>
<script>


    function change(clicked,id,typeReturn) {
        var priceticketElement = document.getElementById("priceticketreturn");
        var taxElement = document.getElementById("taxreturn");
        var servicesElement = document.getElementById("servicereturn");
        var pricegoElement = document.getElementById("pricereturn");
        var pricereturnElement = document.getElementById("pricego");

        var totalElement = document.getElementById("total_price");

        var tax = taxElement.innerText.trim();
        var services = servicesElement.innerText.trim();
        var pricego = pricegoElement.innerText.trim();
        var pricereturn = pricereturnElement.innerText.trim();
        var newValue = clicked.innerText.trim();

        var pricreutrnnew = parseFloat(pricereturn.replace("VND", "").replace(/[.,]/g, "")) * 1;

        var newValueFloat = parseFloat(newValue.replace("VND", "").replace(/,/g, ""));
        var taxnew = parseFloat(tax.replace("VND", "").replace(/[.,]/g, "")) * 1;
        console.log("tax:" + taxnew);

        var servicesnew = parseFloat(services.replace("VND", "").replace(/[.,]/g, "")) * 1;

        var priceticketValue = newValueFloat;
        console.log("nhấn vào:" + newValueFloat);

        var pricegoValue = newValueFloat + taxnew + servicesnew;
        console.log(pricegoValue);

        priceticketElement.innerText = priceticketValue.toLocaleString("vi-VN") + " VND";
        pricegoElement.innerText = pricegoValue.toLocaleString("vi-VN") + " VND";
        totalElement.innerText = (pricegoValue + pricreutrnnew).toLocaleString("vi-VN") + " VND";
        $.ajax({
            url: "/order",
            type: "POST",
            data: { idReturn:id,typeReturn:typeReturn},
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
