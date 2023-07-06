
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Đặt vé</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ticket-order.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer-ticket.css">
</head>
<body>

<div class="app">

    <header class="header">
        <div class="navbar__container">
            <div class="navbar__inner">
                <div class="navbar__logo">
                    <img src="logo-white.svg" alt="logo" srcset=""/>
                </div>
            </div>
            <div class="navbar__nav">
                <div class="nav__top">
                    <div class="user__signin">
                        <a href="/SignUp">Đăng ký</a>
                    </div>
                    <div>|</div>
                    <div class="user__signup">
                        <a href="/Login">Đăng nhập </a>
                    </div>
                </div>
                <div class="nav__bottom">
                    <nav class="nav__bottom--item">Skyjoy</nav>
                    <nav class="nav__bottom--item">Chuyến bay của tôi</nav>
                    <nav href="${pageContext.request.contextPath}/checkIn" class="nav__bottom--item">Online Check-in
                    </nav>
                    <nav class="nav__bottom--item tab">Dịch vụ chuyến bay</nav>
                    <nav class="nav__bottom--item tab">Dịch vụ khác</nav>
                </div>
            </div>
        </div>
    </header>
    <div class="ticket__confirm">
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
                                ><span class="arrive-city">${sessionScope.departureFlight.getDepartureCity()}</span>
                            </p>
                        </div>
                        <div class="ticket__information--arrive">
                            <p>
                                <span class="fa-solid fa-location-dot icon--active"></span>
                                <span>Điểm đến </span
                                ><span class="depart-city">${sessionScope.departureFlight.arrivalCity}</span>
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
        <div class="container">
            <div class="container__inner">
                <div class="container__left">
                    <div class="container__left--card">
                        <div>
                            <p class="container__text--right">
                                Tính theo giờ địa phương tại sân bay
                            </p>
                        </div>
                        <div class="ticket--depart ticket__bg">
                            <div class="departure--container">
                                <div class="container--header">
                                    <div class="departure--title ticket__title">Chuyến đi</div>
                                    <div class="ticket--edit">
                                        <p>Chọn chuyến khác</p>
                                        <a
                                                href=""
                                                class="fa-solid fa-arrow-rotate-left"
                                        ></a>
                                    </div>
                                    <div class="borderBottom"></div>
                                </div>
                                <div class="departure__ticket">
                                    <div class="departure__ticket date">
                                        <p><%= session.getAttribute("departureTime") %></p>
                                    </div>
                                    <div class="departure__ticket information">
                                        <div class="departure--information ">
<%--                                            <p class="departure--city city"><%= session.getAttribute("departureCity")%></p>--%>
<%--                                            <p class="departure--time time"><%= session.getAttribute("departureTime")%></p>--%>
                                            <p class="departure--city city">${sessionScope.departureFlight.getDepartureCity()}</p>
                                            <p class="departure--time time">${sessionScope.departureFlight.departureTime}</p>
                                        </div>
                                        <div class="departure__information--">
                                            <p class="departure--airplane-code">
                                                ${sessionScope.departureFlight.airplaneName} <span><i class="fa-solid fa-plane"></i></span>
                                            </p>
                                        </div>
                                        <div class="departure__information--">
<%--                                            <p class="arrive--city city"><%= session.getAttribute("destinationCity")%></p>--%>
<%--                                            <p class="arrrive--time time"><%= session.getAttribute("destinationTime")%></p>--%>
    <p class="arrive--city city">${sessionScope.departureFlight.arrivalCity}</p>
    <p class="arrrive--time time">${sessionScope.departureFlight.arrivalTime}</p>
                                        </div>
                                        <div class="airplane--info">
                                            <p class="airplane-type">Airbus: ${sessionScope.departureFlight.airplaneName}</p>
                                            <p>Operated by: Vietjet</p>
                                        </div>
                                    </div>
                                    <div class="departure__ticket price">
                                        <p>${sessionScope.priceticket}</p>
                                    </div>
                                </div>
                                <div></div>
                            </div>
                        </div>
                        <c:if test="${sessionScope.isRoundTrip == true}">
                            <div class="ticket--return ticket__bg">
                                <div class="return--container">
                                    <div class="container--header">
                                        <p class="return--title ticket__title">Chuyến về</p>
                                        <div class="ticket--edit">
                                            <p>Chọn chuyến khác</p>
                                            <a
                                                    href=""
                                                    class="fa-solid fa-arrow-rotate-left"
                                            ></a>
                                        </div>
                                    </div>
                                    <div class="return__ticket date">
                                        <div class="return__ticket">
                                            <p>${sessionScope.returnFlight.departureTime}</p>
                                        </div>
                                    </div>
                                    <div class="return__ticket information">
                                        <div class="departure__information">
                                            <p class="departure--city city"><%= session.getAttribute("returnDestinationCity")%></p>
                                            <p class="departure--time time"><%= session.getAttribute("returnDepartureTime")%></p>
                                        </div>
                                        <div class="departure__information airplane-type">
                                            <p class="departure--airplane-code">
                                                    ${sessionScope.departureFlight.airplaneName}<span><i class="fa-solid fa-plane"></i></span>
                                            </p>
                                        </div>
                                        <div class="arrive__information">
                                            <p class="arrive--city city"><%= session.getAttribute("returnDepartureCity")%></p>
                                            <p class="arrrive--time time"><%= session.getAttribute("returnDestinationTime")%></p>
                                        </div>
                                        <div class="airplane--info">
                                            <p class="airplane-type">Airbus: A320</p>
                                            <p>Operated by: Vietjet</p>
                                        </div>
                                    </div>
                                    <div class="return__ticket price">
                                        <p>${sessionScope.pricereturn}</p>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </div>
                </div>
                <div class="container__right">
