package com.onlineticketbookingwebsite.controller;

import com.mysql.cj.Session;
import com.onlineticketbookingwebsite.beans.Flight;
import com.onlineticketbookingwebsite.dao.FlightDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@WebServlet("/RenderTicket")

public class RenderTicket extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
        String trip = request.getParameter("gender");
        if (trip.equalsIgnoreCase("one-way")) {
            String departure = request.getParameter("departure");
            String departureTime = request.getParameter("datepickerinput");
            String destination = request.getParameter("destination");
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d/M/yyyy");
            LocalDate date = LocalDate.parse(departureTime, formatter);
            System.out.println(departure);
            int day = date.getDayOfMonth();       // Lấy ngày
            int month = date.getMonthValue();     // Lấy tháng
            int year = date.getYear();            // Lấy năm


            List<Flight> flightList = new FlightDao().findFlights(Date.valueOf(LocalDate.of(year, month, day
            )), destination, departure);


            session.setAttribute("trip", trip);


            session.setAttribute("departure", departure);
            session.setAttribute("departureTime", departureTime);
            session.setAttribute("destination", destination);
            session.setAttribute("listfight", flightList);

        } else if (trip.equalsIgnoreCase("round-trip")) {

            String departure = request.getParameter("departure");
            String departureTime = request.getParameter("datepickerinput1");
            String destination = request.getParameter("destination");


            String destinationTime = request.getParameter("datepickerinput");

            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d/M/yyyy");
            LocalDate date = LocalDate.parse(departureTime, formatter);

            int day = date.getDayOfMonth();
            int month = date.getMonthValue();
            int year = date.getYear();


            LocalDate date1 = LocalDate.parse(destinationTime, formatter);

            int day1 = date.getDayOfMonth();
            int month1 = date.getMonthValue();
            int year1 = date.getYear();


            List<Flight> flightList = new FlightDao().findFlights(Date.valueOf(LocalDate.of(year, month, day
            )), destination, departure);

            session.setAttribute("trip", trip);
            session.setAttribute("departure", departure);
            session.setAttribute("departureTime", departureTime);
            session.setAttribute("destination", destination);
            session.setAttribute("destinationTime", destinationTime);
            session.setAttribute("listfight", flightList);

        }
        request.getRequestDispatcher("/ticketbooking/renderTicket.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}