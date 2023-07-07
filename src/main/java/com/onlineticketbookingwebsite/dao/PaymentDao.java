package com.onlineticketbookingwebsite.dao;

import com.onlineticketbookingwebsite.db.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class PaymentDao {
    private static PaymentDao instance;
    int count = 0;


    public static PaymentDao getInstance() {
        if (instance == null) {
            instance = new PaymentDao();
        }
        return instance;
    }

    public void savePayment(String id, String email, String address, float total) {
        String paymentMethod = "Vnpay";
        String status = "paid";

        String query = "INSERT INTO payments (id, payment_method, payment_date, email, address, total, status) VALUES (?, ?, NOW(), ?, ?, ?, ?)";

        try (PreparedStatement ps = DBConnect.getInstance().get(query)) {
            // Set values for the parameters of the query
            ps.setString(1, id);
            ps.setString(2, paymentMethod);
            ps.setString(3, email);
            ps.setString(4, address);
            ps.setFloat(5, total);
            ps.setString(6, status);

            // Execute the query to insert the payment into the database
            int rowsInserted = ps.executeUpdate();

            if (rowsInserted > 0) {
                // Insert successful
                System.out.println("Payment has been saved successfully");
            } else {
                // Insert unsuccessful
                System.out.println("Error when saving payment to the database");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }


}

