package com.onlineticketbookingwebsite.controller;

import com.onlineticketbookingwebsite.beans.Flight;
import com.onlineticketbookingwebsite.dao.FlightDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet("/order")

public class OrderServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        String flight_id = (String) session.getAttribute("id");
        System.out.println("id:"+flight_id);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");

        Boolean isRoundTrip = (Boolean) session.getAttribute("isRoundTrip");
        Flight departureFlight = FlightDao.getInstance().getFlightByFlightId(flight_id);
        session.setAttribute("departureFlight", departureFlight);

        if (isRoundTrip==false) {
            // get seat type of departure ticket
            String departureSeatType = (String) session.getAttribute("departureSeatType");
            // get departure Flight

            // get date time
            LocalDateTime departureTime = departureFlight.getDepartureTime();
            LocalDateTime arrivalTime = departureFlight.getArrivalTime();

            String formattedDepartureTime = departureTime.format(formatter);
            String formattedArrivalTime = arrivalTime.format(formatter);

            session.setAttribute("departureTime", formattedDepartureTime);
            session.setAttribute("destinationTime", formattedArrivalTime);
            // get city
            String departureCity = departureFlight.getDepartureCity();
            String destinationCity = departureFlight.getArrivalCity();

            session.setAttribute("departureCity", departureCity);
            session.setAttribute("destinationCity", destinationCity);


            // get airplane name
            String airplaneName = departureFlight.getAirplaneName();
            session.setAttribute("departureAirplaneName", airplaneName);
            // get price
            double departurePrice = FlightDao.getInstance().getPriceByFlightIDAndSeatType(flight_id, departureSeatType);
            session.setAttribute("departurePrice", departurePrice);
        }
        if (isRoundTrip==true) {
            String return_flight_ID = (String)session.getAttribute("idReturn");
            System.out.println("idReturn1:"+return_flight_ID);


            // get seat type of departure ticket
            String returnSeatType =(String)session.getAttribute("returnSeatType");
            session.setAttribute("returnSeatType", returnSeatType);

            // get departure Flight
            Flight returnFlight = FlightDao.getInstance().getFlightByFlightId(return_flight_ID);

            session.setAttribute("returnFlight", returnFlight);

            // get date time
            LocalDateTime returnDepartureTime = returnFlight.getDepartureTime();

            LocalDateTime returnArrivalTime = returnFlight.getArrivalTime();

            String returnFormattedDepartureTime = returnDepartureTime.format(formatter);
            String returnFormattedArrivalTime = returnArrivalTime.format(formatter);

            session.setAttribute("returnDepartureTime", returnFormattedDepartureTime);
            session.setAttribute("returnDestinationTime", returnFormattedArrivalTime);
            // get city
            String returnDepartureCity = returnFlight.getDepartureCity();
            String returnDestinationCity = returnFlight.getArrivalCity();

            session.setAttribute("returnDepartureCity", returnDepartureCity);
            session.setAttribute("returnDestinationCity", returnDestinationCity);


            // get airplane name
            String returnAirplaneName = departureFlight.getAirplaneName();
            session.setAttribute("returnAirplaneName", returnAirplaneName);
            // get price
            double returnPrice = FlightDao.getInstance().getPriceByFlightIDAndSeatType(return_flight_ID, returnSeatType);
            session.setAttribute("returnPrice", returnPrice);


        }
        request.getRequestDispatcher("/order.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        System.out.println("wwweeee");

        String return_flight_ID = request.getParameter("idReturn");
        System.out.println("idReturn:"+return_flight_ID);
        session.setAttribute("idReturn", return_flight_ID);

        String returnSeatType = request.getParameter("returnSeatType");
        session.setAttribute("returnSeatType", returnSeatType);
        System.out.println("idReturn:"+returnSeatType);
        String pricereturn = request.getParameter("pricereturn");
        session.setAttribute("pricereturn", pricereturn);
        System.out.println("pricereturn:"+pricereturn);
        String total = request.getParameter("total");
        session.setAttribute("total", total);
        System.out.println("total:"+total);


    }
}
