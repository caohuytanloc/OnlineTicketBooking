package com.onlineticketbookingwebsite.controller;

import com.onlineticketbookingwebsite.beans.Flight;
import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.service.FlightService;
import com.onlineticketbookingwebsite.service.TicketService;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CheckInforServlet extends HttpServlet {
    private TicketService ticketService;
    private FlightService  flightService;

    @Override
    public void init() throws ServletException {
        super.init();
        ticketService = TicketService.getInstance(); // Khởi tạo TicketService
        flightService = FlightService.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ticketId = request.getParameter("ticketId");
        String fullname = request.getParameter("fullname");
        String departureCity = request.getParameter("departure_city");

        // Gọi phương thức để kiểm tra và lấy vé dựa trên ticketId, fullname và departureCity
        Ticket ticket = TicketService.getTicketByTicketIdFullnameDeparture(ticketId, fullname, departureCity);


        if (ticket != null) {
            // Nếu tìm thấy vé, chuyển hướng sang trang checkInfor.jsp
            Flight flight = flightService.getFlightByTicketId(ticketId);
            request.setAttribute("ticket", ticket);
            request.setAttribute("flight", flight);
            request.getRequestDispatcher("checkInfor.jsp").forward(request, response);
        } else {
            // Nếu không tìm thấy vé, gửi thông báo lỗi về trang checkin.jsp
            request.setAttribute("error", "Không tìm thấy vé");
            request.getRequestDispatcher("checkin.jsp").forward(request, response);
        }
    }


}
