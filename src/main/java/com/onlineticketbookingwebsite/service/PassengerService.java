package com.onlineticketbookingwebsite.service;

import com.onlineticketbookingwebsite.beans.Passenger;
import com.onlineticketbookingwebsite.beans.Ticket;
import com.onlineticketbookingwebsite.dao.PassengerDao;
import com.onlineticketbookingwebsite.dao.TicketDao;

public class PassengerService {
    private static PassengerService instance;

    private PassengerService() {

    }

    public static PassengerService getInstance() {
        if (instance == null) {
            instance = new PassengerService();
        }
        return instance;
    }



    public static Passenger getPassengerByTicketId(String ticketId) {
        return PassengerDao.getInstance().getPassengerByTicketId(ticketId);
    }
}
