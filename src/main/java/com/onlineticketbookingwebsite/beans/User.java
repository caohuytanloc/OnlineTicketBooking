package com.onlineticketbookingwebsite.beans;

import java.util.Date;

public class User {
    private String id;
    private String username;
    private String password;
    private Date birthday;
    private String phoneNumber;
    private String email;

    // Constructors
    public User() {
    }

    public User(String id, String username, String password, Date birthday, String phoneNumber, String email) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.birthday = birthday;
        this.phoneNumber = phoneNumber;
        this.email = email;
    }

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}

