package com.onlineticketbookingwebsite.beans;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class Flight {
    private String id;
    private String airplaneName;
    private String departureCity;
    private String arrivalCity;
    private LocalDateTime departureTime;
    private LocalDateTime arrivalTime;
    private int availableSeats;
    private int totalSeats;
   List<SeatType>list;
    public Flight(String id, String airplaneName, String departureCity, String arrivalCity, LocalDateTime departureTime,LocalDateTime arrivalTime, int availableSeats, int totalSeats) {}
    public Flight(String id, String airplaneName, String departureCity, String arrivalCity, LocalDateTime departureTime,LocalDateTime arrivalTime, int availableSeats, int totalSeats,List list) {
        this.id = id;
        this.airplaneName = airplaneName;
        this.departureCity = departureCity;
        this.arrivalCity = arrivalCity;
        this.departureTime = departureTime;
        this.arrivalTime = arrivalTime;
        this.availableSeats = availableSeats;
        this.totalSeats = totalSeats;
        list=new ArrayList<>();
    }
    public double getPriceSeatFirst(){
double res=0;
        for (int i=0;i<list.size();i++) {
            if(list.get(i).seattype.trim().equalsIgnoreCase("First")){
                res=list.get(i).price;
            }
        }
        return  res;
    }
    public double getPriceSeatEco(){
        double res=0;
        for (int i=0;i<list.size();i++) {
            if(list.get(i).seattype.trim().equalsIgnoreCase("Eco")){
                res=list.get(i).price;
            }
        }
        return  res;
    }
    public double getPriceSeatBusiness(){
        double res=0;
        for (int i=0;i<list.size();i++) {
            if(list.get(i).seattype.trim().equalsIgnoreCase("Business")){
                res=list.get(i).price;
            }
        }
        return  res;
    }
    public double getPriceSeatPremium(){
        double res=0;
        for (int i=0;i<list.size();i++) {
            if(list.get(i).seattype.trim().equalsIgnoreCase("Premium")){
                res=list.get(i).price;
            }
        }
        return  res;
    }
    public List<SeatType> getList() {
        return list;
    }

    public void setList(List<SeatType> list) {
        this.list = list;
    }

    public void setId(String id) {
        this.id = id;
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
public String gethourArrial(){
    String formattedMinute = String.format("%02d", arrivalTime.getMinute()); // Định dạng phút thành chuỗi với định dạng "00"


    return   arrivalTime.getHour() + ":" +formattedMinute;

}
    public String gethourdeparture(){
        String formattedMinute = String.format("%02d", departureTime.getMinute()); // Định dạng phút thành chuỗi với định dạng "00"

        return   departureTime.getHour() + ":" +formattedMinute;

    }
    public int getAvailableSeats() {
        return availableSeats;
    }

    public int getTotalSeats() {
        return totalSeats;
    }

    @Override
    public String toString() {
        return "Flight{" +
                "id='" + id + '\'' +
                ", airplaneName='" + airplaneName + '\'' +
                ", departureCity='" + departureCity + '\'' +
                ", arrivalCity='" + arrivalCity + '\'' +
                ", departureTime=" + departureTime +
                ", arrivalTime=" + arrivalTime +
                ", availableSeats=" + availableSeats +
                ", totalSeats=" + totalSeats +
                ", list=" + list +
                '}';
    }

    public static void main(String[] args) {
    }
}

