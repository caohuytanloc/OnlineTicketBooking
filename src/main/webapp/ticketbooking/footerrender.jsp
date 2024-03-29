<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25/06/2023
  Time: 10:01 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/css/bootstrap.min.css">

    <style>
        body {
            margin: 0;
            padding: 0;
        }

        /* CSS cho footer */
        footer {
            filter: drop-shadow(0px 10px 10px black);
            position: fixed;
            bottom: 0;
            left: 0 !important;
            /* right: 0 !important; */
            width: 100%;
            height: 80px;
            background: white;
            padding-top: 18px;
            box-sizing: border-box;

        }

        .footer-label {
            font-size: 16px;
            font-weight: 500;
            line-height: 22px;
            font-family: 'KoHo', 'sans-serif';
            color: #000000;
        }

        .footer-value {
            margin-right: 10px;
        }

        .footer-button {
            border: none;
            height: 39px;
            padding: 0px 15px;
            min-width: 127px;
            background: linear-gradient(26.73deg, #F9A51A 13.7%, #FBB612 29.8%, #FFDD00 66.81%);
            border-radius: 10px;
            text-transform: inherit;
        }
    </style>
</head>

<body>
<c:url var="ChoseTicketGo" value="/ChoseTicketGo"></c:url>
<footer>
    <div class="container">
        <div class="row">
            <c:if test="${sessionScope.listfight==null}">
                <div class="col-sm-1">
                    <a href="/Index">
                        <button class="footer-button">Quay về</button>
                    </a>

                </div>
            </c:if>
            <div class="col-sm-6"></div>
            <div class="col-sm-2">
                <div class="footer-label">Tổng tiền:</div>
                <div class="footer-value" id="footer-value"></div>


            </div>
            <c:if test="${sessionScope.listfight!=null}">

                <c:if test="${sessionScope.isRoundTrip == true}">

                    <div class="col-sm-1">
                        <a href="${ChoseTicketGo}?action=view">
                            <button class="footer-button" onclick="check(event)">Tiếp theo</button>
                        </a>

                    </div>
                </c:if>
                <c:if test="${sessionScope.isRoundTrip == false}">
                    <c:url var="order" value="/order"></c:url>

                    <div class="col-sm-1">
                        <a href="${order}">
                            <button class="footer-button" onclick="check(event)"> Tiếp theo</button>
                        </a>

                    </div>
                </c:if>
            </c:if>



</div>
    </div>
</footer>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/js/bootstrap.min.js"></script>
<script>
    function  check(event){
        var element = document.getElementById("footer-value"); // Thay "yourElementId" bằng id của thẻ bạn muốn kiểm tra
        if (!element.innerHTML) {
            event.preventDefault(); // Ngăn chặn chuyển đến trang mới

            alert("Vui lòng chọn vé");
            return;
        }
    }

</script>
</html>
