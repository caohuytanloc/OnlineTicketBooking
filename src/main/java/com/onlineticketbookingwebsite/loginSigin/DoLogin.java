package com.onlineticketbookingwebsite.loginSigin;



import com.onlineticketbookingwebsite.beans.Account;
import com.onlineticketbookingwebsite.entity.AccountEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Login", urlPatterns = "/login")
public class DoLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action =request.getParameter("action");
        if(action!=null&&action.equalsIgnoreCase("login")){
            response.sendRedirect("login.jsp");
        }else if(action==null){
            String username=request.getParameter("username").trim();
            String pass=request.getParameter("pass").trim();
            AccountEntity accountEntity=new AccountEntity();
            Account account=accountEntity.login(username,pass);
        if(account==null){
            request.setAttribute("errMess","Bạn đã nhập sai Username hoặc PassWord");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }else {
          //  System.out.println(account.toString());
            if (account.getInAdmin()==1) {
                response.sendRedirect("/ticketManagement");
                HttpSession session=request.getSession();
                session.setAttribute("acc",account);
            }else {
                response.sendRedirect("ticketbooking/Home.jsp");
                HttpSession session=request.getSession();
                session.setAttribute("acc",account);

            }

        }
        }

    }


}
