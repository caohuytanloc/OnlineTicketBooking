<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Check-in</title>
</head>
<body>
<h1>Thông tin chuyến bay</h1>
<c:forEach var="ticket" items="${tickets}">
    <p>Mã vé : ${ticket.getId()}</p>
    <p>Mã hành khách: ${ticket.getPassengerId()}</p>
    <p>Mã chuyến bay: ${ticket.getFlightId()}</p>
    <p>Hạng ghế: ${ticket.getSeatType()}</p>
    <p>Trạng thái: ${ticket.getTicketStatus()}</p>
    <p>Ngày đặt: ${ticket.getOrderTime()}</p>
    <p>Khứ hồi: ${ticket.isRoundTrip()}</p>
    <hr>
</c:forEach>

</body>
</html>
