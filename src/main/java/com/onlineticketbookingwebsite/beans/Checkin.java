package com.onlineticketbookingwebsite.beans;

import java.time.LocalDateTime;
import java.util.Date;

public class Checkin {
    private String id;
    private String ticketId;
    private LocalDateTime checkinDate;
    private String seatNumber;
    private String gateNumber;

    public Checkin(String id, String ticketId, LocalDateTime checkinDate, String seatNumber, String gateNumber) {
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

    public LocalDateTime getCheckinDate() {
        return checkinDate;
    }

    public String getSeatNumber() {
        return seatNumber;
    }

    public String getGateNumber() {
        return gateNumber;
    }

    public static void main(String[] args) {
        String input = "4 người lớn, 11 trẻ em, 1 em bé";

// Tách chuỗi thành các phần tử
        String[] parts = input.split(", ");

// Duyệt qua các phần tử để lấy số lượng của các đối tượng
        int numberOfAdults = 0;
        int numberOfChildren = 0;
        int numberOfBabies = 0;

        for (String part : parts) {
            if (part.contains("người lớn")) {
                String[] adultParts = part.split(" ");
                numberOfAdults = Integer.parseInt(adultParts[0]);
            } else if (part.contains("trẻ em")) {
                String[] childParts = part.split(" ");
                numberOfChildren = Integer.parseInt(childParts[0]);
            } else if (part.contains("em bé")) {
                String[] babyParts = part.split(" ");
                numberOfBabies = Integer.parseInt(babyParts[0]);
            }
        }

// In số lượng của các đối tượng
        System.out.println("Số lượng người lớn: " + numberOfAdults);
        System.out.println("Số lượng trẻ em: " + numberOfChildren);
        System.out.println("Số lượng em bé: " + numberOfBabies);
    }
}

