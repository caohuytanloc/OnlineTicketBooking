<%@ page import="com.onlineticketbookingwebsite.beans.Ticket" %>
<%@ page import="com.onlineticketbookingwebsite.beans.Flight" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kiểm tra thông tin</title>
    <link rel="stylesheet" type="text/css" href="../css/checkin.css">
</head>
<body>
<%
    int hourTotal = (int) session.getAttribute("hourTotal");
    int minuteTotal = (int) session.getAttribute("minuteTotal");
    String ticketId = (String) session.getAttribute("ticketId");
    String fullname = (String) session.getAttribute("fullname");
    Flight flight = (Flight) session.getAttribute("flight");
    int hour = (int) session.getAttribute("hour");
    String minute = (String) session.getAttribute("minute");
    int hourArr = (int) session.getAttribute("hourArr");
    String minuteArr = (String) session.getAttribute("minuteArr");
    String formattedDepartureTime = (String) session.getAttribute("formattedDepartureTime");
%>
<jsp:include page="../header.jsp"/>
<div class="backround">
    <div class="procedure-section">
        <h3 style="font-family: Arial, sans-serif;">Chuyến đi của hành khách <%= fullname %></h3>
        <div class="procedure-section2">
            <div class="column">
                <h3 style=" font-weight: 300;"><%= formattedDepartureTime %></h3>
                <br>
                <h1 style="font-weight: bold;"><span
                        class="fa-solid fa-xs fa-circle-dot"></span> <%= flight.getDepartureCity() %></h1>
                <h2 style=" font-weight: 300;"><%= hour %>:<%= minute %></h2>
            </div>
            <div class="column">
                <br>
                <br>
                <br>
                <h3 style=" font-weight: 300;"><%= hourTotal %> giờ <%= minuteTotal %> phút</h3>
                <h3>&#9992;</h3>
                <h3 style=" font-weight: 300;"><%= flight.getAirplaneName() %></h3>
            </div>
            <div class="column">
                <br>
                <br>
                <br>
                <h1><span class="fa-solid fa-xs fa-location-dot icon--active"></span> <%= flight.getArrivalCity() %></h1>
                <h2 style="font-family: Arial, sans-serif; font-weight: 300;"><%= hourArr %>:<%= minuteArr %></h2>
            </div>
        </div>
    </div>
    <div class="button-container">
        <button class="MuiButtonBase-root MuiButton-root jss267" tabindex="0" type="button" onclick="goBack()"><span
                customcolor="black" font="jambonoMedium" style="font-weight: bold;">Trở về</span></button>
        <form id="seatingForm" action="/seating" method="post">
            <input type="hidden" name="ticketId" value="<%= ticketId %>"/>
            <button class="MuiButtonBase-root MuiButton-root jss267" tabindex="0" type="submit"><span
                    customcolor="black" font="jambonoMedium" style="font-weight: bold;">Chọn chỗ</span></button>
        </form>
    </div>
</div>
</div>
<script>
    function goBack() {
        window.history.back();
    }

    document.getElementById('seatingForm').addEventListener('submit', function (event) {
        event.preventDefault(); // Ngăn chặn hành vi mặc định của biểu mẫu
        this.submit(); // Gửi biểu mẫu
    });
</script>
</body>
</html>
