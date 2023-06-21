package com.onlineticketbookingwebsite.beans;

import java.util.Date;

public class Payment {
    private String id;
    private String paymentMethod;
    private Date paymentDate;
    private String email;
    private String address;
    private Float total;
    private String status;

    public Payment(String id, String paymentMethod, Date paymentDate, String email, String address, Float total, String status) {
        this.id = id;
        this.paymentMethod = paymentMethod;
        this.paymentDate = paymentDate;
        this.email = email;
        this.address = address;
        this.total = total;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    public Float getTotal() {
        return total;
    }

    public String getStatus() {
        return status;
    }
}

