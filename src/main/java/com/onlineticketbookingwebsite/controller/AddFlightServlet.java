package com.onlineticketbookingwebsite.controller;

import com.onlineticketbookingwebsite.beans.Account;
import com.onlineticketbookingwebsite.entity.AccountEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "addFlight", urlPatterns = "/addFlight")
public class AddFlightServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("idflight").trim();
        String name=request.getParameter("nameflight").trim();
        String departure_city=request.getParameter("departure_city").trim();
        String arrival_city=request.getParameter("arrival_city").trim();
        String repass=request.getParameter("repass");
//        String departure_city=request.getParameter("departure_city").trim();
//        String arrival_city=request.getParameter("arrival_city").trim();
//        String repass=request.getParameter("repass");
//            AccountEntity accountEntity=new AccountEntity();
//            Account account=accountEntity.checkSignup(username);
//            if(account!=null){
//                request.setAttribute("errMess","Username đã tồn tại!");
//                request.getRequestDispatcher("signup.jsp").forward(request,response);
//            }else {
//                int id=accountEntity.setIdUser();
//                accountEntity.signup(id+"",username,mail,phone,pass);
//                HttpSession session=request.getSession();
//                session.setAttribute("acc",account);
//                // System.out.println(account.toString());
//                request.getRequestDispatcher("admin/doc/admin.jsp").forward(request,response);
//            }
//
        request.getRequestDispatcher("admin/doc/admin.jsp").forward(request,response);
    }

}
