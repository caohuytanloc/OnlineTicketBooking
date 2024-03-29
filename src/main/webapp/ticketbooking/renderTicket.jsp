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
    <link rel="stylesheet" href="./css/ticket-order.css"/>
    <link rel="stylesheet" href="./css/all.css"/>
    <link rel="stylesheet" href="./css/footer-ticket.css">
    <link rel="stylesheet" href="./css/renderticket.css">

</head>

<body>
<jsp:include page="/header.jsp"/>
<div class="ticket__confirm--header">
    <div class="header__inner">
        <div class="header__left">
            <div class="ticket__information--summary">
                <p class="ticket__information--type">
                    <c:if test="${sessionScope.isRoundTrip == true}">Chuyến bay khứ hồi</c:if>
                    <c:if test="${sessionScope.isRoundTrip == false}">Chuyến bay đến</c:if></p>
                <p class="ticket__information--numOfPassenger">1 Người lớn</p>
                <%--                            <c:if test="${sessionScope.}"--%>
            </div>
            <div class="ticket__information--location">
                <div class="ticket__information--depart">
                    <p>
                        <span class="fa-solid fa-circle-dot"></span>
                        <span>Điểm khởi hành </span
                        ><span class="arrive-city">${sessionScope.departure}</span>
                    </p>
                </div>
                <div class="ticket__information--arrive">
                    <p>
                        <span class="fa-solid fa-location-dot icon--active"></span>
                        <span>Điểm đến </span
                        ><span class="depart-city">${sessionScope.destination}</span>
                    </p>
                </div>
            </div>
        </div>
        <div class="header__right">
            <button
                    type="button"
                    class="fa-solid fa-plane icon--active"
            ></button>
            <button type="button" class="fa-solid fa-user"></button>
            <button type="button" class="fa-solid fa-cart-shopping"></button>
            <button type="button" class="fa-solid fa-dollar-sign"></button>
        </div>
    </div>
</div>

<main>
    <div class="container">
        <div class="row ">

            <div class="left-container col-md-8">

                <div class="tablisttotal">
                    <div class="tablist">
                        <label style="font-weight: bold;font-size: 24px;">${sessionScope.departure}</label>

                        <label></label>

                    </div>

                    <div class="tablist">
                        <!-- <i class="fa-solid fa-arrow-left-long"></i> -->
                        <c:if test="${sessionScope.isRoundTrip == false}">
                            <svg width="57" height="22.5" viewBox="0 8 57 22.5" fill="none"
                                 xmlns="http://www.w3.org/2000/svg" style="height: 100%;">
                                <path d="M8 18H41L45.8182 21H8V18Z" fill="#DA2128"></path>
                                <path d="M36.8835 21H48.5C39 16 40 17 33 11V18L36.8835 21Z" fill="#DA2128"></path>
                            </svg>
                        </c:if>
                        <c:if test="${sessionScope.isRoundTrip == true}">

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
                        <label style="font-weight: bold;font-size: 24px;">${sessionScope.destination}</label>

                        <label></label>

                    </div>
                </div>


                <div class="date-flight">
                    <div>
                        <a><i class="fa-solid fa-caret-up fa-rotate-270" id="toggle-button"></i></a>
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
                            <label class="clound-lable2">${sessionScope.departureTime}</label>
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
                        <a  ><i class="fa-solid fa-caret-up fa-rotate-90" id="toggle-button"></i></a>
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
                    <c:if test="${sessionScope.listfight==null}">
                        <label style=" margin-top: 5%;
    padding-left: 50%;
    color: red;">${sessionScope.eror}</label>
                    </c:if>
                    <c:forEach var="flight" items="${sessionScope.listfight}">

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

                            <div class="col" id="type1" onclick="changeValue(this,'${flight.id}','First')">
                                <p>${flight.getPriceSeatFirst()}</p>
                            </div>

                            <div class="col" id="type2" onclick="changeValue(this,'${flight.id}','Business')">
                                <p>${flight.getPriceSeatBusiness()}</p>
                            </div>
                            <div class="col" id="type3" onclick="changeValue(this,'${flight.id}','Premium')">
                                <p>${flight.getPriceSeatPremium()}</p>
                            </div>
                            <div class="col" id="type4" onclick="changeValue(this,'${flight.id}','Eco')">
                                <p>${flight.getPriceSeatEco()}</p>

                            </div>

                        </div>
                    </c:forEach>


                </div>


            </div>
            <c:if test="${sessionScope.isRoundTrip == true}">
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
                                        <div class="pricego" id="pricego">
                                            0 VND
                                            <span><a href="#" class="fa-solid fa-pen"></a></span>
                                        </div>
                                    </div>
                                    <div class="departure--price-info">
                                        <div class="departure--price">
                                            <div class="container">
                                                <p class="departure depart-city">
                                                        ${sessionScope.departure}
                                                </p>
                                                <i class="fa-solid fa-plane"></i>
                                                <p class="departure arrive-city">${sessionScope.destination} </p>
                                                <h5>${sessionScope.departureTime} </h5>
                                            </div>
                                            <div class="departure__ticket container--info">
                                                <div class="departure__ticket--price">Giá vé</div>
                                                <div class="" id="priceticketgo">
                                                    0 VND
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
                                                0 VND
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
                                                   0 VND
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
                                                        ${sessionScope.destination}
                                                </p>
                                                <i class="fa-solid fa-plane"></i>
                                                <p class="return arrive-city">${sessionScope.departure} </p>
                                                <h5>${sessionScope.departureTime} </h5>
                                            </div>
                                            <div class="return__ticket__container--price container--info">
                                                <div class="">Giá vé</div>
                                                <div class="" id="priceticketreturn">
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
                                                <div class="">Phí - Thuế</div>
                                                <div class="" id="taxreturn">
                                                    0 VND
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
                                                    0 VND
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
                                    <h3 name="total_price" class="total__price price" id="total_price"
                                        style="color: white!important;"></h3>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>

            </c:if>
            <c:if test="${sessionScope.isRoundTrip == false}">
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
                                        <div class="pricego" id="pricego">
                                            0 VND
                                            <span><a href="#" class="fa-solid fa-pen"></a></span>
                                        </div>
                                    </div>
                                    <div class="departure--price-info">
                                        <div class="departure--price">
                                            <div class="container">
                                                <p class="departure depart-city">
                                                        ${sessionScope.departure}
                                                </p>
                                                <i class="fa-solid fa-plane"></i>
                                                <p class="departure arrive-city">${sessionScope.destination} </p>
                                                <h5>${sessionScope.departureTime} </h5>
                                            </div>
                                            <div class="departure__ticket container--info">
                                                <div class="departure__ticket--price">Giá vé</div>
                                                <div class="" id="priceticketgo">
                                                    0 VND
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
                                                 0 VND
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
                                                    0 VND
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
                                    <h3 name="total_price" class="total__price price" id="total_price"
                                        style="color: white!important;"></h3>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>

            </c:if>

        </div>
    </div>
