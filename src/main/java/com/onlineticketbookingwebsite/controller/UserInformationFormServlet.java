package com.onlineticketbookingwebsite.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import java.time.LocalDate;
import java.time.LocalDateTime;


import com.onlineticketbookingwebsite.dao.PassengerDao;
import com.onlineticketbookingwebsite.dao.TicketDao;

@WebServlet("/userInformationForm")
public class UserInformationFormServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("userInformationForm.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String gender = request.getParameter("gender");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String birthday = request.getParameter("birthday");
        String identification = request.getParameter("identify");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String returnFlightID = (String) session.getAttribute("idReturn");
        String departureFlightID = (String) session.getAttribute("id");
        String departureSeatType = (String) session.getAttribute("departureSeatType");
        session.setAttribute("fullname", firstname+" "+lastname);
        session.setAttribute("email", email);
        session.setAttribute("address",address);
        LocalDate date = LocalDate.parse(birthday);
        LocalDateTime dateTime = date.atStartOfDay();
        String id_passenger = "P00" + String.valueOf(((Integer.parseInt(new PassengerDao().getId().substring(3)) + 1)));
        Boolean isRoundTrip = (Boolean) session.getAttribute("isRoundTrip");

        if (isRoundTrip == false) {
            try {
                boolean savePass = new PassengerDao().createPassenger(id_passenger, firstname, lastname, dateTime, identification, phoneNumber, email, address, gender);
                String saveTicket = new TicketDao().createTicket(id_passenger, departureFlightID, departureSeatType, "Đã bán", 0);
                session.setAttribute("saveTicket",saveTicket);
            } catch (Exception e) {
                e.printStackTrace();
            }
            request.getRequestDispatcher("/checkPayment").forward(request, response);
        }
        if (isRoundTrip == true) {
            try {
                boolean savePass = new PassengerDao().createPassenger(id_passenger, firstname+" ", lastname, dateTime, identification, phoneNumber, email, address, gender);
                String saveTicket = new TicketDao().createTicket(id_passenger, departureFlightID, departureSeatType, "Đã bán", 1);
                String save1Ticket = new TicketDao().createTicket(id_passenger, returnFlightID, departureSeatType, "Đã bán", 1);

                session.setAttribute("saveTicket",saveTicket);
                session.setAttribute("save1Ticket",save1Ticket);
            } catch (Exception e) {
                e.printStackTrace();
            }
            request.getRequestDispatcher("/checkPayment").forward(request, response);

        }


    }
}
