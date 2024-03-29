<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: howl
  Date: 6/28/2023
  Time: 9:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>

  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Ticket</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ticket-order.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer-ticket.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/userForm.css" />

</head>

<body>
<div class="app">
  <jsp:include page="/header.jsp"/>

<%--  <header class="header">--%>
<%--    <div class="navbar__container">--%>
<%--      <div class="navbar__inner">--%>
<%--        <div class="navbar__logo">--%>
<%--          <img src="logo-white.svg" alt="logo" srcset="" />--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <div class="navbar__nav">--%>
<%--        <div class="nav__top">--%>
<%--          <div class="user__signin">--%>
<%--            <a href="">Đăng ký</a>--%>
<%--          </div>--%>
<%--          <div>|</div>--%>
<%--          <div class="user__signup">--%>
<%--            <a href="">Đăng nhập</a>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="nav__bottom">--%>
<%--          <nav class="nav__bottom--item">Skyjoy</nav>--%>
<%--          <nav class="nav__bottom--item">Chuyến bay của tôi</nav>--%>
<%--          <nav class="nav__bottom--item" href="/checkin">Online Check-in</nav>--%>
<%--          <nav class="nav__bottom--item tab">Dịch vụ chuyến bay</nav>--%>
<%--          <nav class="nav__bottom--item tab">Dịch vụ khác</nav>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </header>--%>
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
                ><span class="arrive-city">                    ${sessionScope.departure}
              </span>
              </p>
            </div>
            <div class="ticket__information--arrive">
              <p>
                <span class="fa-solid fa-location-dot icon--active"></span>
                <span>Điểm đến </span
                ><span class="depart-city">                        ${sessionScope.destination}
              </span>
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
          <div class="form">
            <div class="form-title">Thông tin khách hàng</div>
            <div class="form__header__container">
              <div class="form__container--user--type">
                <div class="fa-solid fa-user"></div>
                <div class="user--type">Người lớn</div>
              </div>

            </div>
            <div id="form__container">
<%--              <c:forEach var="i" begin="1" end="${sessionScope.numberOfAdults}">--%>

<form action="${pageContext.request.contextPath}/" method="post">
                <div class="gender__container">
                  <div class="form--gender">
                    <input
                            type="radio"
                            id="male"
                            name="gender"
                            value="Nam"
                    />
                    <label for="male">Nam</label><br />

                  </div>
                  <div class="form--gender">
                    <input
                            type="radio"
                            id="female"
                            name="gender"
                            value="Nữ"
                    />
                    <label for="female">Nữ</label><br />
                  </div>
                  <div class="form--gender">
                    <input
                            type="radio"
                            id="none"
                            name="gender"
                            value="Bi"
                    />
                     <label for="none">Khác</label>
                  </div>
                </div>
                <div class="user__information__container">
                  <input class="user__information__container--input" type="text" name="user-lastname" id="user-lastname" placeholder="Họ">
                  <input class="user__information__container--input" type="text" name="user-firstname" id="user-firstname" placeholder="Tên đệm & tên">
                  <input class="user__information__container--input" type="date" name="user-birthday" id="user-birthday" onfocus="(this.type='date')" placeholder="Ngày sinh DD/MM/YYYY">
                  <input class="user__information__container--input" type="text" name="user-identification" id="user-identification"  placeholder="Căn cước / CMND">
                  <input class="user__information__container--input" type="tel" name="user-phoneNumber" id="user-phonenumber" placeholder="Số điện thoại">
                  <input class="user__information__container--input" type="email" name="user-email" id="user-email" placeholder="Email">
                  <input class="user__information__container--input full-width" type="text" name="user-address" id="user-address" placeholder="Địa chỉ">
                </div>
              </form>
<%--              </c:forEach>--%>
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
                      ${sessionScope.priceticket}
                          <span><a href="#" class="fa-solid fa-pen"></a></span>
                  </div>
                </div>
                <div class="departure--price-info">
                  <div class="departure--price">
                    <div class="container">
                      <p class="departure depart-city">
                          ${sessionScope.departure}                       </p>
                      <i class="fa-solid fa-plane"></i>
                      <p class="departure arrive-city">
                          ${sessionScope.destination}
                      </p>
