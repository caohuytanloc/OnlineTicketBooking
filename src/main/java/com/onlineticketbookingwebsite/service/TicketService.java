package com.onlineticketbookingwebsite.service;

import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.dao.TicketDao;

import java.util.Date;
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

    public static Ticket getTicketByTicketIdFullnameDeparture(String ticketId, String fullname, String departureCity) {
        return TicketDao.getInstance().getTicketByTicketIdFullnameDeparture(ticketId,fullname,departureCity);
    }

    public static Ticket getTicketByTicketId(String ticketId) {
        return TicketDao.getInstance().getTicketByTicketId(ticketId);
    }
}
