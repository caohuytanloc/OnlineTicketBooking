package com.onlineticketbookingwebsite.controller;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//@WebServlet("/order")

public class OrderServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("order.jsp");

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("order.jsp");

    }
}
