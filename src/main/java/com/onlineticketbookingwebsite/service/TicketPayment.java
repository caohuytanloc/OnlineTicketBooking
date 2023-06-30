package com.onlineticketbookingwebsite.service;

import java.util.Scanner;

public class TicketPayment {
        public static void main(String[] args) {
            Scanner scanner = new Scanner(System.in);

            // Nhập thông tin thanh toán
            System.out.print("Nhập số tiền cần thanh toán: ");
            double amount = scanner.nextDouble();

            System.out.print("Nhập số thẻ tín dụng: ");
            String creditCardNumber = scanner.next();

            System.out.print("Nhập tên chủ thẻ: ");
            String cardHolderName = scanner.next();

            System.out.print("Nhập ngày hết hạn (MM/YY): ");
            String expirationDate = scanner.next();

            System.out.print("Nhập mã CVV: ");
            int cvv = scanner.nextInt();

            // Thực hiện thanh toán
            boolean paymentResult = makePayment(amount, creditCardNumber, cardHolderName, expirationDate, cvv);

            // Kiểm tra kết quả thanh toán
            if (paymentResult) {
                System.out.println("Thanh toán thành công");
            } else {
                System.out.println("Thanh toán thất bại");
            }
        }

        public static boolean makePayment(double amount, String creditCardNumber, String cardHolderName,
                                          String expirationDate, int cvv) {
            // Kiểm tra thông tin thẻ tín dụng và thực hiện thanh toán

            // Kiểm tra số tiền cần thanh toán không âm
            if (amount <= 0) {
                System.out.println("Số tiền không hợp lệ");
                return false;
            }

            // Kiểm tra số thẻ tín dụng hợp lệ
            if (!isValidCreditCardNumber(creditCardNumber)) {
                System.out.println("Số thẻ tín dụng không hợp lệ");
                return false;
            }

            // Kiểm tra tên chủ thẻ không rỗng
            if (cardHolderName.isEmpty()) {
                System.out.println("Tên chủ thẻ không được để trống");
                return false;
            }

            // Kiểm tra ngày hết hạn
            if (!isValidExpirationDate(expirationDate)) {
                System.out.println("Ngày hết hạn không hợp lệ");
                return false;
            }

            // Kiểm tra mã CVV
            if (!isValidCVV(cvv)) {
                System.out.println("Mã CVV không hợp lệ");
                return false;
            }

            // Thực hiện thanh toán thành công
            return true;
        }

    private static boolean isValidCVV(int cvv) {
        if (!isValidCVV(cvv)) {
            System.out.println("Mã CVV không hợp lệ");
            return false;
        }
        return false;
    }

    public static boolean isValidCreditCardNumber(String creditCardNumber) {
            // Kiểm tra logic hợp lệ của số thẻ tín dụng
            // Mã kiểm tra thẻ có thể được thực hiện tại đây

            // Ví dụ đơn giản: Kiểm tra độ dài số thẻ là 16
            return creditCardNumber.length() == 16;
        }

        public static boolean isValidExpirationDate(String expirationDate) {
            // Kiểm tra logic hợp lệ của ngày
            return false;
        }
}

