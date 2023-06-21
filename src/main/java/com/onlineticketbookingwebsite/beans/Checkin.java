package com.onlineticketbookingwebsite.beans;

import java.util.Date;

public class Checkin {
    private String id;
    private String ticketId;
    private Date checkinDate;
    private String seatNumber;
    private String gateNumber;

    public Checkin(String id, String ticketId, Date checkinDate, String seatNumber, String gateNumber) {
        this.id = id;
        this.ticketId = ticketId;
        this.checkinDate = checkinDate;
        this.seatNumber = seatNumber;
        this.gateNumber = gateNumber;
    }

    public String getId() {
        return id;
    }

    public String getTicketId() {
        return ticketId;
    }

    public Date getCheckinDate() {
        return checkinDate;
    }

    public String getSeatNumber() {
        return seatNumber;
    }

    public String getGateNumber() {
        return gateNumber;
    }
}

