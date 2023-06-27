package com.onlineticketbookingwebsite.dao;

import com.onlineticketbookingwebsite.beans.Flight;
import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.db.DBConnect;

import java.sql.*;
import java.time.LocalDateTime;

public class FlightDao {
    private static FlightDao instance;
    int count = 0;


    public static FlightDao getInstance() {
        if (instance == null) {
            instance = new FlightDao();
        }
        return instance;
    }


    public Flight getFlightByTicketId(String ticketId) {
        Flight flight = null;
        String query = "SELECT f.* " +
                "FROM flights f " +
                "INNER JOIN tickets t ON t.flight_id = f.id " +
                "WHERE t.id = ?";

        try (PreparedStatement ps = DBConnect.getInstance().get(query)) {
            ps.setString(1, ticketId);

            try (ResultSet resultSet = ps.executeQuery()) {
                if (resultSet.next()) {
                    String id = resultSet.getString("id");
                    String airplaneName = resultSet.getString("airplane_name");
                    String departureCity = resultSet.getString("departure_city");
                    String arrivalCity = resultSet.getString("arrival_city");

                    Timestamp departureTimestamp = resultSet.getTimestamp("departure_time");
                    LocalDateTime departureTime = departureTimestamp.toLocalDateTime();

                    Timestamp arrivalTimestamp = resultSet.getTimestamp("arrival_time");
                    LocalDateTime arrivalTime = arrivalTimestamp.toLocalDateTime();

                    int availableSeats = resultSet.getInt("available_seats");
                    int totalSeats = resultSet.getInt("total_seats");

                    flight = new Flight(id, airplaneName, departureCity, arrivalCity, departureTime, arrivalTime, availableSeats, totalSeats);
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return flight;
    }



}

