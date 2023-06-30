package com.onlineticketbookingwebsite.dao;

import com.onlineticketbookingwebsite.beans.Flight;
import com.onlineticketbookingwebsite.beans.SeatType;
import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.db.DBConnect;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

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
                    List<SeatType> seatTypes = getlistSeat(id);
                    flight = new Flight(id, airplaneName, departureCity, arrivalCity, departureTime, arrivalTime, availableSeats, totalSeats);
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return flight;
    }
    public List<SeatType> getlistSeat(String id_flight) {
        List<SeatType> result = new ArrayList<>();

        String query = "SELECT seat_type, amount, price FROM flightseatsinformations WHERE flight_id = ?";
        try (PreparedStatement ps = DBConnect.getInstance().get(query)) {
            ps.setString(1, id_flight);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SeatType seatType = new SeatType(
                        rs.getString("seat_type"),
                        rs.getDouble("price"),
                        rs.getInt("amount")
                );
                result.add(seatType);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return result;
    }
    public Flight getFlightByFlighttId(String flightID) {
        Flight flight = null;
        String query = "SELECT f.* " +
                "FROM flights f " +
                "WHERE f.id = ?";

        try (PreparedStatement ps = DBConnect.getInstance().get(query)) {
            ps.setString(1, flightID);

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
                    List<SeatType> seatTypes = getlistSeat(id);
                    flight = new Flight(id, airplaneName, departureCity, arrivalCity, departureTime, arrivalTime, availableSeats, totalSeats, seatTypes);
                    flight.setList(seatTypes);
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return flight;
    }

//    public static void main(String[] args) {
//        System.out.print(FlightDao.getInstance().getFlightByFlighttId("F001"));
//    }
}

