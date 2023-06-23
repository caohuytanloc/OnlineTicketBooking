<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Check-infor</title>
    <link rel="stylesheet" type="text/css" href="css/checkin.css">
</head>
<body>
<div class="jss57">
    <div>
        <h1 class="jss60 jss69 MuiTypography-h4 MuiTypography-colorTextPrimary" customcolor="white">KIỂM TRA THÔNG
            TIN</h1>
    </div>
</div>
<div class="backround">
    <div class="procedure-section">
        <h3 style="font-family: Arial, sans-serif;">Chuyến đi của hành khách ${fullname}</h3>
        <div class="procedure-section2">
        <div class="column">
            <h3 style=" font-weight: 300;">${formattedDepartureTime}</h3>
            <br>
            <h1 style=" font-weight: bold;">${flight.departureCity}</h1>
            <h2 style=" font-weight: 300;">${hour}:${minute}</h2>
        </div>
        <div class="column">
            <br>
            <br>
            <br>
            <h3 style=" font-weight: 300;">${hourArr-hour} giờ ${minuteArr-minute} phút</h3>
            <h3>&#9992;</h3>
            <h3 style=" font-weight: 300;">${flight.airplaneName}</h3>
        </div>
        <div class="column">
            <br>
            <br>
            <br>
            <h1>${flight.arrivalCity}</h1>
            <h2 style="font-family: Arial, sans-serif; font-weight: 300;">${hourArr}:${minuteArr}</h2>
        </div>
        </div>
    </div>
    <div class="button-container">
        <button class="MuiButtonBase-root MuiButton-root jss267" tabindex="0" type="button" onclick="goBack()"><span customcolor="black" font="jambonoMedium" style="font-weight: bold;">Trở về</span></button>
        <form id="seatingForm" action="seating.jsp" method="post">
            <input type="hidden" name="arrivalCity" value="${flight.arrivalCity}" />
            <input type="hidden" name="airplaneName" value="${flight.airplaneName}" />
            <input type="hidden" name="departureCity" value="${flight.departureCity}" />
            <input type="hidden" name="fullname" value="${fullname}" />
            <input type="hidden" name="formattedDepartureTime" value="${formattedDepartureTime}" />
            <button class="MuiButtonBase-root MuiButton-root jss267" tabindex="0" type="submit"><span customcolor="black" font="jambonoMedium" style="font-weight: bold;">Chọn chỗ</span></button>
        </form>

    </div>
</div>
</div>

<script>
    function goBack() {
        window.history.back();
    }
    document.getElementById('seatingForm').addEventListener('submit', function(event) {
        event.preventDefault(); // Ngăn chặn hành vi mặc định của biểu mẫu
        this.submit(); // Gửi biểu mẫu
    });
</script>
</body>
</html>
