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
    <div class="procedure-section"
         style="border: 1px solid #ccc; border-radius: 10px; padding: 20px; background-color: rgba(255, 255, 255, 0.5);">
        <h1>Thông tin hành trình của quý khách</h1>
        <h3 style="border: 1px solid #ccc; border-radius: 20px; padding: 10px; background-color: white;">${flight.departureCity} đến ${flight.arrivalCity}</h3>
        <h3 style="border: 1px solid #ccc; border-radius: 20px; padding: 10px; background-color: white;">${flight.departureTime} đến ${flight.arrivalTime}</h3>

    </div>

</div>


</body>


<%--<p>Mã vé: ${ticket.id}</p>--%>
<%--<p>Mã hành khách: ${ticket.passengerId}</p>--%>
<%--<p>Mã chuyến bay: ${ticket.flightId}</p>--%>
<%--<p>Hạng ghế: ${ticket.seatType}</p>--%>
<%--<p>Trạng thái: ${ticket.ticketStatus}</p>--%>
<%--<p>Ngày đặt: ${ticket.orderTime}</p>--%>
<%--<p>Khứ hồi: ${ticket.roundTrip}</p>--%>
</html>
