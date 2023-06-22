package com.onlineticketbookingwebsite.beans;

import java.time.LocalDateTime;
import java.util.Date;

public class Flight {
    private String id;
    private String airplaneName;
    private String departureCity;
    private String arrivalCity;
    private LocalDateTime departureTime;
    private LocalDateTime arrivalTime;
    private int availableSeats;
    private int totalSeats;

    public Flight(String id, String airplaneName, String departureCity, String arrivalCity, LocalDateTime departureTime,LocalDateTime arrivalTime, int availableSeats, int totalSeats) {
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

    public LocalDateTime getDepartureTime() {
        return departureTime;
    }

    public LocalDateTime getArrivalTime() {
        return arrivalTime;
    }

    public int getAvailableSeats() {
        return availableSeats;
    }

    public int getTotalSeats() {
        return totalSeats;
    }
}

