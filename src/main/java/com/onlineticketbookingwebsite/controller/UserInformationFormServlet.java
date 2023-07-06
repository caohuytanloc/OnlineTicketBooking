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
//        SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss");
        String returnFlightID = (String) session.getAttribute("idReturn");
        String departureFlightID = (String) session.getAttribute("id");
        String departureSeatType = (String) session.getAttribute("departureSeatType");

        System.out.println(departureFlightID + "birthday" + birthday);


        LocalDate date = LocalDate.parse(birthday);

        LocalDateTime dateTime = date.atStartOfDay();

        String id_passenger = "P00" + String.valueOf(((Integer.parseInt(new PassengerDao().getId().substring(3)) + 1)));
        System.out.println(id_passenger);


        Boolean isRoundTrip = (Boolean) session.getAttribute("isRoundTrip");
        System.out.println(isRoundTrip);

        if (isRoundTrip == false) {
            try {


                boolean savePass = new PassengerDao().createPassenger(id_passenger, firstname, lastname, dateTime, identification, phoneNumber, email, address, gender);
                System.out.println(savePass);

                boolean saveTicket = new TicketDao().createTicket(id_passenger, departureFlightID, departureSeatType, "Đã bán", 0);
                System.out.println(saveTicket);

                if (savePass && saveTicket) {
                    System.out.println("Thành công");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            request.getRequestDispatcher("/checkPayment").forward(request, response);
        }
        if (isRoundTrip == true) {
            try {
                boolean savePass = new PassengerDao().createPassenger(id_passenger, firstname, lastname, dateTime, identification, phoneNumber, email, address, gender);
                System.out.println(savePass);

                boolean saveTicket = new TicketDao().createTicket(id_passenger, departureFlightID, departureSeatType, "Đã bán", 1);
                System.out.println(saveTicket);
                boolean save1Ticket = new TicketDao().createTicket(id_passenger, returnFlightID, departureSeatType, "Đã bán", 1);
                System.out.println(saveTicket);

                if (savePass && saveTicket&&save1Ticket) {
                    System.out.println("Thành công");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            request.getRequestDispatcher("/checkPayment").forward(request, response);

        }


    }
}
