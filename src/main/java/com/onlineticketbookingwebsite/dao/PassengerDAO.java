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

    public boolean createPassenger(String id, String firstName, String lastName,
                                   LocalDateTime birthday, String identification, String phoneNumber,
                                   String email, String address, String gender) {
        boolean result = false;

        try {
            String query = "INSERT INTO PASSENGERS VALUE (?, ? ,? ,? ,? ,? ,? ,?)";
            PreparedStatement ps = DBConnect.getInstance().get(query);
            ps.setString(1, id);
            ps.setString(2, lastName + "" + firstName);
            ps.setString(3, phoneNumber);
            ps.setObject(4, birthday);
            ps.setString(5, gender);
            ps.setString(6, address);
            ps.setString(7, identification);
            ps.setString(8, email);

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

    public String getId() {
        String result = "";


        String query = "SELECT id\n" +
                "FROM passengers\n" +
                "ORDER BY id DESC\n" +
                "LIMIT 1;";
        try (PreparedStatement ps = DBConnect.getInstance().get(query)) {

            try (ResultSet resultSet = ps.executeQuery()) {
                if (resultSet.next()) {
                    result = resultSet.getString(1);

                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return result;

    }

    public static void main(String[] args) {

    }
}

