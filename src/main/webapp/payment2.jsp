<%--
  Created by IntelliJ IDEA.
  User: jefft
  Date: 27/06/2023
  Time: 12:45 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/paymentstyle.css">
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #dad8d9;
        }

        li {
            float: left;
            border-right: 1px solid #bbb;
            padding: 0px !important;
        }

        li:last-child {
            border-right: none;
        }

        li a {
            display: block;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover:not(.active) {
            background-color: #c7e5fb;
            color: white;
        }

        .active {
            background-color: #92c6eb;
            color: white;
        }
    </style>
</head>

<body>
</table>
<table>
    <tr>
        <td style="width:3.5%"></td>
        <td>
            <!-- Frame 8 -->
            <div style="width:35%;float: left;">
                <div class="title">
                    <div class="container">
                        <h2 for="" class="text-white text-center">THÔNG TIN THANH TOÁN</h2>
                    </div>
                </div>
                <div class="billInf-content">
                    <table class="col-full" style="padding: 40px 10px;">
                        <tr>
                            <td>Nhà cung cấp</td>
                            <td>BamBoo Airw ays</td>
                        </tr>
                        <tr>
                            <td>Mã đơn hàng</td>
                            <td>TXN190323N14853445</td>
                        </tr>
                        <tr>
                            <td>Số tiền thanh toán</td>
                            <td>1,908,000 VND</td>
                        </tr>
                        <tr>
                            <td>Thời hạn thanh toán</td>
                            <td>10:05</td>
                        </tr>
                    </table>
                    <img src="images/bamboo-logo.webp" alt="" width="20%" style="align-items: center;">
                </div>
            </div>
            <!-- Frame 9 -->

            <div style="width:63%;float: right;">
                <div class="title">
                    <div class="container">
                        <h2 for="" class="text-white text-center">PHƯƠNG THỨC THANH TOÁN</h2>
                    </div>
                </div>
                <nav>
                    <ul class="">
                        <li><a href="" class="active">Thẻ quốc tế</a></li>
                        <li><a href="">Thẻ nội địa</a></li>
                        <li><a href="">QR Code</a></li>
                        <li><a href="">Ví điện tử</a></li>
                    </ul>
                </nav>
                <div class="row" style="padding: 30px;">
                    <a href=""><img style="padding: 10px;border: 1px solid #ccc;border-radius: 8px;height: 10vh !important" src="images/JCB_logo.svg.webp" alt="" width="10%"></a>
                    <a href=""><img style="padding: 10px;border: 1px solid #ccc;border-radius: 8px;height: 10vh !important" src="images/MasterCard_Logo.svg.png" alt="" width="10%"></a>
                    <a href=""><img style="padding: 10px;border: 1px solid #ccc;border-radius: 8px;height: 10vh !important" src="images/Visa_Inc._logo.svg.webp" alt="" width="10%"></a>
                </div>
                <form action="">
                    <input type="text" placeholder="Nhập số thẻ" required="required" style="background-color: #d9d9d9;color: #5e5e5e; padding: 20px; width: 100%;margin-bottom: 20px;border: 0;">
                    <br>
                    <input type="text" placeholder="Nhập tên chủ thẻ" required="required" style="background-color: #d9d9d9;color: #5e5e5e; padding: 20px; width: 100%;margin-bottom: 20px;border: 0;">
                    <br>
                    <input type="text" placeholder="Nhập ngày hết (MM/YY)" required="required" style="background-color: #d9d9d9;color: #5e5e5e; padding: 20px; width: 75%;margin:0px 20px 20px 0; border: 0;">
                    <input type="text" placeholder="Nhập CVV" required="required" style="background-color: #d9d9d9;color: #5e5e5e; padding: 20px; width: 22%;margin-bottom: 20px;border: 0;">
                    <br>

                    <div class="text-center">
                        <a href="#" style="padding: 15px 70px 15px 70px; background-color: #f3e9e8;border: 0;">Hủy</a>
                        <a href="/payment3" style="padding: 15px 70px 15px 70px; background-color: #95c5e9;color: #fff;border: 0;">Tiếp tục</a>
                    </div>
                </form>
            </div>
        </td>
        <td style="width:3.5%"></td>
    </tr>
</table>
</body>

</html>