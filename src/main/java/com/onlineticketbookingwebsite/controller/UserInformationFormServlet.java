package com.onlineticketbookingwebsite.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import com.onlineticketbookingwebsite.beans.Passenger;
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
        String identification = request.getParameter("identification");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss");
        String returnFlightID = (String) session.getAttribute("idReturn");
        String departureFlightID = (String) session.getAttribute("id");
//      String returnSeatType = (String) session.getAttribute("")

        try {
            Date birthdayDate = formatter.parse(birthday);
            Random random = new Random();
            String passenger_id = "P" + String.format("%04d", random.nextInt(10000));
            PassengerDao.getInstance().createPassenger(passenger_id, firstname,lastname, (java.sql.Date) birthdayDate,identification, phoneNumber, email, address, gender);

//            TicketDao.getInstance().createTicket(passenger_id, departureFlightID,)
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }

        //Create Passenger


    }
}
