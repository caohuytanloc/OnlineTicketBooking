<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="UTF-8">
    <title>Chọn chỗ ngồi</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/checkin.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/ticket.css">
    <script src="../js/jquery.min.js"
            th:src="@{js/jquery.min.js}"></script>
    <script src="../js/jquery.seat-charts.js"
            th:src="@{js/jquery.seat-charts.js}"></script>
    <script src="../js/jquery.nicescroll.js"
            th:src="@{js/jquery.nicescroll.js}"></script>
    <script src="../js/scripts.js"
            th:src="@{js/scripts.js}"></script>
    <style>
        .background {
            background-image: url(/images/cloud.jpg);
            padding: 48px;
        }
        #seat-map {
            /*background-image: url(/images/flight.png); !* Đường dẫn đến hình ảnh máy bay *!*/
            background-repeat: no-repeat;
            background-size: cover;
            padding: 10px;
            height: 255px;
            width: 50%;
            display: flex;
            gap: 10px;
            border-radius: 10px;
        }
        #seat-map h3 {
            background-color: rgba(255, 255, 255, 0.8); /* Màu nền với độ trong suốt */
            padding: 10px;
        }
    </style>
</head>
<body>
<%
    String arrivalCity = request.getParameter("arrivalCity");
    String airplaneName = request.getParameter("airplaneName");
    String departureCity = request.getParameter("departureCity");
    String fullname = request.getParameter("fullname");
    String formattedDepartureTime = request.getParameter("formattedDepartureTime");
%>
<jsp:include page="header.jsp"/>
<div class="background">
    <div id="legend" style=" border: 1px solid #000; border-radius: 10px;width: 15%;height: 140px;"></div>
    <br>
    <h1 style="font-size: 24px;">Chọn chỗ ngồi từ trái sang phải</h1>
<br>
        <div id="seat-map" class="scrollbar scrollbar1" style="border: 1px solid #000; padding: 10px; background-color: #fff;">
        </div>

    <div class="procedure-section3">
        <h3 style="font-size: 22px;"> Chỗ ngồi đang chọn cho:</h3>
        <div class="procedure-section4">
            <div class="column2">
                <h3 style=" font-weight: 300;">Hành Khách:</h3>
                <h3 style=" font-weight: 300;">Chuyến bay:</h3>
                <h3 style=" font-weight: 300;">Lịch trình:</h3>
                <h3 style=" font-weight: 300;">Khởi hành:</h3>
                <h3 style=" font-weight: 300;">Chỗ ngồi:</h3>
            </div>
            <div class="column2">
                <h3 style="font-weight: bold;"><%= fullname %></h3>
                <h3 style="font-weight: bold;"><%= airplaneName %></h3>
                <h3 style="font-weight: bold;"><%= departureCity %> &#9658; <%= arrivalCity %></h3>
                <h3 style="font-weight: bold;"><%= formattedDepartureTime %></h3>
            <div id="selected-seats" style="color: #ca161c;"></div>
        </div>
        </div>
    </div>
    <div class="button-container" style="text-align: right;">
        <button class="MuiButtonBase-root MuiButton-root jss267" tabindex="0" type="button" onclick="goBack()">
            <span customcolor="black" font="jambonoMedium" style="font-weight: bold;">Trở về</span>
        </button>
        <form id="seatingForm" action="/ticket" method="post">
            <input id="seating" name="seating" type="text" value="${seating}" style="display: none;" />
            <input type="hidden" name="fullname" value="${fullname}" />
            <input type="hidden" name="ticketId" value="${ticketId}" />
            <button class="MuiButtonBase-root MuiButton-root jss267" tabindex="0" type="submit">
                <span customcolor="black" style="font-weight: bold;">Tiếp tục</span>
            </button>
        </form>
    </div>

</div>

<script type="text/javascript">
    var seating = [];
    var price = parseFloat('${price}');
    $(document).ready(function () {
        var $cart = $('#selected-seats'), //Sitting Area
            $seating = $('#seating');


        var sc = $('#seat-map').seatCharts({
            map: ['aaaaaa','aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa'],
            naming: {
                top: false,
                getLabel: function (character, row, column) {
                    // Chuyển đổi số cột thành chữ cái
                    var label = String.fromCharCode(64 + column);
                    return label;
                }
            },
            legend: { //Definition legend
                node: $('#legend'),
                items: [
                    ['a', 'available', 'Chỗ còn trống'],
                    ['a', 'unavailable', 'Chỗ không còn trống'],
                    ['a', 'selected', 'Chỗ đã chọn']
                ]
            },
            click: function () { //Click event
                if (this.status() == 'available') { //optional seat
                    // Xóa các chỗ ngồi đã chọn trước đó
                    sc.find('selected').status('available');
                    $cart.empty();
                    seating = [];

                    var seatInfo = (this.settings.row + 1) + '_' + this.settings.label; // Tạo chuỗi dạng "row_seat"
                    $('<h3 style="font-weight: bold;">' + (this.settings.row + 1)  + this.settings.label + '</h3>')
                        .attr('id', 'cart-item-' + this.settings.id)
                        .data('seatId', this.settings.id)
                        .appendTo($cart);
                    seating.push(seatInfo); // Thêm thông tin ghế đã chọn vào mảng seating
                    $seating.val(seating.join(',')); // Cập nhật giá trị của input seating
                    return 'selected';
                } else if (this.status() == 'selected') { //Checked
                    var seatInfo = (this.settings.row + 1) + '_' + this.settings.label; // Tạo chuỗi dạng "row_seat"
                    seating = seating.filter(function (seat) {
                        return seat !== seatInfo; // Xóa ghế đã bỏ chọn khỏi mảng seating
                    });
                    //Delete reservation
                    $('#cart-item-' + this.settings.id).remove();
                    $seating.val(seating.join(','));
                    //optional
                    return 'available';
                } else if (this.status() == 'unavailable') { //sold
                    return 'unavailable';
                } else {
                    return this.style();
                }
            }
        });

        var seatingList = [
            <c:forEach var="seating" items="${newSeatingList}" varStatus="status">
            '${seating}'${!status.last ? ',' : ''}
            </c:forEach>
        ];
        sc.get(seatingList).status('unavailable');
        // sc.get(['7_1', '5_1']).status('unavailable');
    });
</script>


</div>
</div>
<div class="clearfix"></div>
</div>
</div>


<script>
    function goBack() {
        window.history.back();
    }
    document.getElementById('seatingForm').addEventListener('submit', function(event) {
        event.preventDefault(); // Ngăn chặn hành vi mặc định của biểu mẫu
        this.submit(); // Gửi biểu mẫu
    });

    var selectedSeats = $('#selected-seats').text();
    $('#displayed-text').text(selectedSeats);

</script>
</body>
</html>