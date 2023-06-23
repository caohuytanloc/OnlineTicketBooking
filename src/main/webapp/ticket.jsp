<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/checkin.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/ticket.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<%--    <link href="../css/bootstrap.css"--%>
<%--          th:href="@{css/bootstrap.css}" rel='stylesheet' type='text/css'/>--%>
<%--&lt;%&ndash;    <link href="../css/style.css"&ndash;%&gt;--%>
<%--&lt;%&ndash;          th:href="@{css/style.css}" rel="stylesheet" type="text/css" media="all"/>&ndash;%&gt;--%>
    <script src="../js/jquery.min.js"
            th:src="@{js/jquery.min.js}"></script>
    <script src="../js/jquery.seat-charts.js"
            th:src="@{js/jquery.seat-charts.js}"></script>
    <script src="../js/jquery.nicescroll.js"
            th:src="@{js/jquery.nicescroll.js}"></script>
    <script src="../js/scripts.js"
            th:src="@{js/scripts.js}"></script>
    <style>
        .background {
            background-image: url(/images/cloud.jpg);
            padding: 48px;
        }
        #seat-map {
            /*background-image: url(/images/flight.png); !* Đường dẫn đến hình ảnh máy bay *!*/
            background-repeat: no-repeat;
            background-size: cover;
            padding: 10px;
            height: 300px;
            width: 50%;
            display: flex;
            gap: 10px;
            border-radius: 10px;
        }
        #seat-map h3 {
            background-color: rgba(255, 255, 255, 0.8); /* Màu nền với độ trong suốt */
            padding: 10px;
        }
    </style>
</head>
<body>
<%
    String arrivalCity = request.getParameter("arrivalCity");
    String airplaneName = request.getParameter("airplaneName");
    String departureCity = request.getParameter("departureCity");
    String fullname = request.getParameter("fullname");
    String formattedDepartureTime = request.getParameter("formattedDepartureTime");
%>
<jsp:include page="header.jsp"/>
<div class="backround">

    <div class="procedure-section">
        <h3> Chỗ ngồi đang chọn cho:</h3>
        <div class="procedure-section2">
            <div class="column2">
                <h3 style=" font-weight: 300;">Hành Khách:</h3>
                <h3 style=" font-weight: 300;">Chuyến bay:</h3>
                <h3 style=" font-weight: 300;">Lịch trình:</h3>
                <h3 style=" font-weight: 300;">Khởi hành:</h3>
                <h3 style=" font-weight: 300;">Chỗ ngồi:</h3>
            </div>
            <div class="column2" style="text-align: center;">
                <h3 style="font-weight: bold;"><%= fullname %></h3>
                <h3 style="font-weight: bold;"><%= airplaneName %></h3>
                <h3 style="font-weight: bold;"><%= departureCity %> &#9658; <%= arrivalCity %></h3>
                <h3 style="font-weight: bold;"><%= formattedDepartureTime %></h3>
                <h2 id="selected-seats" class="scrollbar scrollbar1"></h2>
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
            <button class="MuiButtonBase-root MuiButton-root jss267" tabindex="0" type="submit"><span customcolor="black" style="font-weight: bold;">Chọn chỗ</span></button>
        </form>

    </div>
</div>
</div>
</div>
<div class="clearfix"></div>
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