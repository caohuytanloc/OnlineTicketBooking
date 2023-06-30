package com.onlineticketbookingwebsite.dao;

import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.db.DBConnect;

import java.sql.*;
import java.time.LocalDateTime;
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




}

