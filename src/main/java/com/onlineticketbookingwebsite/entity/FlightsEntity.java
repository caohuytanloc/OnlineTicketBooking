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

    public void addFlight(String airplaneName, String departureCity, String arrivalCity, String departureTime, String arrivalTime, String totalSeats){
      // System.out.println(setIdUser());
        try {
            java.util.Date date2 = new SimpleDateFormat("yyyy/MM/dd hh:mm").parse(arrivalTime);
            java.util.Date date1 = new SimpleDateFormat("yyyy/MM/dd hh:mm").parse(departureTime);
            PreparedStatement ps = DBConnect.getInstance().connectStament().getConnection().prepareStatement(
                    "insert into flights "+
                            " values (?,?,?,?,?,?,?,?);");
            ps.setString(1,setIdUser()+"");
            ps.setString(2,airplaneName);
            ps.setString(3,departureCity);
            ps.setString(4,arrivalCity);
            ps.setTimestamp(5, new Timestamp(date1.getTime()));
            ps.setTimestamp(6, new Timestamp(date2.getTime()));
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

//    public static void main(String[] args) {
//        try {
//            java.util.Date date2 = new SimpleDateFormat("yyyy/MM/dd hh:mm").parse("2023/07/12 09:20");
//            java.util.Date date1 = new SimpleDateFormat("yyyy/MM/dd hh:mm").parse("2023/07/12 11:10");
//            PreparedStatement ps = DBConnect.getInstance().connectStament().getConnection().prepareStatement(
//                    "insert into flights "+
//                            " values (?,?,?,?,?,?,?,?);");
//            ps.setString(1,"1122");
//            ps.setString(2,"VietJet");
//            ps.setString(3,"Cần Thơ");
//            ps.setString(4,"Hà Nội");
//            ps.setTimestamp(5, new Timestamp(date1.getTime()));
//            ps.setTimestamp(6, new Timestamp(date2.getTime()));
//            ps.setInt(7, 0);
//            ps.setInt(8, 60);
//            ps.executeUpdate();
//            System.out.println("true");
//        } catch (Exception e) {
//        }
//    }
}
