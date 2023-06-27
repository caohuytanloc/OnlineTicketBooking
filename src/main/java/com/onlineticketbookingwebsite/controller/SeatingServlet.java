package com.onlineticketbookingwebsite.controller;

import com.onlineticketbookingwebsite.service.CheckinService;
import com.onlineticketbookingwebsite.service.FlightService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/seating")
public class SeatingServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String ticketId = request.getParameter("ticketId");
        String fullname = request.getParameter("fullname");

        List<String> listSeating = CheckinService.getSeatSelected(FlightService.getFlightByTicketId(ticketId).getId());
        List<String> newSeatingList = new ArrayList<>();

        for (String seatNumber : listSeating) {
            // Tách phần số và phần chữ cái từ seatNumber (ví dụ: 10A -> số 10 và chữ A)
            String numberPart = seatNumber.replaceAll("[^\\d]", ""); // Loại bỏ tất cả các ký tự không phải số
            String letterPart = seatNumber.replaceAll("\\d", ""); // Loại bỏ tất cả các ký tự số

            // Chuyển đổi phần số thành số nguyên
            int number = Integer.parseInt(numberPart);

            // Chuyển đổi chữ cái thành số tương ứng (với A=1, B=2, C=3,...)
            int letterValue = letterPart.charAt(0) - 'A' + 1;

            // Tạo chuỗi mới bằng cách ghép số và chữ cái đã đổi định dạng
            String newSeatNumber = String.valueOf(number) + "_" + String.valueOf(letterValue);
            newSeatingList.add(newSeatNumber);
            System.out.println(newSeatNumber);
        }
        request.setAttribute("ticketId", ticketId);
        request.setAttribute("fullname", fullname);
        request.setAttribute("newSeatingList", newSeatingList);
        request.getRequestDispatcher("/seating.jsp").forward(request, response);
    }
}
