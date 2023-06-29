<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Làm Thủ Tục</title>
    <link rel="stylesheet" type="text/css" href="css/checkin.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="backround">
    <div class="procedure-section" >
        <h3 style=" font-weight: 300;"> Quý khách có thể làm thủ tục trực tuyến từ 24 đến 01 tiếng trước chuyến bay.</h3>
        <h3 style="border: 1px solid #ccc;font-weight: 300; border-radius: 20px; padding: 10px; background-color: white;">Nhập mã vé</h3>

        <form action="/checkInfor" method="post" accept-charset="UTF-8" onsubmit="return validateForm()">
            <!-- Các trường dữ liệu của form -->
            <div class="form-row">
                <input type="text" name="ticketId" id="ticketId" placeholder="Mã vé" />
                <input type="text" name="fullname" id="fullname" placeholder="Họ và Tên" />
                <input type="text" name="departure_city" id="departure_city" placeholder="Đi từ" />
            </div>
            <div class="form-row">
                <div id="ticketIdError" class="error-message"></div>
                <div id="fullnameError" class="error-message"></div>
                <div id="departureCityError" class="error-message"></div>
            </div>
            <button class="MuiButtonBase-root MuiButton-root jss267" tabindex="0" type="submit"><span customcolor="black" font="jambonoMedium" style="font-weight: bold;">LÀM THỦ TỤC</span></button>
            <c:if test="${not empty error}">
                <div class="error-message">
                    <h3>*${error}</h3>
                </div>
            </c:if>
        </form>
        <%-- Kiểm tra sự tồn tại của thông báo lỗi --%>

        <script>
            function validateForm() {
                var ticketId = document.getElementById("ticketId").value;
                var fullname = document.getElementById("fullname").value;
                var departureCity = document.getElementById("departure_city").value;

                var ticketIdError = document.getElementById("ticketIdError");
                var fullnameError = document.getElementById("fullnameError");
                var departureCityError = document.getElementById("departureCityError");

                // Xóa thông báo lỗi hiện tại (nếu có)
                ticketIdError.innerHTML = "";
                fullnameError.innerHTML = "";
                departureCityError.innerHTML = "";

                var isValid = true;

                if (ticketId === "") {
                    ticketIdError.innerHTML = "*Vui lòng nhập mã vé.";
                    isValid = false;
                }

                if (fullname === "") {
                    fullnameError.innerHTML = "*Vui lòng nhập họ và tên.";
                    isValid = false;
                }

                if (departureCity === "") {
                    departureCityError.innerHTML = "*Vui lòng nhập điểm khởi hành. ";
                    isValid = false;
                }

                return isValid;
            }
        </script>

    </div>
</div>
</body>
</html>