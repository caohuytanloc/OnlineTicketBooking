package com.onlineticketbookingwebsite.controller;

import com.onlineticketbookingwebsite.beans.Flight;
import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.service.CheckinService;
import com.onlineticketbookingwebsite.service.FlightService;
import com.onlineticketbookingwebsite.service.TicketService;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


@WebServlet("/checkInfor")
public class CheckInforServlet extends HttpServlet {
    private TicketService ticketService;
    private FlightService flightService;

    private CheckinService checkinService;

    @Override
    public void init() throws ServletException {
        super.init();
        ticketService = TicketService.getInstance(); // Khởi tạo TicketService
        flightService = FlightService.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String ticketId = request.getParameter("ticketId");
        String fullname = request.getParameter("fullname");
        String departureCity = request.getParameter("departure_city");


        // Gọi phương thức để kiểm tra và lấy vé dựa trên ticketId, fullname và departureCity
        Ticket ticket = TicketService.getTicketByTicketIdFullnameDeparture(ticketId, fullname, departureCity);


        if (ticket != null && !CheckinService.isCheckin(ticketId)) {
            // Nếu tìm thấy vé, chuyển hướng sang trang checkInfor.jsp
            Flight flight = flightService.getFlightByTicketId(ticketId);

            LocalDateTime departureTime = flight.getDepartureTime();
            LocalDateTime arrivalTime = flight.getArrivalTime();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("EE, dd/MM/yyyy");

            String formattedDepartureTime = departureTime.format(formatter);

            int hour = departureTime.getHour();
            int minute = departureTime.getMinute();

            int hourArr = arrivalTime.getHour();
            int minuteArr = arrivalTime.getMinute();

            request.setAttribute("ticket", ticket);
            request.setAttribute("ticketId", ticketId);
            request.setAttribute("fullname", fullname);
            request.setAttribute("flight", flight);
            request.setAttribute("hour", hour);
            request.setAttribute("minute", String.format("%02d", minute));
            request.setAttribute("hourArr", hourArr);
            request.setAttribute("minuteArr", String.format("%02d", minuteArr));
            request.setAttribute("formattedDepartureTime", formattedDepartureTime);
            request.getRequestDispatcher("checkInfor.jsp").forward(request, response);
        } else {
            if (CheckinService.isCheckin(ticketId)) {
                // Nếu không tìm thấy vé, gửi thông báo lỗi về trang checkin.jsp
                request.setAttribute("error", "Vé đã checkin.");
                request.getRequestDispatcher("checkin.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Không tìm thấy vé.");
                request.getRequestDispatcher("checkin.jsp").forward(request, response);
            }
        }
    }
}
