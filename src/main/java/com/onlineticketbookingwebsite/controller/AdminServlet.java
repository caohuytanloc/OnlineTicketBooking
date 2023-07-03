package com.onlineticketbookingwebsite.controller;

import com.onlineticketbookingwebsite.beans.Account;
import com.onlineticketbookingwebsite.beans.Flight;
import com.onlineticketbookingwebsite.entity.AccountEntity;
import com.onlineticketbookingwebsite.entity.FlightsEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "TicketManagement", urlPatterns = "/ticketManagement")
public class AdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Flight> listAdmin = new ArrayList<Flight>();
        FlightsEntity flights = new FlightsEntity();
        listAdmin = flights.getLights();
        System.out.println(listAdmin.toString());
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        session.setAttribute("listAdmin", listAdmin);
       //request.getRequestDispatcher("admin/doc/admin.jsp").forward(request, response);
       response.sendRedirect("admin/doc/admin.jsp");
    }


}
