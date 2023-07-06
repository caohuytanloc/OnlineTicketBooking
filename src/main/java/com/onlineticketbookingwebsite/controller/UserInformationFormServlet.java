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
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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

        System.out.println("đã vào ");
        HttpSession session = request.getSession();
        String gender = request.getParameter("gender");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String birthday = request.getParameter("birthday");
        String identification = request.getParameter("identification");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
//        SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss");
        String returnFlightID = (String) session.getAttribute("idReturn");
        String departureFlightID = (String) session.getAttribute("id");
        String departureSeatType = (String) session.getAttribute("departureSeatType");

        String pattern = "yyyy-MM-dd HH:mm:ss";
        System.out.println("gender"+gender+"firstname"+firstname+"lastname"
                +lastname+"identification"+identification+"phoneNumber"+phoneNumber+"email"+email+"địa chỉ"+address);
        System.out.println(departureFlightID+"departureSeatType"+departureSeatType);



        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
        LocalDateTime dateTime = LocalDateTime.parse(birthday, formatter);
        String idpassenger = (new PassengerDao().getId().substring(3) + 1).toString();


        Boolean isRoundTrip = (Boolean) session.getAttribute("isRoundTrip");
        System.out.println(isRoundTrip);

//        if (isRoundTrip == false) {
//
         boolean savePass=  new PassengerDao().createPassenger(idpassenger, firstname, lastname, dateTime, identification, phoneNumber, email, address, gender);
            System.out.println(savePass);

            boolean saveTicket=  new TicketDao().createTicket(idpassenger, departureFlightID, departureSeatType, "Đã bán", 0);
            System.out.println(saveTicket);

            if(savePass==true&&saveTicket==true){
           System.out.println("Thành công");
       }
//            request.getRequestDispatcher("/").forward(request,response);
//        }




    }
}
