package com.onlineticketbookingwebsite.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/seating")
public class SeatingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String ticketId = request.getParameter("ticketId");
        String fullname = request.getParameter("fullname");

        request.setAttribute("ticketId", ticketId);
        request.setAttribute("fullname", fullname);
        request.getRequestDispatcher("/seating.jsp").forward(request, response);
    }
}
