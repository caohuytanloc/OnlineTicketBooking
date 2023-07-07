<%@page import="java.net.URLEncoder"%>
<%@page import="java.nio.charset.StandardCharsets"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page import="com.onlineticketbookingwebsite.controller.Config" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.text.DecimalFormatSymbols" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <title>VNPAY RESPONSE</title>
        <!-- Bootstrap core CSS -->
        <link href="/css/bootstrap.min.css" rel="stylesheet"/>
        <!-- Custom styles for this template -->
        <link href="/css/jumbotron-narrow.css" rel="stylesheet">
        <script src="/js/jquery-1.11.3.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="/css/stylepayment.css">
        <style>
            .home-button {
                position: fixed;
                bottom: 20px;
                left: 50%;
                transform: translateX(-50%);
                padding: 10px 20px;
                background-color: #13a040;
                color: #fff;
                font-size: 1rem;
                border: none;
                cursor: pointer;
            }

            .form-group {
                margin-bottom: 20px;
            }

            .form-group label {
                font-weight: bold;
            }

        </style>

    </head>
    <body>
    <header>
        <div class="title">
            <div class="container">
                <h2 for="" class="text-white text-center">CỔNG THANH TOÁN VNPAY</h2>
            </div>
        </div>
    </header>
    <div class="content green" style="text-align: center;padding: 20px;">
        <i class="fa fa-check-circle green" aria-hidden="true" style="font-size:5vw;"></i>
        <h3 class="green"style="font-size:3vw;">Thanh Toán Thành Công!</h3>
    </div>

        <%
            //Begin process return from VNPAY
            Map fields = new HashMap();
            for (Enumeration params = request.getParameterNames(); params.hasMoreElements();) {
                String fieldName = URLEncoder.encode((String) params.nextElement(), StandardCharsets.US_ASCII.toString());
                String fieldValue = URLEncoder.encode(request.getParameter(fieldName), StandardCharsets.US_ASCII.toString());
                if ((fieldValue != null) && (fieldValue.length() > 0)) {
                    fields.put(fieldName, fieldValue);
                }
            }

            String vnp_SecureHash = request.getParameter("vnp_SecureHash");
            if (fields.containsKey("vnp_SecureHashType")) {
                fields.remove("vnp_SecureHashType");
            }
            if (fields.containsKey("vnp_SecureHash")) {
                fields.remove("vnp_SecureHash");
            }
            String signValue = Config.hashAllFields(fields);

        %>
    <%
        String vnpPayDate = request.getParameter("vnp_PayDate");
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
        LocalDateTime payDateTime = LocalDateTime.parse(vnpPayDate, formatter);
        DateTimeFormatter displayFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
        String formattedPayDateTime = payDateTime.format(displayFormatter);

        int amount = Integer.parseInt(request.getParameter("vnp_Amount"));
        double amountInVND = amount / 100.0;

        DecimalFormat decimalFormat = new DecimalFormat("#,##0");
        String formattedAmount = decimalFormat.format(amountInVND);
    %>
        <!--Begin display -->
        <div class="container">
            <div class="header clearfix">
                <h3 class="text-muted">VNPAY RESPONSE</h3>
            </div>
            <div class="table-responsive">
                <div class="form-group">
                    <label >Mã Giao dịch:</label>
                    <label><%=request.getParameter("vnp_TransactionNo")%></label>
                </div>
                <div class="form-group">
                    <label >Số Hóa Đơn: </label>
                    <label><%=request.getParameter("vnp_TxnRef")%></label>
                </div>
                <div class="form-group">
                    <label >Thông tin thanh toán:</label>
                    <label><%=request.getParameter("vnp_OrderInfo")%></label>
                </div>
                <div class="form-group">
                    <label >Ngân Hàng:</label>
                    <label><%=request.getParameter("vnp_BankCode")%></label>
                </div>
                <div class="form-group">
                    <label >Tổng Cộng:</label>
                    <label><%= formattedAmount %> VND</label>
                </div>
                <div class="form-group">
                    <label >Ngày Thanh Toán:</label>
                    <label><%= formattedPayDateTime %></label>
                </div>
                <div class="form-group">
                    <label >VNPAY Response Code:</label>
                    <label><%=request.getParameter("vnp_ResponseCode")%></label>
                </div>
                <div class="form-group">
                    <label >Trạng thái thanh toán:</label>
                    <label>
                        <%
                            if (signValue.equals(vnp_SecureHash)) {
                                if ("00".equals(request.getParameter("vnp_TransactionStatus"))) {
                                    String transactionNo = request.getParameter("vnp_TransactionNo");
                        %>
                        <script>
                            // Create a new XMLHttpRequest
                            var xhr = new XMLHttpRequest();
                            xhr.open('POST', '/SavePayment', true);
                            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                            xhr.onreadystatechange = function() {
                                if (xhr.readyState === 4 && xhr.status === 200) {
                                    console.log('Payment saved successfully');
                                    // Perform any additional actions if needed
                                } else {
                                    console.error('Failed to save payment');
                                }
                            };
                            xhr.send('transactionNo=<%= transactionNo %>');
                        </script>
                        <%
                                    out.println("Success");
                                } else {
                                    out.print("Failed");
                                }
                            } else {
                                out.print("Invalid signature");
                            }
                        %>
                    </label>
                </div> 
            </div>
            <p>&nbsp;
            </p>
            <button onclick="window.location.href='/Index'" class="home-button">Trở về trang chủ</button>


            <footer  class="text-center">
                <p>&copy; VNPAY 2023</p>
            </footer>
        </div>  
    </body>
</html>