</main>
<jsp:include page="/ticketbooking/footerrender.jsp"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/js/bootstrap.min.js"></script>
<script>
    function  check(event){
    var element = document.getElementById("footer-value"); // Thay "yourElementId" bằng id của thẻ bạn muốn kiểm tra
    if (!element.innerHTML) {
        event.preventDefault(); // Ngăn chặn chuyển đến trang mới

        alert("Vui lòng chọn vé");
        return;
    }
    }

</script>
<script>

    function changeValue(clicked, id, type) {


        var priceticketElement = document.getElementById("priceticketgo");
        var taxElement = document.getElementById("taxgo");
        var servicesElement = document.getElementById("servicego");
        var pricegoElement = document.getElementById("pricego");
        var totalElement = document.getElementById("total_price");
        var total_footer = document.getElementById("footer-value");

        var tax = taxElement.innerText.trim();
        var services = servicesElement.innerText.trim();
        var pricego = pricegoElement.innerText.trim();
        var newValue = clicked.innerText.trim();

        var newValueFloat = parseFloat(newValue.replace("VND", "").replace(/,/g, ""));
        var taxnew = parseFloat(tax.replace("VND", "").replace(/[.,]/g, "")) * 1;
        console.log("tax:" + taxnew)

        var servicesnew = parseFloat(services.replace("VND", "").replace(/[.,]/g, "")) * 1;

        var priceticketValue = newValueFloat;
        console.log("nhấn vào:" + newValueFloat)

        var pricegoValue = (newValueFloat + taxnew + servicesnew);
        console.log(pricegoValue)

        priceticketElement.innerText = priceticketValue.toLocaleString("vi-VN") + " VND";
        pricegoElement.innerText = pricegoValue.toLocaleString("vi-VN") + " VND";
        totalElement.innerText = pricegoElement.innerText;
        total_footer.innerText=pricegoElement.innerText;
        $.ajax({
            url: "/ChoseTicketGo",
            type: "POST",
            data: {
                price: pricegoElement.innerText,
                total: totalElement.innerText,
                priceticket: priceticketElement.innerText,
                id: id,
                typego: type
            },
            success: function (response) {
                console.log('Các giá trị đã được lưu vào session' + response);
            },
            error: function (xhr, status, error) {
                console.log('Đã xảy ra lỗi: ' + error);
            }
        });
    }


</script>
<script src="/webjars/moment/2.29.1/moment.js"></script>


