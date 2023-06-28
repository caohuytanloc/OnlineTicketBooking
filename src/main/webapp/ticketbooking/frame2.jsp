
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>Document</title>
  <link rel="stylesheet" href="./css/ticket-order.css" />
  <link rel="stylesheet" href="./css/all.css" />
  <link rel="stylesheet" href="./css/footer-ticket.css">
</head>
<body>
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
</body>

</html>