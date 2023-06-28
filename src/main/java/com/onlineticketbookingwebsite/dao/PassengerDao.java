package com.onlineticketbookingwebsite.dao;

import com.onlineticketbookingwebsite.beans.Passenger;
import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.db.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

public class PassengerDao {
    private static PassengerDao instance;
    int count = 0;


    public static PassengerDao getInstance() {
        if (instance == null) {
            instance = new PassengerDao();
        }
        return instance;
    }

    public Passenger getPassengerByTicketId(String ticketId) {
        Passenger passenger = null;
        try {
            // Chuẩn bị câu truy vấn SQL
            String query = "SELECT p.* FROM passengers p JOIN tickets t ON p.id = t.passenger_id WHERE t.id = ?";

            PreparedStatement ps = DBConnect.getInstance().get(query);
            ps.setString(1, ticketId);

            // Thực hiện truy vấn và lấy kết quả
            ResultSet resultSet = ps.executeQuery();
            if (resultSet.next()) {
                String id = resultSet.getString("id");
                String fullName = resultSet.getString("full_name");
                String phoneNumber = resultSet.getString("phone_number");
                Timestamp birthdayTimestamp = resultSet.getTimestamp("birthday");
                LocalDateTime birthday = birthdayTimestamp.toLocalDateTime();
                String sex = resultSet.getString("sex");
                String address = resultSet.getString("address");
                String identification = resultSet.getString("identification");
                String email = resultSet.getString("email");

                // Tạo đối tượng Passenger từ kết quả của truy vấn
                passenger = new Passenger(id, fullName, phoneNumber, birthday, sex, address, identification, email);
            }

            // Đóng tài nguyên
            resultSet.close();
            ps.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return passenger;
    }
}

