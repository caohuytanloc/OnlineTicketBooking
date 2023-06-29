package com.onlineticketbookingwebsite.beans;

import java.nio.charset.StandardCharsets;

public class SeatType {
    public  String seattype;
    public double price;
    public int amount;

public  SeatType(){}
    public SeatType(String seattype, double price, int amount) {
        this.seattype = seattype;
        this.price = price;
        this.amount = amount;
    }


    public String getSeattype() {
        return seattype;
    }

    public void setSeattype(String seattype) {
        this.seattype = seattype;
    }

    @Override
    public String toString() {
        return "SeatType{" +
                "seattype='" + seattype + '\'' +
                ", price=" + price +
                ", amount=" + amount +
                '}';
    }


}
