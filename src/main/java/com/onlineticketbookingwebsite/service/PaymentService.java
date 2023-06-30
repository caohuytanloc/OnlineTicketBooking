package com.onlineticketbookingwebsite.service;

import com.onlineticketbookingwebsite.dao.PaymentDAO;

import java.util.Scanner;
public class PaymentService {
    private PaymentDAO paymentDAO;

    public PaymentService() {
        this.paymentDAO = new PaymentDAO();
    }

    public boolean validatePaymentInfo(double amount, String creditCardNumber, String cardHolderName,
                                       String expirationDate, int cvv) {
        // Kiểm tra tính hợp lệ của thông tin thanh toán
        // ...

        // Kiểm tra tính hợp lệ của thẻ tín dụng
        boolean isValidCreditCard = paymentDAO.validateCreditCard(creditCardNumber);
        if (!isValidCreditCard) {
            return false;
        }

        // Các kiểm tra khác liên quan đến thông tin thanh toán
        // ...

        return true;
    }

    // Các phương thức khác liên quan đến thanh toán
    // ...
}


