package com.onlineticketbookingwebsite.beans;

import java.util.Date;

public class Ticket {
    private String id;
    private String passengerId;
    private String flightId;
    private String paymentId;
    private String seatType;
    private String ticketStatus;
    private Date orderTime;
    private boolean isRoundTrip;

    public Ticket(String id, String passengerId, String flightId, String paymentId, String seatType, String ticketStatus, Date orderTime, boolean isRoundTrip) {
        this.id = id;
        this.passengerId = passengerId;
        this.flightId = flightId;
        this.paymentId = paymentId;
        this.seatType = seatType;
        this.ticketStatus = ticketStatus;
        this.orderTime = orderTime;
        this.isRoundTrip = isRoundTrip;
    }

    public String getId() {
        return id;
    }

    public String getPassengerId() {
        return passengerId;
    }

    public String getFlightId() {
        return flightId;
    }

    public String getPaymentId() {
        return paymentId;
    }

    public String getSeatType() {
        return seatType;
    }

    public String getTicketStatus() {
        return ticketStatus;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public boolean isRoundTrip() {
        return isRoundTrip;
    }
}
