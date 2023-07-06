<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/stylepayment.css">
    <style>
        .row {
            margin: 20px 0;
        }
    </style>
</head>

<body>
<jsp:include page="/header.jsp"/>
<div class="container-fluid">
    <article>
        <div class="head">
            <img src="images/sun.jpg" class="head-icon" alt="">
            <h3 for="">Xem lại hành trình</h3>
        </div>
        <div class="main-content">
            <div class="sub-1">
                <div class="title">
                    <div class="container">
                        <button type="button" class="collapsible">
                            <img src="images/airplane-icon.png" class="icon-hehe" alt="">
                            <h2 style="float: left;">Chuyến bay</h2>
                        </button>
                    </div>
                </div>
                <div class="drop-content">
                    <div class="container">
                        <div class="row" style="margin: 20px 0;">
                            <div class="col col-half">
                                <h3 for="" style="color: #92c6eb;">Ngày khởi hành Thứ 2, 20 tháng 3</h3>
                                <div class="row">
                                    <div class="col col-half">
                                        <ul>
                                            <li><b>05:35</b></li>
                                            <li><b>05:35</b></li>
                                        </ul>
                                    </div>
                                    <div class="col col-half">
                                        <ul>
                                            <li style="opacity: .8;">Hồ Chí Minh</li>
                                            <li style="opacity: .8;">Đà Nẵng</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="padding: 20px 0;">
                            <div class="col col-half">
                                <h4>Bamboo Airway QH 150</h4>
                            </div>
                            <div class="col col-half">
                                <h4>Thời Gian Bay 01h30m</h4>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="container">
                        <div class="row">
                            <div class="col-full">
                                <h4>Hàng vé đã chọn Economy Smart</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sub-2">
                <div class="title">
                    <div class="container">
                        <button type="button" class="collapsible1">
                            <h2 for="" style="float: left;">Hành Khách</h2>
                        </button>
                    </div>
                </div>
                <div class="drop-content1">
                    <div class="body">
                        <div class="container">
                            <div class="row" style="padding: 20px 0;">
                                <div class="col col-half">
                                    <h4>1.Nga Anh Nguyen Thi</h4>
                                </div>
                                <div class="col col-half">
                                    <p>Người lớn</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="sub-3">
                <div class="title">
                    <div class="container">
                        <button type="button" class="collapsible2">
                            <h2 for="" style="float: left;">Dịch Vụ Bổ Sung</h2>
                        </button>
                    </div>
                </div>
                <div class="drop-content2">
                    <div class="body">
                        <div class="container">
                            <div class="row">
                                <div class="col col-half">
                                    <div class="title-luggae" style="padding: 15px;">
                                        <i class="fa fa-suitcase" aria-hidden="true"></i>
                                        <h4 style="display: inline;">Hành Lý</h4>
                                    </div>
                                    <div class="col col-full" style="background-color:#dad9d8;">
                                        <div class="row" style="padding: 20px;">
                                            <h4>Hồ Chí Minh - Đà Nẵng 20.03.2003</h4>
                                        </div>
                                        <div class="row" style="padding: 20px;">
                                            <div class="col col-half">
                                                <h4>Nga Anh Nguyen Thi</h4>
                                            </div>
                                            <div class="col col-half">
                                                <h4>20kg</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col col-half ">
                                    <div class="title-care" style="padding: 15px;">
                                        <i class="fa fa-suitcase" aria-hidden="true"></i>
                                        <h4 style="display: inline;">BamBooCARE</h4>
                                    </div>
                                    <div class="col col-full" style="background-color:#dad9d8;height: 15vh;">
                                        <div class="row" style="padding: 20px; ">
                                            <div class="col col-half">
                                                <h4>Nga Anh Nguyen Thi</h4>
                                            </div>
                                            <div class="col col-half">
                                                <h4>BamBooCARE</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Frame 2 -->
        <div class="title">
            <div class="container">
                <h2 for="">PHƯƠNG THỨC THANH TOÁN</h2>
            </div>
        </div>
        <div class="payments-content">
            <div class="container">
                <p for="">Trong trường hợp thanh toán với thẻ tín dụng được phát hành ngoài lãnh thổ Việt Nam, giao dịch
                    có
                    thể phát sinh phí được thu bởi ngân hàng/đơn vị phát hành thẻ. Về mức phí, Quý khách vui lòng liên
                    hệ
                    ngân hàng/đơn vị phát hành thẻ để biết thông tin chi tiết.</p>
                <table class="col-full text-center" style="padding: 40px 10px;">
                    <tr style="margin-bottom: 20px;">
                        <th>Thanh toán ngay bằng vnpay</th>
                    </tr>
                    <tr>
                        <td><a href="" class="box"><img src="images/paynow.jpg" width="20%" alt=""
                                                        style="padding: 20px;border:1px solid #ccc;border-radius: 8px;"><input
                                type="radio"
                                class="rdoIn"></a></td>
                    </tr>
                </table>
            </div>
        </div>

