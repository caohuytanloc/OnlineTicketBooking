package com.onlineticketbookingwebsite.controller;

import com.onlineticketbookingwebsite.beans.Flight;
import com.onlineticketbookingwebsite.beans.Passenger;
import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.service.FlightService;
import com.onlineticketbookingwebsite.service.PassengerService;
import com.onlineticketbookingwebsite.service.TicketService;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Properties;

@WebServlet("/sendMails")
public class SendMailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String ticketId = request.getParameter("ticketId");
        String seatNumber = request.getParameter("seatNumber");

        Passenger passenger = PassengerService.getPassengerByTicketId(ticketId);
        Flight flight = FlightService.getFlightByTicketId(ticketId);


        LocalDateTime departureTime = flight.getDepartureTime();
        LocalDateTime arrivalTime = flight.getArrivalTime();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("EE, dd/MM/yyyy");

        String nameFlight = flight.getAirplaneName();
        String deptTime = departureTime.format(formatter);
        String arrTime = arrivalTime.format(formatter);
        String arr = flight.getArrivalCity();
        String dept = flight.getDepartureCity();
        String name = passenger.getFullName();
        String email = passenger.getEmail();
        // String email = "18130128@st.hcmuaf.edu.vn";
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session sessionMail = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("voduyloc.dev@gmail.com", "nzaahliymndiwjvp");
            }
        });

        MimeMessage message = new MimeMessage(sessionMail);
        try {
            message.setFrom(new InternetAddress("voduyloc.dev@gmail.com", "Airlines"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject("Xác nhận đặt vé thành công", "UTF-8");

            // Mã xác thực
            String content = "Bạn đã đặt vé thành công, thông tin vé như sau:\n\n" + "Mã đặt chỗ: "+ticketId+".\nHành khách: " + name + ".\nĐi từ: " + dept + ", " + deptTime + ".\nĐến: " + arr + ", " + arrTime
           + ".\nChuyến bay: " +nameFlight+ ".\nChỗ ngồi: "+ seatNumber+".\n\nChúc quý khách 1 ngày tốt lành.";
            message.setContent(content, "text/plain; charset=UTF-8");

            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }
}
