package com.onlineticketbookingwebsite.controller;

import com.onlineticketbookingwebsite.service.CheckinService;
import com.onlineticketbookingwebsite.service.FlightService;
import com.onlineticketbookingwebsite.service.TicketService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/saveCheckin")
public class saveCheckinServlet extends HttpServlet {
    private CheckinService checkinService;

    @Override
    public void init() throws ServletException {
        super.init();
        checkinService = CheckinService.getInstance(); // Khởi tạo TicketService

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy dữ liệu từ request
        String ticketId = request.getParameter("ticketId");
        String seatNumber = request.getParameter("seatNumber");

        CheckinService.saveCheckin(ticketId,seatNumber);
        request.getRequestDispatcher("/checkin").forward(request, response);
    }

}
