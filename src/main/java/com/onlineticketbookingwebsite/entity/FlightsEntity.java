package com.onlineticketbookingwebsite.entity;

import com.onlineticketbookingwebsite.beans.Flight;
import com.onlineticketbookingwebsite.beans.SeatType;
import com.onlineticketbookingwebsite.db.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FlightsEntity {

    public void addFlight(String id, String airplaneName, String departureCity, String arrivalCity, Date departureTime, Date arrivalTime, int availableSeats, int totalSeats){
        try {
            PreparedStatement ps = DBConnect.getInstance().connectStament().getConnection().prepareStatement(
                    "insert into flights "+
                            " values (?,?,?,?,?,?,0,?);");
            ps.setString(1,id);
            ps.setString(2,airplaneName);
            ps.setString(3,arrivalCity);
            ps.setString(4,departureCity);
            ps.setDate(5, arrivalTime);
            ps.setDate(6, departureTime);
            ps.setInt(7, totalSeats);
            ps.executeUpdate();
        } catch (Exception e) {
        }
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
                        rs.getInt("avaiable_seats"),
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
            id=Integer.parseInt(rs.getString(1));
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return id+1;
    }

}
