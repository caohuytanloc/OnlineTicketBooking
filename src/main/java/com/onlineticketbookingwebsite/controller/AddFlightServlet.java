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
import java.time.format.DateTimeFormatter;
import java.util.UUID;

@WebServlet("/admin/doc/addFlight")
public class AddFlightServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name= request.getParameter("nameFlight").trim();
        String departure_city=request.getParameter("departure_city").trim();

        String arrival_city=request.getParameter("arrival_city").trim();
        String departure_date=(String) request.getParameter("departure_date").trim();
        String arrival_date=(String) request.getParameter("arrival_date").trim();
        String arrival_time=request.getParameter("arrival_time").trim();
        String departure_time=request.getParameter("departure_time").trim();
        String totalSeat= request.getParameter("quantity").trim();

        float first= Float.parseFloat(request.getParameter("first").trim());
        float business= Float.parseFloat(request.getParameter("business").trim());
        float premium= Float.parseFloat(request.getParameter("premium").trim());
        float eco= Float.parseFloat(request.getParameter("eco").trim());

        //System.out.println(first);
        FlightsEntity flights = new FlightsEntity();
        String id = UUID.randomUUID().toString().replace("-", "");
        id = "F" + id.substring(1, Math.min(10, id.length()));
        String dateTime_departure=departure_date+" "+departure_time;
        String dateTime_arrival=arrival_date+" "+arrival_time;
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime dateTime1 = LocalDateTime.parse(dateTime_departure, formatter);
        LocalDateTime dateTime2 = LocalDateTime.parse(dateTime_arrival, formatter);
       // String id = "A"+flights.setIdUser()+"";
     //   System.out.println(departure_city+"    "+arrival_city+"    "+dateTime1+"    "+dateTime2);
        flights.addFlight(id,name, departure_city,arrival_city, dateTime1,dateTime2 ,totalSeat);
        flights.addfLightSeatsInformations(id,"First", 10, first);
        flights.addfLightSeatsInformations(id,"Business", 20, business);
        flights.addfLightSeatsInformations(id,"Premium", 30, premium);
        flights.addfLightSeatsInformations(id,"Eco", 40, eco);

        response.sendRedirect("/admin/doc/admin.jsp");

    }

}
