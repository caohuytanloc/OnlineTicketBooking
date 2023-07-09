package com.onlineticketbookingwebsite.beans;

import java.io.Serializable;

public class Account implements Serializable {
    private String user;
    private String mail;
    private String phone;
    private String pass;
    private int inAdmin;

    public Account(String user, String pass, String mail, String phone, int inAdmin) {
        this.user = user;
        this.mail = mail;
        this.phone = phone;
        this.pass = pass;
        this.inAdmin = inAdmin;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getInAdmin() {
        return inAdmin;
    }

    public void setInAdmin(int inAdmin) {
        this.inAdmin = inAdmin;
    }

    @Override
    public String toString() {
        return "Account{" +
                ", user='" + user + '\'' +
                ", mail='" + mail + '\'' +
                ", phone='" + phone + '\'' +
                ", pass='" + pass + '\'' +
                ", inAdmin=" + inAdmin +
                '}';
    }
}