package com.onlineticketbookingwebsite.dao;

import com.onlineticketbookingwebsite.beans.Passenger;
import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.db.DBConnect;

import java.sql.*;
import java.sql.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class TicketDao {
    private static TicketDao instance;
    int count = 0;


    public static TicketDao getInstance() {
        if (instance == null) {
            instance = new TicketDao();
        }
        return instance;
    }

    public Ticket getTicketByTicketIdFullnameDeparture(String ticketId, String fullname, String departureCity) {
        Ticket ticket = null;
        try {
            // Chuẩn bị câu truy vấn SQL
            String query = "SELECT t.*, p.id AS passenger_id, f.id AS flight_id " +
                    "FROM tickets t " +
                    "INNER JOIN passengers p ON t.passenger_id = p.id " +
                    "INNER JOIN flights f ON t.flight_id = f.id " +
                    "WHERE t.id = ? AND p.full_name = ? AND f.departure_city = ?";

            PreparedStatement ps = DBConnect.getInstance().get(query);
            ps.setString(1, ticketId);
            ps.setString(2, fullname);
            ps.setString(3, departureCity);

            // Thực hiện truy vấn và lấy kết quả
            ResultSet resultSet = ps.executeQuery();
            if (resultSet.next()) {
                String id = resultSet.getString("t.id");
                String passengerId = resultSet.getString("passenger_id");
                String flightId = resultSet.getString("flight_id");
                String paymentId = resultSet.getString("payment_id");
                String seatType = resultSet.getString("seat_type");
                String ticketStatus = resultSet.getString("ticket_status");

                Timestamp orderTimestamp = resultSet.getTimestamp("order_time");
                LocalDateTime orderTime = orderTimestamp.toLocalDateTime();

                boolean isRoundTrip = resultSet.getBoolean("isRound_trip");

                // Tạo đối tượng Ticket từ kết quả của truy vấn
                ticket = new Ticket(id, passengerId, flightId, paymentId, seatType, ticketStatus, orderTime, isRoundTrip);
            }

            // Đóng tài nguyên
            resultSet.close();
            ps.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return ticket;
    }

    public Ticket getTicketByTicketId(String ticketId) {
        Ticket ticket = null;
        try {
            // Chuẩn bị câu truy vấn SQL
            String query = "SELECT * FROM tickets WHERE id = ?";


            PreparedStatement ps = DBConnect.getInstance().get(query);
            ps.setString(1, ticketId);

            // Thực hiện truy vấn và lấy kết quả
            ResultSet resultSet = ps.executeQuery();
            if (resultSet.next()) {
                String id = resultSet.getString("id");
                String passengerId = resultSet.getString("passenger_id");
                String flightId = resultSet.getString("flight_id");
                String paymentId = resultSet.getString("payment_id");
                String seatType = resultSet.getString("seat_type");
                String ticketStatus = resultSet.getString("ticket_status");

                Timestamp orderTimestamp = resultSet.getTimestamp("order_time");
                LocalDateTime orderTime = orderTimestamp.toLocalDateTime();

                boolean isRoundTrip = resultSet.getBoolean("isRound_trip");

                // Tạo đối tượng Ticket từ kết quả của truy vấn
                ticket = new Ticket(id, passengerId, flightId, paymentId, seatType, ticketStatus, orderTime, isRoundTrip);
            }

            // Đóng tài nguyên
            resultSet.close();
            ps.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return ticket;
    }

    public boolean createTicket(String passengerID,
                                String flightID,
                                String seatType, String ticketStatus, int isRoundTrip) {
        boolean result = false;
        Random random = new Random();
        String id = "T" + String.format("%04d", random.nextInt(10000));
        //set current order time
//        java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());

        try {
            String query = "INSERT INTO tickets (id, passenger_id, flight_id, seat_type, ticket_status, order_time, isRound_trip)\n" +
                    "VALUES (?, ?, ?,  ?, ?, NOW(), ?);";
            PreparedStatement ps = DBConnect.getInstance().get(query);
            ps.setString(1, id);
            ps.setString(2, passengerID);
            ps.setString(3, flightID);
            ps.setString(4, seatType);
            ps.setString(5, ticketStatus);
//            ps.setObject(7, date);
            ps.setInt(6, isRoundTrip);
            int test = ps.executeUpdate();
            if (test == 1)
                result = true;
            else result = false;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return result;
    }

    public static void main(String[] args) {
//        System.out.println(new TicketDao().createTicket("P001","F001","First","Đã bán",0));
    }
}

