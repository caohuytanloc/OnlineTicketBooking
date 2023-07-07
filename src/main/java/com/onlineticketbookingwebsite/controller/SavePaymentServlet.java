package com.onlineticketbookingwebsite.controller;

import com.onlineticketbookingwebsite.dao.TicketDao;
import com.onlineticketbookingwebsite.service.CheckinService;
import com.onlineticketbookingwebsite.service.PaymentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/SavePayment")
public class SavePaymentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        // Lấy dữ liệu từ request

        String transactionNo = request.getParameter("transactionNo");

        String total =  (String)session.getAttribute("total");
        String result = total.replace("VND", "").trim();
        result = result.replace(".", "");
        float amount = Float.parseFloat(result);

        String email =  (String)session.getAttribute("email");
        String address =  (String)session.getAttribute("address");
        String saveTicket =  (String)session.getAttribute("saveTicket");
        String save1Ticket =  (String)session.getAttribute("save1Ticket");
        PaymentService.savePayment(transactionNo,email, address,amount);
        TicketDao.getInstance().updateTicketPaymentId(saveTicket,transactionNo);
        TicketDao.getInstance().updateTicketPaymentId(save1Ticket,transactionNo);
//        request.getRequestDispatcher("/checkin").forward(request, response);
    }
}
