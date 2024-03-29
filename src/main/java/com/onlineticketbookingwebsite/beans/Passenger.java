package com.onlineticketbookingwebsite.beans;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;

public class Passenger {
    private String id;
    private String fullName;
    private String phoneNumber;
    private LocalDateTime birthday;
    private String sex;
    private String address;
    private String identification;
    private String email;

    public Passenger(String id, String fullName, String phoneNumber, LocalDateTime birthday, String sex, String address, String identification, String email) {
        this.id = id;
        this.fullName = fullName;
        this.phoneNumber = phoneNumber;
        this.birthday = birthday;
        this.sex = sex;
        this.address = address;
        this.identification = identification;
        this.email = email;
    }

    public String getId() {
        return id;
    }

    public String getFullName() {
        return fullName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public LocalDateTime getBirthday() {
        return birthday;
    }

    public String getSex() {
        return sex;
    }

    public String getAddress() {
        return address;
    }

    public String getIdentification() {
        return identification;
    }

    public String getEmail() {
        return email;
    }

    public static ArrayList<Integer> getQuantity(String inputQuantity) {
        ArrayList<Integer> res = new ArrayList<Integer>();
        String[] parts = inputQuantity.split(", ");
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
        res.add(numberOfAdults);
        res.add(numberOfChildren);
        res.add(numberOfBabies);
        return res;
    }
}

