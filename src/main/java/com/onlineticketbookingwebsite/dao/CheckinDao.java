package com.onlineticketbookingwebsite.dao;

import com.onlineticketbookingwebsite.beans.Checkin;
import com.onlineticketbookingwebsite.beans.Flight;
import com.onlineticketbookingwebsite.db.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class CheckinDao {
    private static CheckinDao instance;
    int count = 0;


    public static CheckinDao getInstance() {
        if (instance == null) {
            instance = new CheckinDao();
        }
        return instance;
    }


    public List<String> getSelectedSeatsList(String flightId) {
        List<String> seatList = new ArrayList<>();

        try {
            // Chuẩn bị câu truy vấn SQL
            String query = "SELECT seat_number FROM checkin " +
                    "WHERE ticket_id IN (SELECT id FROM tickets WHERE flight_id = ?)";

            PreparedStatement ps = DBConnect.getInstance().get(query);
            ps.setString(1, flightId);

            // Thực hiện truy vấn và lấy kết quả
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                String seatNumber = resultSet.getString("seat_number");
                seatList.add(seatNumber);
            }
            // Đóng tài nguyên
            resultSet.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        return seatList;
    }


    public boolean countTicketByTicketId(String ticketId) {
        boolean exists = false;
        String query = "SELECT COUNT(*) AS count FROM checkin WHERE ticket_id = ?";

        try (PreparedStatement ps = DBConnect.getInstance().get(query)) {
            ps.setString(1, ticketId);

            // Thực hiện truy vấn và lấy kết quả
            ResultSet resultSet = ps.executeQuery();
            if (resultSet.next()) {
                int count = resultSet.getInt("count");
                exists = count > 0;
            }

            // Đóng tài nguyên
            resultSet.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return exists;
    }


    public void saveCheckin(String ticketId, String seatNumber) {
        String query = "INSERT INTO checkin (id, ticket_id, checkin_date, seat_number, gate_number) VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement ps = DBConnect.getInstance().get(query)) {
            // Thiết lập giá trị cho các tham số của câu truy vấn
            String checkinId = ticketId+1; // Hàm tạo mã định danh check-in
            LocalDateTime checkinDate = LocalDateTime.now(); // Lấy thời gian hiện tại
            String gateNumber = "GATE1"; // Thay thế bằng giá trị cổng check-in tương ứng

            ps.setString(1, checkinId);
            ps.setString(2, ticketId);
            ps.setObject(3, checkinDate);
            ps.setString(4, seatNumber);
            ps.setString(5, gateNumber);

            // Thực hiện câu truy vấn để thêm check-in vào CSDL
            int rowsInserted = ps.executeUpdate();

            if (rowsInserted > 0) {
                // Thêm thành công
                System.out.println("Check-in đã được lưu thành công");
            } else {
                // Thêm không thành công
                System.out.println("Lỗi khi lưu check-in vào CSDL");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

}

