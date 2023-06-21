package com.onlineticketbookingwebsite.controller;

import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.service.TicketService;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SelectSeatServlet extends HttpServlet {
    private TicketService ticketService;

    @Override
    public void init() throws ServletException {
        super.init();
        ticketService = TicketService.getInstance(); // Khởi tạo TicketService
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the list of tickets from the TicketService
//        List<Ticket> tickets = ticketService.getAllTickets();
        List<Ticket> tickets = new ArrayList<>();
        tickets.add(ticketService.getTicketByPaymentId("PAY001"));
        // Set the tickets as a request attribute
        request.setAttribute("tickets", tickets);

        // Forward the request to selectSeat.jsp
        request.getRequestDispatcher("selectSeat.jsp").forward(request, response);
    }
}
