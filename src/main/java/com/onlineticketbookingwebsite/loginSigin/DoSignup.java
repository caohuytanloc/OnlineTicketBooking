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

@WebServlet(name = "Signup", urlPatterns = "/signup")
public class DoSignup extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username").trim();
        String mail=request.getParameter("mail").trim();
        String phone=request.getParameter("phone").trim();
        String pass=request.getParameter("pass").trim();
        String repass=request.getParameter("repass");

       if (!pass.equals(repass)){
            request.setAttribute("errMess","Hãy nhập lại mật khẩu");
            request.getRequestDispatcher("signup.jsp").forward(request,response);
        }else {
           AccountEntity accountEntity=new AccountEntity();
           Account account=accountEntity.checkSignup(username);
           if(account!=null){
               request.setAttribute("errMess","Username đã tồn tại!");
               request.getRequestDispatcher("signup.jsp").forward(request,response);
           }else {
               int id=accountEntity.setIdUser();
               accountEntity.signup(id+"",username,mail,phone,pass);
               HttpSession session=request.getSession();
               session.setAttribute("acc",account);
              // System.out.println(account.toString());
               request.getRequestDispatcher("index.jsp").forward(request,response);
           }
        }
    }


}
