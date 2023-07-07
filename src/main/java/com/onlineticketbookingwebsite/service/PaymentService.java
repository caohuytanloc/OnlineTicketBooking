package com.onlineticketbookingwebsite.service;

import com.onlineticketbookingwebsite.dao.CheckinDao;
import com.onlineticketbookingwebsite.dao.PaymentDao;

import java.util.List;

public class PaymentService {
    private static PaymentService instance;

    private PaymentService() {

    }

    public static PaymentService getInstance() {
        if (instance == null) {
            instance = new PaymentService();
        }
        return instance;
    }

    public static void savePayment(String id, String email, String address, float total) {
         PaymentDao.getInstance().savePayment(id, email, address,total);
    }
}
