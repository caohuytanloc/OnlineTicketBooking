package com.onlineticketbookingwebsite.controller;

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
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@WebServlet("/ChoseTicketGo")

public class ChoseTicketRound extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();

        if (action.equalsIgnoreCase("view")) {
            boolean trip = (Boolean) session.getAttribute("isRoundTrip");
            System.out.println(session.getAttribute("isRoundTrip"));
            if (trip==true) {
                String destination = (String) session.getAttribute("destination");
                String departure = (String) session.getAttribute("departure");
                String destinationTime= (String) session.getAttribute("destinationTime");
                System.out.println(session.getAttribute(destinationTime));

                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d/M/yyyy");
                LocalDate date = LocalDate.parse(destinationTime, formatter);

                int day = date.getDayOfMonth();
                int month = date.getMonthValue();
                int year = date.getYear();
                List<Flight> flightList = new FlightDao().findFlights(Date.valueOf(LocalDate.of(year, month, day
                )), destination, departure);
                session.setAttribute("listfightreturn", flightList);
                request.getRequestDispatcher("/ticketbooking/choseticketround.jsp").forward(request, response);

            }


        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String price = request.getParameter("price");
        String total = request.getParameter("total");
        String priceticket = request.getParameter("priceticket");
        String id = request.getParameter("id");
        session.setAttribute("id", id);
        String typego = request.getParameter("typego");
        session.setAttribute("typego", typego);


        session.setAttribute("priceticket", priceticket);
        session.setAttribute("total", total);
        session.setAttribute("price", price);
//        System.out.println(session.getAttribute("total"));
    }
}
