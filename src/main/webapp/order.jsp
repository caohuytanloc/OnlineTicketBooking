<%--
  Created by IntelliJ IDEA.
  User: howl
  Date: 6/27/2023
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đặt vé</title>
    <link rel="stylesheet" href="./styles/ticket-order.css" />
    <link rel="stylesheet" href="./styles/header.css" />
    <link rel="stylesheet" href="./styles/all.css" />
    <link rel="stylesheet" href="./styles/footer-ticket.css">
</head>

<body>
<div class="app">
    <%@ include file="header.jsp" %>
    <div class="ticket__confirm">
        <div class="ticket__confirm--header">
            <div class="header__inner">
                <div class="header__left">
                    <div class="ticket__information--summary">
                        <p class="ticket__information--type">Chuyến bay khứ hồi</p>
                        <p class="ticket__information--numOfPassenger">1 Người lớn</p>
                    </div>
                    <div class="ticket__information--location">
                        <div class="ticket__information--depart">
                            <p>
                                <span class="fa-solid fa-circle-dot"></span>
                                <span>Điểm khởi hành </span
                                ><span class="arrive-city">Tp. HCM ( SGN )</span>
                            </p>
                        </div>
                        <div class="ticket__information--arrive">
                            <p>
                                <span class="fa-solid fa-location-dot icon--active"></span>
                                <span>Điểm đến </span
                                ><span class="depart-city">Hà Nội ( HAN )</span>
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
                                        <p>Thứ Năm, 06/07/2023</p>
                                    </div>
                                    <div class="departure__ticket information">
                                        <div class="departure--information ">
                                            <p class="departure--city city">SGN</p>
                                            <p class="departure--time time">05:25</p>
                                        </div>
                                        <div class="departure__information--">
                                            <p class="departure--airplane-code">
                                                VJ198 <span><i class="fa-solid fa-plane"></i></span>
                                            </p>
                                        </div>
                                        <div class="departure__information--">
                                            <p class="arrive--city city">HAN</p>
                                            <p class="arrrive--time time">07:35</p>
                                        </div>
                                        <div class="airplane--info">
                                            <p class="airplane-type">Airbus: A320</p>
                                            <p>Operated by: Vietjet</p>
                                        </div>
                                    </div>
                                    <div class="departure__ticket price">
                                        <p>4.642.000 VND</p>
                                    </div>
                                </div>
                                <div></div>
                            </div>
                        </div>
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
                                        <p>Thứ Năm, 06/07/2023</p>
                                    </div>
                                </div>
                                <div class="return__ticket information">
                                    <div class="departure__information">
                                        <p class="departure--city city">SGN</p>
                                        <p class="departure--time time">05:25</p>
                                    </div>
                                    <div class="departure__information airplane-type">
                                        <p class="departure--airplane-code">
                                            VJ198 <span><i class="fa-solid fa-plane"></i></span>
                                        </p>
                                    </div>
                                    <div class="arrive__information">
                                        <p class="arrive--city city">HAN</p>
                                        <p class="arrrive--time time">07:35</p>
                                    </div>
                                    <div class="airplane--info">
                                        <p class="airplane-type">Airbus: A320</p>
                                        <p>Operated by: Vietjet</p>
                                    </div>
                                </div>
                                <div class="return__ticket price">
                                    <p>4.642.000 VND</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container__right">
                    <div class="reservation__information">
                        <div class="reservation__information--header">
                            <h3>Thông tin đặt chỗ</h3>
                            <button type="button">Chi tiết</button>
                        </div>
                        <div class="reservation__information--detail">
                            <div class="departure--detail detail">
                                <div class="container">
                                    <p>Chuyến đi</p>
                                    <div class="price">
                                        1,850,300 VND
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
                                            <div class="">
                                                1,850,300 VND
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
                                            <div class="">
                                                1,850,300 VND
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
                                            <div class="">
                                                1,850,300 VND
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
                                    <div class="price">
                                        1,850,300 VND
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
                                            <div class="">
                                                1,850,300 VND
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
                                            <div class="">
                                                1,850,300 VND
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
                                            <div class="">
                                                1,850,300 VND
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
                            <div class="total__price">
                                <p>Tổng tiền</p>
                                <h3 class="total__price price">3.625.800 VND</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</div>

</body>
</html>