<%--        <!-- Frame 3 -->--%>
<%--        <div class="title">--%>
<%--            <div class="container">--%>
<%--                <h2 for="">Hóa đơn(Tùy chọn)</h2>--%>
<%--            </div>--%>
<%--        </div>--%>

    <%--        <div class="bill-content">--%>
    <%--            <div class="container">--%>

    <%--                <label class="checkbox-container">Sử dụng ví điện tử cho việc lập hóa đơn--%>
    <%--                    <input type="checkbox">--%>
    <%--                    <span class="checkmark"></span>--%>
    <%--                </label>--%>

    <%--            </div>--%>
    <%--        </div>--%>


        <!-- Frame4 -->
        <div class="flight-1">
            <div class="container">
                <div class="head">
                    <img src="images/airplane-icon.png" class="head-icon" alt="">
                    <h3 for="">Hồ Chí Minh to Đà Nẵng</h3>
                </div>
            </div>
            <div class="flinfo-content">
                <div class="sub-1">
                    <div class="title">
                        <div class="container">
                            <h2 for="">Thứ 2, 20 tháng ba 2023</h2>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row" style="margin: 30px 0;">
                            <div class="col col-half text-center">
                                <div class="col col-third">
                                    <h3>05:35</h3>
                                    <h3 style="color: #92c6eb;">SGN</h3>
                                </div>
                                <div class="col col-third">
                                    <div class="text-center"
                                         style="background-color: #dbdbdb;border-radius: 45%;line-height: 5vh;">01h30m
                                    </div>
                                </div>
                                <div class="col col-third">
                                    <h3>05:35</h3>
                                    <h3 style="color: #92c6eb;">SGN</h3>
                                </div>
                            </div>
                            <div class="col col-half text-center">
                                <h3>QH 150</h3>
                                <h3>Bamboo Airways</h3>
                            </div>
                        </div>

                    </div>
                    <hr>
                    <div class="container">
                        <table class="col-full">
                            <tr>
                                <td>Giá vé (Người lớn)</td>
                                <td style="float: right;">1x 750,000 = 750,000 VND</td>
                            </tr>
                            <tr>
                                <td>Phí an ninh soi chiếu</td>
                                <td style="float: right;">40,000 VND</td>
                            </tr>
                            <tr>
                                <td>Phí sân bay nội địa</td>
                                <td style="float: right;">200,000 VND</td>
                            </tr>
                            <tr>
                                <td>Phu thu quản trị hệ thống</td>
                                <td style="float: right;">834,000 VND</td>
                            </tr>
                            <tr>
                                <td style="font-weight: 700;">TỔNG VAT</td>
                                <td style="float: right;font-weight: 700;">324,000 VND</td>
                            </tr>
                            <tr>
                                <td style="font-weight: 700;">Tổng chi phí chuyến bay</td>
                                <td style="float: right;font-weight: 700;">1,908,000 VND</td>
                            </tr>
                        </table>
                    </div>
                </div>


            </div>
        </div>

        <!-- Frame 6 -->
        <div class="accept">
            <div class="text-divider">Tổng 1,908,000 VND</div>
            <div class="container" style="text-align: center;">
                <ul>
                    <li>Tôi đã đọc và chấp nhận tất cả các điều khoản sử dụng cũng như các cam kết bảo mật của Bamboo
                        Airways
                    </li>
                </ul>
                <br>
                <form action="/vnpay" id="frmCreateOrder" method="post">
                    <button style="padding: 20px 150px; background-color: #13a040; font-size: 1.5rem; margin-top: 50px;" type="submit" class="btn btn-default" href>Chấp nhận và thanh toán ngay</button>
                </form>
            </div>
        </div>
    </article>

    <aside>
        <div class="introduce container">

            <div class="row place-content">
                <div class="col col-full" style="padding: 0;">
                    <img src="images/danangdepthe.jpg" width="70%" class="place-img">
                    <div class="place-body">
                        <h3>Hồ Chí Minh tới Đà Nẵng</h3>
                        <p class="sub-place">Một chiều | 1 người lớn</p>
                    </div>
                </div>
            </div>

            <div class="row total" style="background-color: #d9d9d9;border-radius: 10px;">
                <table class="col col-full">
                    <tr>
                        <td><h3>Tổng tiền</h3></td>
                        <td><h3>1,908,000 VNĐ</h3></td>
                    </tr>
                    <tr>
                        <td colspan="2">Bao gồm thuế,phí và phụ phí</td>
                    </tr>
                </table>

            </div>
            <div class="row total" style="background-color: #d9d9d9;border-radius: 10px;">
                <button type="button" class="collapsible-aside">
                    <table class="col col-full" style="background-color: #d9d9d9;">
                        <tr>
                            <td><b>Tóm tắt</b></td>
                            <td><b>1,908,000 VNĐ</b></td>
                        </tr>
                    </table>
                </button>
                <div class="aside-drop">
                    <div class="drop1">
                        <b>SG tới Đà Nẵng</b>
                        <p>Th 2, 20 thg 3 2023 | 12:35 - 13:25</p>
                        <p style="padding: 5px;background: #679f56;color: white;border-radius: 50px;width: fit-content;">
                            Economy Smart</p>
                        <p>Người lớn 1 x 750,000 = <b>750,000 VND</b></p>
                    </div>
                </div>
            </div>
            <div class="row total" style="background-color: #d9d9d9;border-radius: 10px;">
                <button type="button" class="collapsible-aside1">
                    <table class="col col-full" style="background-color: #d9d9d9;">
                        <tr>
                            <td><b>Hành lý ký gửi</b></td>
                            <td><b>Đã bao gồm</b></td>
                        </tr>
                    </table>
                </button>
                <div class="aside-drop1">
                </div>
            </div>
            <div class="row total" style="background-color: #d9d9d9;border-radius: 10px;">
                <button type="button" class="collapsible-aside2">
                    <table class="col col-full" style="background-color: #d9d9d9;">
                        <tr>
                            <td><b>Phí dịch vụ</b></td>
                            <td><b>86,000 VNĐ</b></td>
                        </tr>
                    </table>
                </button>
                <div class="aside-drop2">
                </div>
            </div>
        </div>
    </aside>
</div>
<!-- Frame 5 -->
<script src="/js/payment.js"></script>
<link href="https://pay.vnpay.vn/lib/vnpay/vnpay.css" rel="stylesheet" />
<script src="https://pay.vnpay.vn/lib/vnpay/vnpay.min.js"></script>
<script type="text/javascript">
    $("#frmCreateOrder").submit(function () {
        var postData = $("#frmCreateOrder").serialize();
        var submitUrl = $("#frmCreateOrder").attr("action");
        $.ajax({
            type: "POST",
            url: submitUrl,
            data: postData,
            dataType: 'JSON',
            success: function (x) {
                if (x.code === '00') {
                    if (window.vnpay) {
                        vnpay.open({width: 768, height: 600, url: x.data});
                    } else {
                        location.href = x.data;
                    }
                    return false;
                } else {
                    alert(x.Message);
                }
            }
        });
        return false;
    });
</script>
</body>
</html>
