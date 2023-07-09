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
        String username=request.getParameter("username").trim();
        String pass=request.getParameter("pass").trim();
        AccountEntity accountEntity=new AccountEntity();
        Account account=accountEntity.login(username,pass);
        if(account==null){
            System.out.println("account.toString()");
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
//            System.out.println(account.toString());
//            response.sendRedirect("index.jsp");
//            HttpSession session=request.getSession();
//            session.setAttribute("acc",account);
        }
//        HttpSession session=request.getSession();
//        if (data.containsKey(username)&&data.get(username).equals(pass)) {
//            User u=new User();
//            u.setUsername(username);
//            u.setAva("");
//            List<String> list=new LinkedList<>();
//            list.add("admin.index");
//            Role role =new Role(list);
//            u.setRole(role);
//            session.setAttribute("auth",u);
//        }else {
//            if (data.containsKey(username)&&data.get(username).equals(pass)){
//                User u=new User();
//                u.setUsername(username);
//                u.setAva("");
//                Role role =new Role(null);
//                u.setRole(role);
//                session.setAttribute("auth",u);
//            }
//        }
//        response.sendRedirect("/login");
    }


}
