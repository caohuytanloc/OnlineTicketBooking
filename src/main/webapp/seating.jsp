<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="../css/ticket.css"
          th:href="@{css/ticket.css}" rel="stylesheet" type="text/css" media="all"/>
    <link href="../css/bootstrap.css"
          th:href="@{css/bootstrap.css}" rel='stylesheet' type='text/css'/>
    <link href="../css/style.css"
          th:href="@{css/style.css}" rel="stylesheet" type="text/css" media="all"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap&subset=vietnamese" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/checkin.css">
    <script src="../js/jquery.min.js"
            th:src="@{js/jquery.min.js}"></script>
    <script src="../js/jquery.seat-charts.js"
            th:src="@{js/jquery.seat-charts.js}"></script>
    <style>
        .main-ticket {
            margin-top: 28px;
            background-image: url(/images/cloud.jpg);
            padding: 300px;
            margin-top: -250px;
            font-family: Arial, sans-serif;
        }

        #seat-map {
            /*background-image: url(/images/flight.png); !* Đường dẫn đến hình ảnh máy bay *!*/
            background-repeat: no-repeat;
            background-size: cover;
            padding: 10px;
            height: 400px; /* Chiều cao tùy ý */
            justify-content: center;
            align-items: center;
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
<div class="jss57">
    <div>
        <h1 class="jss60 jss69 MuiTypography-h4 MuiTypography-colorTextPrimary" customcolor="white">CHỌN CHỖ NGỒI</h1>
    </div>
</div>

<div class="top-header span_top">
</div>
<div class="main-ticket">
    <div class="front" style="font-size: 20px;"><%= departureCity %> &#9658; <%= arrivalCity %>
        &#124; <%= formattedDepartureTime%> &#124; 1 Hành khách
    </div>
    <h3 style="margin-left: 4em;">Sơ đồ chỗ ngồi</h3>
    <div id="seat-map" class="scrollbar scrollbar1" style="border: 1px solid #000; padding: 10px; background-color: #fff;">
    </div>


    <div class="procedure-section3">
        <h3> Chỗ ngồi đang chọn cho:</h3>
        <div class="procedure-section4">
            <div class="column2">
                <h3 style=" font-weight: 300;">Hành Khách:</h3>
                <h3 style=" font-weight: 300;">Chuyến bay:</h3>
                <h3 style=" font-weight: 300;">Chỗ ngồi:</h3>
            </div>
            <div class="column2">
                <h3 style=" font-weight: bold;"><%= fullname%></h3>
                <h3 style=" font-weight: bold;"><%= airplaneName%></h3>
                <h2 id="selected-seats" class="scrollbar scrollbar1"></h2>
            </div>
    </div>
    </div>
            <div class="button-container">
                <button class="MuiButtonBase-root MuiButton-root jss267" tabindex="0" type="button" onclick="goBack()"><span customcolor="black" font="jambonoMedium" style="font-weight: bold;">Trở về</span></button>
                <form id="seatingForm" action="seating.jsp" method="post">
                    <input type="hidden" name="arrivalCity" value="${flight.arrivalCity}" />
                    <input type="hidden" name="airplaneName" value="${flight.airplaneName}" />
                    <input type="hidden" name="departureCity" value="${flight.departureCity}" />
                    <input type="hidden" name="fullname" value="${fullname}" />
                    <input type="hidden" name="formattedDepartureTime" value="${formattedDepartureTime}" />
                    <button class="MuiButtonBase-root MuiButton-root jss267" style="font-family: Arial, sans-serif;font-weight: bold;" tabindex="0" type="submit">Tiếp tục</button>
                </form>
            </div>
        <div id="legend"></div>
</div>

<script type="text/javascript">
    var seating = [];
    var price = parseFloat('${price}');
    $(document).ready(function () {
        var $cart = $('#selected-seats'), //Sitting Area
            $counter = $('#counter'), //Votes
            $total = $('#total'), //Total money
            $count = $('#count'),
            $seating = $('#seating');

        var sc = $('#seat-map').seatCharts({
            map: ['aaaaaa','aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa'],
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
                    var seatInfo = (this.settings.row + 1) + '_' + this.settings.label; // Tạo chuỗi dạng "row_seat"
                    $('<li>' + (this.settings.row + 1)  + this.settings.label + '</li>')
                        .attr('id', 'cart-item-' + this.settings.id)
                        .data('seatId', this.settings.id)
                        .appendTo($cart);

                    $counter.text(sc.find('selected').length + 1);
                    $total.text(recalculateTotal(sc, price));
                    $count.val($counter.text());
                    seating.push(seatInfo); // Thêm thông tin ghế đã chọn vào mảng seating
                    $seating.val(seating.join(',')); // Cập nhật giá trị của input seating


                    return 'selected';
                } else if (this.status() == 'selected') { //Checked
                    //Update Number
                    $counter.text(sc.find('selected').length - 1);
                    //update totalnum
                    $total.text($counter.text() * price);
                    $count.val($counter.text())

                    var seatId = this.settings.id;
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
        //sold seat
        //sc.get(['1_2', '4_4', '4_5', '6_6', '6_7', '8_5', '8_6', '8_7', '8_8', '10_1', '10_2']).status('unavailable');
        var seatingList = [
            <c:forEach var="seating" items="${seatingList}">
            '${seating}',
            </c:forEach>
        ];

        // Đặt trạng thái 'unavailable' cho các seating trong danh sách
        sc.get(seatingList).status('unavailable');

    });

    //sum total money
    function recalculateTotal(sc, price) {
        var total = price || 0;
        sc.find('selected').each(function () {
            total += price || 0;
        });

        return total;
    }
</script>
</div>
</div>
<div class="clearfix"></div>
</div>
</div>

<script src="../js/jquery.nicescroll.js"
        th:src="@{js/jquery.nicescroll.js}"></script>
<script src="../js/scripts.js"
        th:src="@{js/scripts.js}"></script>
<script>
    function goBack() {
        window.history.back();
    }
    document.getElementById('seatingForm').addEventListener('submit', function(event) {
        event.preventDefault(); // Ngăn chặn hành vi mặc định của biểu mẫu
        this.submit(); // Gửi biểu mẫu
    });
</script>
</body>
</html>