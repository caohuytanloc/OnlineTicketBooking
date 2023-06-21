package com.onlineticketbookingwebsite.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CheckinController", value = "/Checkin")
public class CheckinController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setAttribute("productsTop4", ProductService.getInstance().getAllProducer());
        request.setAttribute("productsTop", ProductService.getInstance().getTopProduct1(4));
        request.setAttribute("productsProductBS", ProductService.getInstance().getTopProductBestSeller(10));
        request.setAttribute("topProducer", ProductService.getInstance().getTopProducer(4));
        CartDAO cartDAO = new CartDAO();
        Account currentAccount = (Account) session.getAttribute("account");
        if (currentAccount != null) {
            int id = currentAccount.getId();
            ArrayList<CartInfo> listProductOnHoverCart = cartDAO.getProductList(cartDAO.getProductIDFromCartByUserID(id), cartDAO.getCurrentCartByUserID(id));
            int cost = cartDAO.totalCost(id);
            request.setAttribute("listProduct", listProductOnHoverCart);
            int countProduct = 0;
            for (CartInfo x: listProductOnHoverCart) {
                countProduct += x.getSoluong();
            }
            request.setAttribute("totalProductHover", countProduct);
            request.setAttribute("cost", cost);
        }
        request.getRequestDispatcher("checkin.jsp").forward(request, response);
    }
}
