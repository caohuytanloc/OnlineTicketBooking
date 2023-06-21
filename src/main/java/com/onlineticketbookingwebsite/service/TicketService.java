package com.onlineticketbookingwebsite.service;

import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.dao.TicketDao;

import java.util.List;

public class TicketService {
    private static TicketService instance;

    private TicketService() {

    }

    public static TicketService getInstance() {
        if (instance == null) {
            instance = new TicketService();
        }
        return instance;
    }

    public Ticket getTicketByPaymentId(String paymentId) {
        return TicketDao.getInstance().getTicketByPaymentId(paymentId);
    }

    public List<Ticket> getAllTickets() {
        return TicketDao.getInstance().getAllTickets();
    }
}
