package com.onlineticketbookingwebsite.service;

import com.onlineticketbookingwebsite.beans.Flight;
import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.dao.FlightDao;
import com.onlineticketbookingwebsite.dao.TicketDao;

public class FlightService {
    private static FlightService instance;

    private FlightService() {

    }

    public static FlightService getInstance() {
        if (instance == null) {
            instance = new FlightService();
        }
        return instance;
    }

    public static Flight getFlightByTicketId(String ticketId) {
        return FlightDao.getInstance().getFlightByTicketId(ticketId);
    }
}