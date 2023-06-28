package com.onlineticketbookingwebsite.service;

import com.onlineticketbookingwebsite.dao.CheckinDao;

import java.util.List;

public class CheckinService {
    private static CheckinService instance;

    private CheckinService() {

    }

    public static CheckinService getInstance() {
        if (instance == null) {
            instance = new CheckinService();
        }
        return instance;
    }

    public static void saveCheckin(String ticketId, String seatNumber) {
         CheckinDao.getInstance().saveCheckin(ticketId,seatNumber);
    }

    public static boolean isCheckin(String ticketId) {
       return CheckinDao.getInstance().countTicketByTicketId(ticketId);
    }

    public static List<String> getSelectedSeatsList(String flightId) {
        return CheckinDao.getInstance().getSelectedSeatsList(flightId);
    }
}