<script>
    document.addEventListener("DOMContentLoaded", function() {
        // Cấu hình Moment.js Locales cho vùng miền mong muốn
        moment.locale('vi', {
            weekdays: [
                'Chủ nhật',
                'Thứ hai',
                'Thứ ba',
                'Thứ tư',
                'Thứ năm',
                'Thứ sáu',
                'Thứ bảy'
            ],
            months: [
                'Tháng 1',
                'Tháng 2',
                'Tháng 3',
                'Tháng 4',
                'Tháng 5',
                'Tháng 6',
                'Tháng 7',
                'Tháng 8',
                'Tháng 9',
                'Tháng 10',
                'Tháng 11',
                'Tháng 12'
            ]
        });

        // Lặp qua từng thẻ div và tính toán ngày cho các thẻ trước và sau "date-cloud-3"
        const dateCloud3 = document.getElementById('date-cloud-3');
        const label1 = dateCloud3.querySelector('#date-cloud-3 .clound-lable1');
        const label2 = dateCloud3.querySelector('#date-cloud-3 .clound-lable2');


// Lấy ngày tháng năm từ label2 của clound-date-3
        const dateText = label2.textContent;
        // console.log(dateText);

        const [dayOfMonth, month, year] = dateText.split('/');
        const paddedDayOfMonth = dayOfMonth.padStart(2, '0');
        const paddedMonth = month.padStart(2, '0');
// Tạo đối tượng Moment từ ngày tháng năm của clound-date-3
        const date = paddedDayOfMonth+'/'+paddedMonth+'/'+year;

        const currentDate = moment(date, 'DD/MM/YYYY');
        label2.textContent = 'Ngày '+paddedDayOfMonth+' Tháng '+paddedMonth;
        const dayof = currentDate.format('dddd');

        label1.textContent = dayof;

// Tìm giá trị của clound-date-2 (ngày trước clound-date-3)
        const prevDate = currentDate.clone().subtract(1, 'days');
        const prevDayOfWeek = prevDate.format('dddd');
        const prevDayOfMonth = prevDate.format('D');
        const prevMonth = prevDate.format('MMMM');

        const prevDateCloud = document.getElementById('date-cloud-2');
        const prevLabel1 = prevDateCloud.querySelector('.clound-lable1');
        const prevLabel2 = prevDateCloud.querySelector('.clound-lable2');
        prevLabel1.textContent = prevDayOfWeek;
        prevLabel2.textContent = 'Ngày '+prevDayOfMonth+' '+prevMonth;

// Tìm giá trị của clound-date-4 (ngày sau clound-date-3)
        const nextDate = currentDate.clone().add(1, 'days');
        const nextDayOfWeek = nextDate.format('dddd');
        const nextDayOfMonth = nextDate.format('D');
        const nextMonth = nextDate.format('MMMM');
        const nextDateCloud = document.getElementById('date-cloud-4');
        const nextLabel1 = nextDateCloud.querySelector('.clound-lable1');
        const nextLabel2 = nextDateCloud.querySelector('.clound-lable2');
        nextLabel1.textContent = nextDayOfWeek;
        nextLabel2.textContent = 'Ngày '+nextDayOfMonth+' '+nextMonth;

// Tìm giá trị của clound-date-1 (ngày trước clound-date-3)
        const prevPrevDate = currentDate.clone().subtract(2, 'days');
        const prevPrevDayOfWeek = prevPrevDate.format('dddd');
        const prevPrevDayOfMonth = prevPrevDate.format('D');
        const prevPrevMonth = prevPrevDate.format('MMMM');

        const prevPrevDateCloud = document.getElementById('date-cloud-1');
        const prevPrevLabel1 = prevPrevDateCloud.querySelector('.clound-lable1');
        const prevPrevLabel2 = prevPrevDateCloud.querySelector('.clound-lable2');
        prevPrevLabel1.textContent = prevPrevDayOfWeek;
        prevPrevLabel2.textContent ='Ngày '+prevPrevDayOfMonth+' '+prevPrevMonth;
// Tìm giá trị của clound-date-5 (ngày sau clound-date-3)
        const nextNextDate = currentDate.clone().add(2, 'days');
        const nextNextDayOfWeek = nextNextDate.format('dddd');
        const nextNextDayOfMonth = nextNextDate.format('D');
        const nextNextMonth = nextNextDate.format('MMMM');

        const nextNextDateCloud = document.getElementById('date-cloud-5');
        const nextNextLabel1 = nextNextDateCloud.querySelector('.clound-lable1');
        const nextNextLabel2 = nextNextDateCloud.querySelector('.clound-lable2');
        nextNextLabel1.textContent = nextNextDayOfWeek;
        nextNextLabel2.textContent = 'Ngày '+nextNextDayOfMonth+' '+nextNextMonth;


    });



</script>

</body>

</html>
