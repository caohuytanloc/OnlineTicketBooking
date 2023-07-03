package com.onlineticketbookingwebsite.beans;

import java.io.Serializable;

public class Account implements Serializable {
    private String id;
    private String user;
    private String mail;
    private String phone;
    private String pass;
    private String inSell;
    private String inAdmin;

    public Account(String id, String user, String mail, String phone, String pass, String inSell, String inAdmin) {
        this.id = id;
        this.user = user;
        this.mail = mail;
        this.phone = phone;
        this.pass = pass;
        this.inSell = inSell;
        this.inAdmin = inAdmin;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getInSell() {
        return inSell;
    }

    public void setInSell(String inSell) {
        this.inSell = inSell;
    }

    public String getInAdmin() {
        return inAdmin;
    }

    public void setInAdmin(String inAdmin) {
        this.inAdmin = inAdmin;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", user='" + user + '\'' +
                ", mail='" + mail + '\'' +
                ", phone='" + phone + '\'' +
                ", pass='" + pass + '\'' +
                ", inSell=" + inSell +
                ", inAdmin=" + inAdmin +
                '}';
    }
}