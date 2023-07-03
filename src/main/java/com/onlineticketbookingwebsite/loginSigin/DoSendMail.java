package com.onlineticketbookingwebsite.loginSigin;



import com.onlineticketbookingwebsite.entity.AccountEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SendMail", urlPatterns = "/sendMail")
public class DoSendMail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//       String mail= request.getParameter("mail").trim();
////       SendMail sendMail=new SendMail();
//       String pass=sendMail.randomPassword();
////        sendMail.sendMail(mail,pass);
//        AccountEntity accountEntity=new AccountEntity();
//        accountEntity.setPassword(mail,pass);
        response.sendRedirect("login.jsp");
    }


}
