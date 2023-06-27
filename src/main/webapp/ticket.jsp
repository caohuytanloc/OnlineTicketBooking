<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="UTF-8">
    <title>Chọn chỗ ngồi</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/ticket_style.scss">
    <link rel="stylesheet" type="text/css" href="css/checkin.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.5/dist/sweetalert2.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.5/dist/sweetalert2.min.css">

    <title>Vé lên máy bay</title>
    <style>
        .split-container {
            display: flex;
            flex-direction: row-reverse;
        }

        .small-part {
            flex-basis: 30%;
        }

        .large-part {
            flex-basis: 70%;
        }

    </style>
</head>
<body style="background-image: url(/images/cloud.jpg);">
<%
    String seating = request.getParameter("seating");
    String[] parts = seating.split("_"); // Tách chuỗi thành một mảng các phần tử dựa trên ký tự "_"
    String seatNumber = parts[0] + parts[1]; // Kết hợp phần tử số và chữ cái đầu tiên
%>
<div>
    <jsp:include page="header.jsp"/>
    <div class="split-container">
        <div class="large-part" style="background-color: rgba(255, 255, 255, 0.8); width: 900px; height: 600px;position: absolute;left: 40px;top:90px;padding: 20px">
            <h3>Số hiệu chuyến bay: <span style="color: red;">${flight.airplaneName}</span></h3>
            <h3><span class="fa-solid fa-xs fa-circle-dot"></span> Khởi hành:<span style="color: red;"> ${hour}:${minute}, ${formattedDepartureTime} </span>(Giờ địa phương) </h3>
            <h3 style="margin-left: 114px;">${flight.departureCity}</h3>
            <h3><span class="fa-solid fa-xs fa-location-dot icon--active"></span> Đến: <span style="padding-left: 52px;color: red;">${hourArr}:${minuteArr}, ${formattedArrivalTime} </span>(Giờ địa phương) </h3>
            <h3 style="margin-left: 114px;">${flight.arrivalCity}</h3>
            <h3 style="margin-left: 114px;">Thời gian: <span style="color: red;">${hourArr-hour} giờ ${minuteArr-minute} phút</span>, Airbus: <span style="color: red;">A321B</span>, Khai thác bởi: <span style="color: red;">VietJet</span></h3>
            <h3>------------------------------------------------------------------------------------------------------</h3>
            <h2>HƯỚNG DẪN DI CHUYỂN TIẾP THEO</h2>
            <h3>Bước 1: Kí gửi hành lí (Nếu có) tại quầy checkin, tối thiểu 60 phút trước khi bay.</h3>
            <h3>Bước 2: Kiểm tra an ninh, xuất trình QR code và CCCD.</h3>
            <h3>Bước 3: Đến cửa khởi hành tối thiểu 30 phút trước khi bay.</h3>
        </div>
        <div class="small-part">
            <div class="ticket-system" style="position: absolute; right: 0;">
                <div class="top">
                    <h1>Vé của bạn đang được in</h1>
                    <div class="printer" />
                </div>
                <div class="receipts-wrapper">
                    <div class="receipts">
                        <div class="receipt">
                            <div class="route">
                                <h2>${flight.departureCity}</h2>
                                <svg class="plane-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 510 510">
                                    <path fill="#3f32e5"
                                          d="M497.25 357v-51l-204-127.5V38.25C293.25 17.85 275.4 0 255 0s-38.25 17.85-38.25 38.25V178.5L12.75 306v51l204-63.75V433.5l-51 38.25V510L255 484.5l89.25 25.5v-38.25l-51-38.25V293.25l204 63.75z"/>
                                </svg>
                                <h2>${flight.arrivalCity}</h2>
                            </div>
                            <div class="details">
                                <div class="item">
                                    <span>Khách hàng</span>
                                    <h3>${fullname}</h3>
                                </div>
                                <div class="item">
                                    <span>Chuyến bay</span>
                                    <h3>${flight.airplaneName}</h3>
                                </div>
                                <div class="item">
                                    <span>Ngày</span>
                                    <h3>${formattedDepartureTime}</h3>
                                </div>
                                <div class="item">
                                    <span>Giờ bay</span>
                                    <h3>${hour}:${minute}</h3>
                                </div>
                                <div class="item">
                                    <span>Mã đặt chỗ</span>
                                    <h3>${ticketId}</h3>
                                </div>
                                <div class="item">
                                    <span>Chỗ ngồi</span>
                                    <h3><%= seatNumber %>
                                    </h3>
                                </div>
                            </div>
                        </div>
                        <div class="receipt qr-code">
                            <div class="description">
                                <p>Xuất trình mã QR tại sân bay</p>
                            </div>
                            <svg class="qr" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 29.938 29.938" width="100"
                                 height="100">
                                <path d="M7.129 15.683h1.427v1.427h1.426v1.426H2.853V17.11h1.426v-2.853h2.853v1.426h-.003zm18.535 12.83h1.424v-1.426h-1.424v1.426zM8.555 15.683h1.426v-1.426H8.555v1.426zm19.957 12.83h1.427v-1.426h-1.427v1.426zm-17.104 1.425h2.85v-1.426h-2.85v1.426zm12.829 0v-1.426H22.81v1.426h1.427zm-5.702 0h1.426v-2.852h-1.426v2.852zM7.129 11.406v1.426h4.277v-1.426H7.129zm-1.424 1.425v-1.426H2.852v2.852h1.426v-1.426h1.427zm4.276-2.852H.002V.001h9.979v9.978zM8.555 1.427H1.426v7.127h7.129V1.427zm-5.703 25.66h4.276V22.81H2.852v4.277zm14.256-1.427v1.427h1.428V25.66h-1.428zM7.129 2.853H2.853v4.275h4.276V2.853zM29.938.001V9.98h-9.979V.001h9.979zm-1.426 1.426h-7.127v7.127h7.127V1.427zM0 19.957h9.98v9.979H0v-9.979zm1.427 8.556h7.129v-7.129H1.427v7.129zm0-17.107H0v7.129h1.427v-7.129zm18.532 7.127v1.424h1.426v-1.424h-1.426zm-4.277 5.703V22.81h-1.425v1.427h-2.85v2.853h2.85v1.426h1.425v-2.853h1.427v-1.426h-1.427v-.001zM11.408 5.704h2.85V4.276h-2.85v1.428zm11.403 11.405h2.854v1.426h1.425v-4.276h-1.425v-2.853h-1.428v4.277h-4.274v1.427h1.426v1.426h1.426V17.11h-.004zm1.426 4.275H22.81v-1.427h-1.426v2.853h-4.276v1.427h2.854v2.853h1.426v1.426h1.426v-2.853h5.701v-1.426h-4.276v-2.853h-.002zm0 0h1.428v-2.851h-1.428v2.851zm-11.405 0v-1.427h1.424v-1.424h1.425v-1.426h1.427v-2.853h4.276v-2.853h-1.426v1.426h-1.426V7.125h-1.426V4.272h1.426V0h-1.426v2.852H15.68V0h-4.276v2.852h1.426V1.426h1.424v2.85h1.426v4.277h1.426v1.426H15.68v2.852h-1.426V9.979H12.83V8.554h-1.426v2.852h1.426v1.426h-1.426v4.278h1.426v-2.853h1.424v2.853H12.83v1.426h-1.426v4.274h2.85v-1.426h-1.422zm15.68 1.426v-1.426h-2.85v1.426h2.85zM27.086 2.853h-4.275v4.275h4.275V2.853zM15.682 21.384h2.854v-1.427h-1.428v-1.424h-1.427v2.851zm2.853-2.851v-1.426h-1.428v1.426h1.428zm8.551-5.702h2.853v-1.426h-2.853v1.426zm1.426 11.405h1.427V22.81h-1.427v1.426zm0-8.553h1.427v-1.426h-1.427v1.426zm-12.83-7.129h-1.425V9.98h1.425V8.554z"/>
                            </svg>
                        </div>
                    </div>
                </div>
                </main>
                <div class="button-container" style="text-align: right;">
                    <button class="MuiButtonBase-root MuiButton-root jss267" tabindex="0" type="button"
                            onclick="goBack()">
                        <span customcolor="black" font="jambonoMedium" style="font-weight: bold;">Trở về</span>
                    </button>
                    <form id="seatingForm" action="/saveCheckin" method="post">
                        <input type="hidden" name="seatNumber" value="<%= seatNumber %>"/>
                        <input type="hidden" name="ticketId" value="${ticketId}" />
                        <button class="MuiButtonBase-root MuiButton-root jss267" tabindex="0" type="submit" onclick="completeProcedure(event)">
                            <span customcolor="black" style="font-weight: bold;">Hoàn tất</span>
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
        <script>
            function goBack() {
                window.history.back();
            }
            function completeProcedure(event) {
                event.preventDefault();

                // Hiển thị thông báo thành công bằng SweetAlert2
                Swal.fire({
                    icon: 'success',
                    title: 'Hoàn tất',
                    text: 'Làm thủ tục thành công, Vé đã được gửi qua mail của bạn',
                    confirmButtonText: 'OK'
                }).then(function() {
                    // Gửi dữ liệu đến printTicketServlet
                    var form = document.getElementById("seatingForm");
                    var formData = new FormData(form);
                    var xhr = new XMLHttpRequest();
                    xhr.open("POST", form.action, true);
                    xhr.onreadystatechange = function() {
                        if (xhr.readyState === 4 && xhr.status === 200) {
                            // Xử lý phản hồi từ printTicketServlet (nếu có)
                        }
                    };
                    xhr.send(formData);

                    // Gửi biểu mẫu đi thực sự
                    form.submit();
                });
            }
        </script>
</body>
</html>