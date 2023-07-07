package com.onlineticketbookingwebsite.controller;

import com.onlineticketbookingwebsite.beans.Account;
import com.onlineticketbookingwebsite.beans.Flight;
import com.onlineticketbookingwebsite.entity.AccountEntity;
import com.onlineticketbookingwebsite.entity.FlightsEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet("/admin/doc/addFlight")
public class AddFlightServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       // String id=request.getParameter("idflight");
        String name= request.getParameter("nameFlight").trim();
        String departure_city=request.getParameter("departure_city").trim();

 //      response.sendRedirect("/admin/doc/addFlight.jsp");
        String arrival_city=request.getParameter("arrival_city").trim();
        String departure_date=(String) request.getParameter("departure_date").trim();
        String arrival_date=(String) request.getParameter("arrival_date").trim();
        String arrival_time=request.getParameter("arrival_time").trim();
        String departure_time=request.getParameter("departure_time").trim();
        String totalSeat= request.getParameter("quantity").trim();

        FlightsEntity flights = new FlightsEntity();
        System.out.println(name+" "+departure_date+" "+departure_time+" "+ totalSeat);
        System.out.println();


        flights.addFlight(name, departure_city,arrival_city, (departure_date+" "+departure_time),(arrival_date+" "+arrival_time),totalSeat);

    }

}