<%--                    <div class="reservation__information">--%>
<%--                        <div class="reservation__information--header">--%>
<%--                            <h3>Thông tin đặt chỗ</h3>--%>
<%--                            <button type="button">Chi tiết</button>--%>
<%--                        </div>--%>
<%--                        <div class="reservation__information--detail">--%>
<%--                            <div class="departure--detail detail">--%>
<%--                                <div class="container">--%>
<%--                                    <p>Chuyến đi</p>--%>
<%--                                    <div class="price">--%>
<%--                                        <%=session.getAttribute("departurePrice") %>--%>
<%--                                        <span><a href="#" class="fa-solid fa-pen"></a></span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="departure--price-info">--%>
<%--                                    <div class="departure--price">--%>
<%--                                        <div class="container">--%>
<%--                                            <p class="departure depart-city">--%>
<%--                                                <%= session.getAttribute("departureCity")%>--%>
<%--                                            </p>--%>
<%--                                            <i class="fa-solid fa-plane"></i>--%>
<%--                                            <p class="departure arrive-city"><%= session.getAttribute("destinationCity")%></p>--%>
<%--                                            <h5>Tue, 04/07/2023 | <%= session.getAttribute("departureTime")%> - <%= session.getAttribute("destinationTime")%> | VJ198 </h5>--%>
<%--                                        </div>--%>
<%--                                        <div class="departure__ticket container--info">--%>
<%--                                            <div class="departure__ticket--price">Giá vé</div>--%>
<%--                                            <div class="">--%>
<%--                                                ${sessionScope.priceticket}--%>
<%--                                                <span--%>
<%--                                                ><button--%>
<%--                                                        type="button"--%>
<%--                                                        class="fa-solid fa-caret-down price--info"--%>
<%--                                                ></button--%>
<%--                                                ></span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <c:if test="${sessionScope.isRoundTrip == true}">--%>
<%--                                <div class="return--detail detail">--%>
<%--                                    <div class="container">--%>
<%--                                        <p>Chuyến về</p>--%>
<%--                                        <div class="price">--%>
<%--                                                ${sessionScope.pricereturn}                                            <span><a href="#" class="fa-solid fa-pen"></a></span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="return--price-info">--%>
<%--                                        <div class="return--price">--%>
<%--                                            <div class="container">--%>
<%--                                                <p class="return depart-city">--%>
<%--                                                    <%= session.getAttribute("returnDepartureCity")%>--%>
<%--                                                </p>--%>
<%--                                                <i class="fa-solid fa-plane"></i>--%>
<%--                                                <p class="return arrive-city">--%>
<%--                                                    <%= session.getAttribute("returnDestinationCity")%>--%>
<%--                                                </p>--%>
<%--                                                <h5>Tue, 04/07/2023 | <%= session.getAttribute("returnDepartureTime")%> - <%= session.getAttribute("returnDestinationTime")%> | VJ198 | Eco</h5>--%>
<%--                                            </div>--%>
<%--                                            <div class="return__ticket__container--price container--info">--%>
<%--                                                <div class="">Giá vé</div>--%>
<%--                                                <div class="">--%>
<%--                                                    <%=session.getAttribute("pricereturn") %>--%>

<%--                                                    <span--%>
<%--                                                    ><button--%>
<%--                                                            type="button"--%>
<%--                                                            class="fa-solid fa-caret-down price--info"--%>
<%--                                                    ></button--%>
<%--                                                    ></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </c:if>--%>
<%--                            <div class="total__price">--%>
<%--                                <p>Tổng tiền</p>--%>
<%--                                <h3 class="total__price price"><%= session.getAttribute("total")%></h3>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
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
                            <p class="departure depart-city">(SGN)
                            </p>
                            <i class="fa-solid fa-plane"></i>
                            <p class="departure arrive-city">${sessionScope.destination} (HAN)</p>
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
                        <%=session.getAttribute("pricereturn") %>
                        <span><a href="#" class="fa-solid fa-pen"></a></span>
                    </div>
                </div>
                <div class="return--price-info">
                    <div class="return--price">
                        <div class="container">
                            <p class="return depart-city">
                                ${sessionScope.destination} (SGN)
                            </p>
                            <i class="fa-solid fa-plane"></i>
                            <p class="return arrive-city">${sessionScope.departure} (HAN)</p>
                            <h5>Tue, 04/07/2023 | 05:25 - 07:35 | VJ198 | Eco</h5>
                        </div>
                        <div class="return__ticket__container--price container--info">
                            <div class="">Giá vé</div>
                            <div class="" id="priceticketreturn">
                                ${sessionScope.priceticketreturn}
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
                    style="color: white!important;">  ${sessionScope.total}</h3>
            </div>
        </div>
    </div>

                </div>
            </div>
        </div>
    </div>
    <footer class="footer">
        <div class="footer__container">
            <div class="footer__back">
                <button type="button" class="footer__btn--return">Quay lại</button>
            </div>
            <div class="footer__price__total">
                <p>Tổng tiền</p>
<%--                <p class="footer__price price"><%= (int) Integer.parseInt((String) session.getAttribute("departurePrice")) + (int) Integer.parseInt((String) session.getAttribute("returnPrice")) %></p>--%>
            </div>
            <div class="footer__next">
                <a href="/userInformationForm">
                    <button id="btn-next__Form" class="footer__btn--next" type="button">Đi tiếp</button>
                </a>
            </div>
        </div>
    </footer>
</div>
</body>

<script>

</script>
</html>
