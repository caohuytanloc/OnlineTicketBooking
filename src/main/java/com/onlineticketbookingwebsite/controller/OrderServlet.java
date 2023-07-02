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
@WebServlet("/order")

public class OrderServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("order.jsp");

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String idReturn = request.getParameter("idReturn");
        HttpSession session = request.getSession();
        session.setAttribute("idReturn", idReturn);
        
        String id = request.getParameter("id");
        session.setAttribute("id", id);

        Flight currentFlight = FlightDao.getInstance().getFlightByFlighttId(idReturn);
        String isRoundTrip = request.getParameter("isRoundTrip");
        if (isRoundTrip.equals("true")) {
            String typeGo = session.getAttribute("typego").toString();
            String typeReturn = session.getAttribute("typeReturn").toString();
            double price;
            if (typeGo.equals("First")) {
                price = FlightDao.getInstance().getFlightByFlighttId(idReturn).getPriceSeatFirst();
//            } else if ()
            }


        }


        session.setAttribute("airplaneName", currentFlight.getAirplaneName());

    }
}
