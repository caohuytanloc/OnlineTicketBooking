package com.onlineticketbookingwebsite.dao;

public class PassengerDAO {
    private static PassengerDAO instance;

    int count = 0;

    public static PassengerDAO getInstance() {
        if (instance == null) {
            instance = new PassengerDAO();
        }
        return instance;
    }


}
