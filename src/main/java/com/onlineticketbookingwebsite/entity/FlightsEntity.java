package com.onlineticketbookingwebsite.entity;

import com.onlineticketbookingwebsite.beans.Account;
import com.onlineticketbookingwebsite.beans.Flight;
import com.onlineticketbookingwebsite.beans.SeatType;
import com.onlineticketbookingwebsite.db.DBConnect;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class FlightsEntity {
    public void addfLightSeatsInformations(String id, String seatType, int amount, float price){
        try {
         PreparedStatement ps = DBConnect.getInstance().connectStament().getConnection().prepareStatement(
                    "insert into flightseatsinformations values (?, ?, ?, ?);");
            ps.setString(1,id);
            ps.setString(2,seatType);
            ps.setInt(3, amount);
            ps.setFloat(4, price);
            ps.executeUpdate();
            System.out.println("true");
        } catch (Exception e) {
            System.out.println("false");
        }
    }

    public void addFlight(String id, String airplaneName, String departureCity, String arrivalCity, LocalDateTime departureTime, LocalDateTime arrivalTime, String totalSeats){
        try {
           PreparedStatement ps = DBConnect.getInstance().connectStament().getConnection().prepareStatement(
                    "insert into flights "+
                            " values (?,?,?,?,?,?,?,?);");
            ps.setString(1,id);
            ps.setString(2,airplaneName);
            ps.setString(3,departureCity);
            ps.setString(4,arrivalCity);
            ps.setObject(5, departureTime);
            ps.setObject(6, arrivalTime);
            ps.setInt(7, 0);
            ps.setInt(8, Integer.parseInt(totalSeats.trim()) );
            ps.executeUpdate();
            System.out.println("true");
        } catch (Exception e) {
            System.out.println("false");
        }
    }

    public  boolean checkLightID(String id){
        try {
            PreparedStatement ps = DBConnect.getInstance().connectStament().getConnection().prepareStatement(
                    "select * from flights\n"+
                            " where flight_id=?;\n");
            ps.setString(1,id);
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }
    public List<Flight> getLights() {
        List<Flight> result = new ArrayList<Flight>();

        String query = "SELECT * \n" +
                "FROM flights ";

        try (PreparedStatement ps = DBConnect.getInstance().get(query)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                Flight flight =null;
                flight= new Flight(
                        id,
                        rs.getString("airplane_name"),
                        rs.getString("departure_city"),
                        rs.getString("arrival_city"),
                        rs.getTimestamp("departure_time").toLocalDateTime(),
                        rs.getTimestamp("arrival_time").toLocalDateTime(),
                        rs.getInt("available_seats"),
                        rs.getInt("total_seats"));
               // System.out.println(flight.toString());
                result.add(flight);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        if (result.size()>0) {
            return result;
        }  else{
            return null;
        }
    }

    public int setIdUser(){
        int id=0;
        Statement s = null;
        try {
            s = DBConnect.getInstance().connectStament();
            ResultSet rs = s.executeQuery("select * from flights");
            rs.last();
            id=Integer.parseInt(rs.getString(1).substring(1));
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return id+1;
    }

    public static void main(String[] args) {
        FlightsEntity flights= new FlightsEntity();
        flights.addfLightSeatsInformations("F002","First",10,155666);
      }
}
