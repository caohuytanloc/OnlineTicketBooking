package com.onlineticketbookingwebsite.dao;

import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.db.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TicketDao {
    private static TicketDao instance;
    int count = 0;


    public static TicketDao getInstance() {
        if (instance == null) {
            instance = new TicketDao();
        }
        return instance;
    }

    public Ticket getTicketByPaymentId(String paymentId) {
        Ticket ticket = null;
        try {
            // Chuẩn bị câu truy vấn SQL
            String query = "SELECT * FROM tickets WHERE payment_id = ?";
            PreparedStatement ps = DBConnect.getInstance().get(query);
            ps.setString(1, paymentId);

            // Thực hiện truy vấn và lấy kết quả
            ResultSet resultSet = ps.executeQuery();
            if (resultSet.next()) {
                String id = resultSet.getString("id");
                String passengerId = resultSet.getString("passenger_id");
                String flightId = resultSet.getString("flight_id");
                String seatType = resultSet.getString("seat_type");
                String ticketStatus = resultSet.getString("ticket_status");
                Date orderTime = resultSet.getDate("order_time");
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
//    public List<Ticket> getAllTickets() {
//        List<Ticket> tickets = new ArrayList<>();
//
//        try {
//            // Prepare SQL query
//            String query = "SELECT * FROM tickets;";
//            PreparedStatement ps = DBConnect.getInstance().get(query);
//
//            // Execute query and retrieve results
//            ResultSet resultSet = ps.executeQuery();
//
//            // Process each row in the result set
//            while (resultSet.next()) {
//                String id = resultSet.getString("id");
//                String passengerId = resultSet.getString("passenger_id");
//                String flightId = resultSet.getString("flight_id");
//                String paymentId = resultSet.getString("payment_id");
//                String seatType = resultSet.getString("seat_type");
//                String ticketStatus = resultSet.getString("ticket_status");
//                Date orderTime = resultSet.getDate("order_time");
//                boolean isRoundTrip = resultSet.getBoolean("isRound_trip");
//
//                // Create Ticket object from the query result
//                Ticket ticket = new Ticket(id, passengerId, flightId, paymentId, seatType, ticketStatus, orderTime, isRoundTrip);
//
//                // Add the ticket to the list
//                tickets.add(ticket);
//            }
//
//            // Close resources
//            resultSet.close();
//            ps.close();
//        } catch (SQLException | ClassNotFoundException e) {
//            e.printStackTrace();
//        }
//        return tickets;
//    }

    public List<Ticket> getAllTickets() {
        List<Ticket> tickets = new ArrayList<>();
        Ticket ticket1 = new Ticket("1", "2", "3", "4", "5", "6", new Date(6), true);
        tickets.add(ticket1);
        Ticket ticket2 = new Ticket("1", "2", "3", "4", "5", "6", new Date(6), true);
        tickets.add(ticket2);
        return tickets;
    }
}

