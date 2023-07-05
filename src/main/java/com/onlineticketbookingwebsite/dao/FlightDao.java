package com.onlineticketbookingwebsite.dao;

import com.onlineticketbookingwebsite.beans.Flight;
import com.onlineticketbookingwebsite.beans.SeatType;
import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.db.DBConnect;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;
import java.time.*;
import java.util.*;


public class FlightDao {
    private static FlightDao instance;
    int count = 0;


    public static FlightDao getInstance() {
        if (instance == null) {
            instance = new FlightDao();
        }
        return instance;
    }

    public List<Flight> findFlights(Date departureTime, String arrivalCity, String departureCity) {
        List<Flight> result = new ArrayList<Flight>();

        String query = "SELECT id, airplane_name, departure_city,arrival_city, departure_time, arrival_time, available_seats, total_seats " +
                "FROM flights " +
                "WHERE departure_city = ? AND arrival_city = ? AND DATE(departure_time) = ? AND available_seats > 1";

        try (PreparedStatement ps = DBConnect.getInstance().get(query)) {
            ps.setString(1, departureCity);
            ps.setString(2, arrivalCity);
            ps.setDate(3, departureTime);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                List<SeatType> seatTypes = getlistSeat(id);

                Flight flight = null;
                flight = new Flight(id, rs.getString("airplane_name"), rs.getString("departure_city"), rs.getString("arrival_city"), rs.getTimestamp("departure_time").toLocalDateTime(), rs.getTimestamp("arrival_time").toLocalDateTime(), rs.getInt("available_seats"), rs.getInt("total_seats"), seatTypes);
                flight.setList(seatTypes);
                System.out.println(flight.toString());
                result.add(flight);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        if (result.size() > 0) {
            return result;
        } else {
            return null;
        }
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

    public Flight getFlightByFlightId(String flightID) {
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

    public int getPriceByFlightIDAndSeatType(String flightID, String seatType) {
        int result = 0;
        String query = "SELECT price FROM `flightseatsinformations` join flights on flightseatsinformations.flight_id = flights.id where flight_id = ? and seat_type= ?";
        try (PreparedStatement ps = DBConnect.getInstance().get(query)) {
            ps.setString(1, flightID);
            ps.setString(2, seatType);
            try (ResultSet resultSet = ps.executeQuery()) {
                if (resultSet.next()) {
                    result = resultSet.getInt(1);

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

