package com.onlineticketbookingwebsite.controller;

import com.onlineticketbookingwebsite.service.CheckinService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/SaveCheckin")
public class SaveCheckinServlet extends HttpServlet {
    private CheckinService checkinService;

    @Override
    public void init() throws ServletException {
        super.init();
        checkinService = CheckinService.getInstance(); // Khởi tạo TicketService

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        // Lấy dữ liệu từ request
        String ticketId = request.getParameter("ticketId");
        String seatNumber = request.getParameter("seatNumber");

        CheckinService.saveCheckin(ticketId,seatNumber);
        request.getRequestDispatcher("/checkin").forward(request, response);
    }

}
