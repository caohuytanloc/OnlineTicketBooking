package com.onlineticketbookingwebsite.dao;

import com.onlineticketbookingwebsite.beans.Passenger;
import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.db.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.sql.Date;
import java.time.format.DateTimeFormatter;
import java.util.Random;

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
            ps.setString(6,  address);
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
        String result="";


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
//        LocalDate date = LocalDate.of(2023, 7, 6); // Khai báo ngày: 2023-07-06
//        LocalTime time = LocalTime.of(15, 30, 0); // Khai báo thời gian: 15:30:00
//
//        LocalDateTime dateTime = LocalDateTime.of(date, time);
//        System.out.println(new PassengerDao().createPassenger("P006","Thắm","Huỳnh",LocalDateTime.now(),"12334","03939","h1@gmial.com","diachi","Nữ"));
//        String id_passenger = String.valueOf(((Integer.parseInt(new PassengerDao().getId().substring(3)) + 1)));
     String birth = "2023-07-09";
        LocalDate date = LocalDate.parse(birth);

        LocalDateTime dateTime = date.atStartOfDay();

        System.out.println("LocalDateTime: " + dateTime);
    }

}

