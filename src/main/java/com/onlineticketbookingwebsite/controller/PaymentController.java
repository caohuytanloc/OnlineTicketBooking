package com.onlineticketbookingwebsite.controller;

import com.onlineticketbookingwebsite.service.PaymentService;

public class PaymentController {
    private PaymentService paymentService;

    public PaymentController() {
        this.paymentService = new PaymentService();
    }

    public boolean validatePaymentInfo(double amount, String creditCardNumber, String cardHolderName,
                                       String expirationDate, int cvv) {
        // Kiểm tra tính hợp lệ của thông tin thanh toán trong lớp Controller
        // ...

        // Gọi phương thức kiểm tra tính hợp lệ của thẻ tín dụng từ lớp Service
        boolean isValid = paymentService.validatePaymentInfo(amount, creditCardNumber, cardHolderName,
                expirationDate, cvv);

        return isValid;
    }

    // Các phương thức khác liên quan đến thanh toán trong lớp Controller
    // ...
}
