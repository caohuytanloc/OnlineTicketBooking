package com.onlineticketbookingwebsite.controller;

import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.service.TicketService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "CheckinController", value = "/Checkin")
public class CheckinController extends HttpServlet {
    private TicketService ticketService;

    @Override
    public void init() throws ServletException {
        super.init();
        ticketService = TicketService.getInstance(); // Khởi tạo TicketService
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       // List<Ticket> tickets = ticketService.getAllTickets(); // Lấy danh sách vé từ TicketService
        List<Ticket> tickets = new ArrayList<>();
        Ticket ticket1 = new Ticket("1", "2", "3", "4", "5", "6", new Date(6), true);
        Ticket ticket2 = new Ticket("1", "2", "3", "4", "5", "6", new Date(6), true);
        tickets.add(ticket1);
        tickets.add(ticket2);
        request.setAttribute("tickets", tickets);
        request.getRequestDispatcher("/checkin.jsp").forward(request, response);
    }
}


