package com.onlineticketbookingwebsite.beans;

import java.util.Date;

public class Flight {
    private String id;
    private String airplaneName;
    private String departureCity;
    private String arrivalCity;
    private Date departureTime;
    private Date arrivalTime;
    private int availableSeats;
    private int totalSeats;

    public Flight(String id, String airplaneName, String departureCity, String arrivalCity, Date departureTime, LocalDateTime arrivalTime, int availableSeats, int totalSeats) {
        this.id = id;
        this.airplaneName = airplaneName;
        this.departureCity = departureCity;
        this.arrivalCity = arrivalCity;
        this.departureTime = departureTime;
        this.arrivalTime = arrivalTime;
        this.availableSeats = availableSeats;
        this.totalSeats = totalSeats;
    }

    public String getId() {
        return id;
    }

    public String getAirplaneName() {
        return airplaneName;
    }

    public String getDepartureCity() {
        return departureCity;
    }

    public String getArrivalCity() {
        return arrivalCity;
    }

    public Date getDepartureTime() {
        return departureTime;
    }

    public Date getArrivalTime() {
        return arrivalTime;
    }

    public int getAvailableSeats() {
        return availableSeats;
    }

    public int getTotalSeats() {
        return totalSeats;
    }
}

