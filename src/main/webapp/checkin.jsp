<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Check-in</title>
</head>
<body>
<c:set var="stuff" value="<%= new java.util.Date()%>"/>
Time on the Server is ${stuff}
<h1>Check-in</h1>
<c:forEach var="ticket" items="${tickets}">
    <p>Ticket ID: ${ticket.getId()}</p>
    <p>Passenger ID: ${ticket.getPassengerId()}</p>
    <p>Flight ID: ${ticket.getFlightId()}</p>
    <p>Seat Type: ${ticket.getSeatType()}</p>
    <p>Ticket Status: ${ticket.getTicketStatus()}</p>
    <p>Order Time: ${ticket.getOrderTime()}</p>
    <p>Is Round Trip: ${ticket.isRoundTrip()}</p>
</c:forEach>
</body>
</html>
