package com.onlineticketbookingwebsite.dao;

import com.onlineticketbookingwebsite.beans.Ticket;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TicketDao {
    private Connection connection;

    public TicketDao() {
        // Khởi tạo kết nối đến cơ sở dữ liệu
        try {
            connection = DriverManager.getConnection("your_database_url", "your_username", "your_password");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Ticket> getTicketsByPaymentId(String paymentId) {
        List<Ticket> tickets = new ArrayList<>();

        try {
            // Chuẩn bị câu truy vấn SQL
            String sql = "SELECT * FROM tickets WHERE payment_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, paymentId);

            // Thực hiện truy vấn và lấy kết quả
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String id = resultSet.getString("id");
                String passengerId = resultSet.getString("passenger_id");
                String flightId = resultSet.getString("flight_id");
                String seatType = resultSet.getString("seat_type");
                String ticketStatus = resultSet.getString("ticket_status");
                Date orderTime = resultSet.getDate("order_time");
                boolean isRoundTrip = resultSet.getBoolean("isRound_trip");

                // Tạo đối tượng Ticket từ kết quả của truy vấn
                Ticket ticket = new Ticket(id, passengerId, flightId, paymentId, seatType, ticketStatus, orderTime, isRoundTrip);
                tickets.add(ticket);
            }

            // Đóng tài nguyên
            resultSet.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tickets;
    }

    // Các phương thức khác của TicketDao...

    public void closeConnection() {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

