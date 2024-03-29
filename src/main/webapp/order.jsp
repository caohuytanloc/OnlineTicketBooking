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

    <jsp:include page="/header.jsp"/>

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
                                        <p><%= session.getAttribute("departureTime") %>
                                        </p>
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
                                                ${sessionScope.departureFlight.airplaneName} <span><i
                                                    class="fa-solid fa-plane"></i></span>
                                            </p>
                                        </div>
                                        <div class="departure__information--">
                                            <%--                                            <p class="arrive--city city"><%= session.getAttribute("destinationCity")%></p>--%>
                                            <%--                                            <p class="arrrive--time time"><%= session.getAttribute("destinationTime")%></p>--%>
                                            <p class="arrive--city city">${sessionScope.departureFlight.arrivalCity}</p>
                                            <p class="arrrive--time time">${sessionScope.departureFlight.arrivalTime}</p>
                                        </div>
                                        <div class="airplane--info">
                                            <p class="airplane-type">
                                                Airbus: ${sessionScope.departureFlight.airplaneName}</p>
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
                                            <p class="departure--city city"><%= session.getAttribute("returnDestinationCity")%>
                                            </p>
                                            <p class="departure--time time"><%= session.getAttribute("returnDepartureTime")%>
                                            </p>
                                        </div>
                                        <div class="departure__information airplane-type">
                                            <p class="departure--airplane-code">
                                                    ${sessionScope.departureFlight.airplaneName}<span><i
                                                    class="fa-solid fa-plane"></i></span>
                                            </p>
                                        </div>
                                        <div class="arrive__information">
                                            <p class="arrive--city city"><%= session.getAttribute("returnDepartureCity")%>
                                            </p>
                                            <p class="arrrive--time time"><%= session.getAttribute("returnDestinationTime")%>
                                            </p>
                                        </div>
                                        <div class="airplane--info">
                                            <p class="airplane-type">Airbus: ${sessionScope.departureFlight.airplaneName}</p>
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
                    <c:if test="${sessionScope.isRoundTrip == true}">
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
                                        ${sessionScope.priceticket}
                                        <span><a href="#" class="fa-solid fa-pen"></a></span>
                                    </div>
                                </div>
                                <div class="departure--price-info">
                                    <div class="departure--price">
                                        <div class="container">
                                            <p class="departure depart-city">${sessionScope.departureFlight.getDepartureCity()}
                                            </p>
                                            <i class="fa-solid fa-plane"></i>
                                            <p class="departure arrive-city">${sessionScope.destination}</p>
                                            <h5>${sessionScope.departureTime} </h5>
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
                                                ${sessionScope.destination}
                                            </p>
                                            <i class="fa-solid fa-plane"></i>
                                            <p class="return arrive-city">${sessionScope.departure} </p>
                                            <h5>${sessionScope.destinationTime} </h5>
                                        </div>
                                        <div class="return__ticket__container--price container--info">
                                            <div class="">Giá vé</div>
                                            <div class="" id="priceticketreturn">
                                                ${sessionScope.pricereturn}
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
                                    style="color: white!important;"> ${sessionScope.total}</h3>
                            </div>
                        </div>
                    </div>
                    </c:if>
                    <c:if test="${sessionScope.isRoundTrip == false}">

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
                                                ${sessionScope.priceticket}
                                            <span><a href="#" class="fa-solid fa-pen"></a></span>
                                        </div>
                                    </div>
                                    <div class="departure--price-info">
                                        <div class="departure--price">
                                            <div class="container">
                                                <p class="departure depart-city">${sessionScope.departureFlight.getDepartureCity()}
                                                </p>
                                                <i class="fa-solid fa-plane"></i>
                                                <p class="departure arrive-city">${sessionScope.destination}</p>
                                                    <%--                            <h5>Tue, 04/07/2023 | 05:25 - 07:35 | VJ198 | Eco</h5>--%>                                                <h5>${sessionScope.destinationTime} </h5>

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
                                        style="color: white!important;"> ${sessionScope.total}</h3>
                                </div>
                            </div>
                        </div>
                    </c:if>

</div>
            </div>
        </div>
    </div>
    <footer class="footer">
        <div class="footer__container">
            <div class="footer__back">
                <a href="/RenderTicket?action=back">

                    <button type="button" class="footer__btn--return">Quay lại</button></a>
            </div>
            <div class="footer__price__total">
                <p>Tổng tiền</p>
                                <p class="footer__price price">${sessionScope.total}</p>
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