<%--                      <h5>Tue, 04/07/2023 | 05:25 - 07:35 | VJ198 | Eco</h5>--%>
                    </div>
                    <div class="departure__ticket container--info">
                      <div class="departure__ticket--price">Giá vé</div>
                      <div class="">
                       ${sessionScope.priceticket}
                        <span
                        ><button
                                type="button"
                                class="fa-solid fa-caret-down price--info"
                        ></button
                        ></span>
                      </div>
                    </div>
                    <div
                            class="departure__ticket__container--fee container--info"
                    >
                      <div class="">Phí - Thuế</div>
                      <div class="">
                      0 VND
                        <span
                        ><button
                                type="button"
                                class="fa-solid fa-caret-down fee--info"
                        ></button
                        ></span>
                      </div>
                    </div>
                    <div
                            class="departure__ticket__container--service container--info"
                    >
                      <div class="">Dịch vụ</div>
                      <div class="">
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
              <c:if test="${sessionScope.isRoundTrip == true}">
                <div class="return--detail detail">
                  <div class="container">
                    <p>Chuyến về</p>
                    <div class="price">
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
                        <p class="return arrive-city">${sessionScope.departure}
                        </p>
                          <h5>${sessionScope.destinationTime} </h5>
                      </div>
                      <div
                              class="return__ticket__container--price container--info"
                      >
                        <div class="">Giá vé</div>
                        <div class="">${sessionScope.pricereturn}
                          <span
                          ><button
                                  type="button"
                                  class="fa-solid fa-caret-down price--info"
                          ></button
                          ></span>
                        </div>
                      </div>
                      <div
                              class="return__ticket__container--fee container--info"
                      >
                        <div class="">Phí - Thuế</div>
                        <div class="">
                         0 VND
                          <span
                          ><button
                                  type="button"
                                  class="fa-solid fa-caret-down fee--info"
                          ></button
                          ></span>
                        </div>
                      </div>
                      <div
                              class="return__ticket__container--service container--info"
                      >
                        <div class="">Dịch vụ</div>
                        <div class="">
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
              </c:if>
              <div class="total__price">
                <p>Tổng tiền</p>
                <h3 class="total__price price">${sessionScope.total}</h3>
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
        <p class="footer__price price">${sessionScope.total}</p>
      </div>
      <div class="footer__next">
        <a href="/checkPayment">
          <button id="btn-user-information-form-next" class="footer__btn--next" type="button" onclick="validateForm(event)">Đi tiếp</button>

        </a>
      </div>
    </div>
  </footer>
</div>
</body>
<script>
    function validateForm(event) {
        var inputs = document.querySelectorAll('.user__information__container--input');
        var selectedGender = document.querySelector('input[name="gender"]:checked');
        var birthdayInput = document.getElementById('user-birthday');
        var birthdayValue = birthdayInput.value.trim();

        // Kiểm tra xem tất cả các input đã được nhập vào và đúng định dạng
        for (var i = 0; i < inputs.length; i++) {
            var input = inputs[i];
            var value = input.value.trim();

            if (value === '') {
                event.preventDefault();
                alert('Vui lòng nhập đầy đủ thông tin!');
                return false; // Form không hợp lệ, dừng việc submit
            }

            // Kiểm tra định dạng email
            if (input.type === 'email') {
                var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (!emailRegex.test(value)) {
                    event.preventDefault();
                    alert('Vui lòng nhập đúng định dạng email!');
                    return false; // Form không hợp lệ, dừng việc submit
                }
            }

            // Kiểm tra định dạng số điện thoại
            if (input.type === 'tel') {
                var phoneNumberRegex = /^0\d{9}$/; // Số điện thoại bắt đầu bằng số 0
                if (!phoneNumberRegex.test(value)) {
                    event.preventDefault();
                    alert('Vui lòng nhập đúng định dạng số điện thoại (10 chữ số, bắt đầu bằng số 0)!');
                    return false; // Form không hợp lệ, dừng việc submit
                }
            }
        }

        // Kiểm tra xem giới tính đã được chọn
        if (!selectedGender) {
            event.preventDefault();
            alert('Vui lòng chọn giới tính!');
            return false; // Form không hợp lệ, dừng việc submit
        }

        // Kiểm tra tuổi
        var birthdayDate = new Date(birthdayValue);
        var currentDate = new Date();
        var age = currentDate.getFullYear() - birthdayDate.getFullYear();
        var isOver12YearsOld = age >= 12;

        if (!isOver12YearsOld) {
            event.preventDefault();
            alert('Bạn phải có ít nhất 12 tuổi để đăng ký!');
            return false; // Form không hợp lệ, dừng việc submit
        }

        // Form hợp lệ, cho phép submit
        return true;
    }


</script>
</html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="${pageContext.request.contextPath}/js/userForm.js"></script>

