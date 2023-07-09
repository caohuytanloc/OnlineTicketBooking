<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25/06/2023
  Time: 6:22 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v6.0.0-beta1/css/all.css"
          integrity="...insert integrity hash here..." crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/index.css">
    <title>Index</title>
</head>

<body>
<jsp:include page="/header.jsp"/>

<div class="container">
    <div class="row">
        <div class="container-left ">
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                            class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                            aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                            aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="/images/banner1.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="/images/banner1.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="/images/banner2.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="/images/banner4.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="/images/banner5.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <!-- <span class="visually-hidden">Previous</span> -->
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <!-- <span class="visually-hidden">Next</span> -->
                </button>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="container-right ">
            <div class="label-container">
                <label class="labletext1">Mua hành lý, suất ăn, chọn chỗ ngồi và hơn thế nữa...</label>
                <label class="labletext2 lableskypoint">Đổi thưởng & Mua SkyPoint</label>
                <label class="labletext2">Gửi hàng nhanh</label>
            </div>
            <div class="search-form">


                <form action="/RenderTicket" method="post" onsubmit="checkData(event)">
                    <div class="form-group radio-group">
                        <label for="one-way">Một chiều</label>

                        <input type="radio" id="one-way" name="gender" value="one-way"
                               onclick="handleFlightTypeChange()">
                        <label for="round-trip">Khứ hồi</label>
                        <input class="unit" type="radio" id="round-trip" name="gender" value="round-trip" checked
                               onclick="handleFlightTypeChange()">
                        <select id="passenger-select" name="passenger-select">
                            <option value="1">VND

                            </option>
                            <!-- <option value="2">USD
                            </option> -->

                        </select>
                    </div>

                    <div class="depart-go">
                        <div class="form-group inputgo">
                            <label for="departure"><i class="fa-sharp fa-solid fa-plane"></i> Điểm đi:</label>
                            <input type="text" id="departure" name="departure"
                                   onfocus="showSelects('select-container')">


                            <div id="select-container" style="display: none;">

                                <div class="location-select" id="recent-locations">
                                    <label value="recent">Địa điểm gần đây</label>
                                    <i class="fa-solid fa-caret-down"></i>
                                </div>
                                <div id="items_vietnam" style="display: none; display: flex; flex-direction: column">
                                    <div class="location-select" id="vietnam-locations">
                                        <label value="recent">Việt Nam</label>
                                        <i class="fa-solid fa-caret-down" onclick="toggleVietnamList()"></i>
                                    </div>

                                    <div id="items_vietnam_list"
                                         style="display: flex; flex-direction: column;margin-left: 5%;">

                                        <div id="item1" onclick="updateInput('item1')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Hà Nội</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Nội Bài
                                                    </div>
                                                </div>
                                                <div class="code">HAN</div>
                                            </div>
                                        </div>
                                        <div id="item2" onclick="updateInput('item2')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Đà Nẵng</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Đà Nẵng
                                                    </div>
                                                </div>
                                                <div class="code">DAD</div>
                                            </div>
                                        </div>
                                        <div id="item3" onclick="updateInput('item3')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">TP.HCM</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Tân Sơn
                                                        Nhất
                                                    </div>
                                                </div>
                                                <div class="code">SGN</div>
                                            </div>
                                        </div>
                                        <div id="item4" onclick="updateInput('item4')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Hải Phòng</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Cát Bi
                                                    </div>
                                                </div>
                                                <div class="code">HPH</div>
                                            </div>
                                        </div>
                                        <div id="item5" onclick="updateInput('item5')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Đà Lạt</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Liên
                                                        Khương
                                                    </div>
                                                </div>
                                                <div class="code">DLI</div>
                                            </div>
                                        </div>
                                        <div id="item6" onclick="updateInput('item6')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Cần Thơ</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Cần Thơ
                                                    </div>
                                                </div>
                                                <div class="code">VCA</div>
                                            </div>
                                        </div>
                                        <div id="item7" onclick="updateInput('item7')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Nha Trang</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Cam Ranh
                                                    </div>
                                                </div>
                                                <div class="code">CXR</div>
                                            </div>
                                        </div>
                                        <div id="item8" onclick="updateInput('item8')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Huế</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Phú Bài
                                                    </div>
                                                </div>
                                                <div class="code">HUI</div>
                                            </div>
                                        </div>
                                        <div id="item9" onclick="updateInput('item9')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Phú Quốc</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Phú Quốc
                                                    </div>
                                                </div>
                                                <div class="code">PQC</div>
                                            </div>
                                        </div>
                                        <div id="item10" onclick="updateInput('item10')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Buôn Ma Thuột</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Buôn Ma
                                                        Thuột
                                                    </div>
                                                </div>
                                                <div class="code">BMV</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="location-select" id="international-locations">
                                    <label value="recent">Quốc tế</label>
                                    <i class="fa-solid fa-caret-down" onclick="toggleInternationalList()"></i>
                                </div>
                                <div id="items_international_list"
                                     style="display: none;flex-direction: column; margin-left: 5%;">
                                    <div id="international1" onclick="updateInput('international1')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">New York</div>
                                                <div style="font-size: 13px; line-height: 17px;">John F. Kennedy
                                                    International Airport
                                                </div>
                                            </div>
                                            <div class="code">JFK</div>
                                        </div>
                                    </div>
                                    <div id="international2" onclick="updateInput('international2')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">London</div>
                                                <div style="font-size: 13px; line-height: 17px;">Heathrow Airport</div>
                                            </div>
                                            <div class="code">LHR</div>
                                        </div>
                                    </div>
                                    <div id="international3" onclick="updateInput('international3')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Paris</div>
                                                <div style="font-size: 13px; line-height: 17px;">Charles de Gaulle
                                                    Airport
                                                </div>
                                            </div>
                                            <div class="code">CDG</div>
                                        </div>
                                    </div>
                                    <div id="international4" onclick="updateInput('international4')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Tokyo</div>
                                                <div style="font-size: 13px; line-height: 17px;">Tokyo Haneda Airport
                                                </div>
                                            </div>
                                            <div class="code">HND</div>
                                        </div>
                                    </div>
                                    <div id="international5" onclick="updateInput('international5')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Singapore</div>
                                                <div style="font-size: 13px; line-height: 17px;">Changi Airport</div>
                                            </div>
                                            <div class="code">SIN</div>
                                        </div>
                                    </div>
                                    <div id="international6" onclick="updateInput('international6')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Dubai</div>
                                                <div style="font-size: 13px; line-height: 17px;">Dubai International
                                                    Airport
                                                </div>
                                            </div>
                                            <div class="code">DXB</div>
                                        </div>
                                    </div>
                                    <div id="international7" onclick="updateInput('international7')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Sydney</div>
                                                <div style="font-size: 13px; line-height: 17px;">Sydney Airport</div>
                                            </div>
                                            <div class="code">SYD</div>
                                        </div>
                                    </div>
                                    <div id="international8" onclick="updateInput('international8')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Hong Kong</div>
                                                <div style="font-size: 13px; line-height: 17px;">Hong Kong International
                                                    Airport
                                                </div>
                                            </div>
                                            <div class="code">HKG</div>
                                        </div>
                                    </div>
                                    <div id="international9" onclick="updateInput('international9')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Seoul</div>
                                                <div style="font-size: 13px; line-height: 17px;">Incheon International
                                                    Airport
                                                </div>
                                            </div>
                                            <div class="code">ICN</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="location-select" id="thailan-locations">
                                    <label value="recent">Thái Lan</label>
                                    <i class="fa-solid fa-caret-down" onclick="toggleThailanList()"></i>
                                </div>
                                <div id="items_thailan_list"
                                     style="display: none; flex-direction: column; margin-left: 5%;">

                                    <div id="thailan1" onclick="updateInput('thailan1')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Bangkok</div>
                                                <div style="font-size: 13px; line-height: 17px;">Suvarnabhumi Airport
                                                </div>
                                            </div>
                                            <div class="code">BKK</div>
                                        </div>
                                    </div>
                                    <div id="thailan2" onclick="updateInput('thailan2')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Phuket</div>
                                                <div style="font-size: 13px; line-height: 17px;">Phuket International
                                                    Airport
                                                </div>
                                            </div>
                                            <div class="code">HKT</div>
                                        </div>
                                    </div>
                                    <div id="thailan3" onclick="updateInput('thailan3')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Chiang Mai</div>
                                                <div style="font-size: 13px; line-height: 17px;">Chiang Mai
                                                    International Airport
                                                </div>
                                            </div>
                                            <div class="code">CNX</div>
                                        </div>
                                    </div>
                                    <div id="thailan4" onclick="updateInput('thailan4')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Pattaya</div>
                                                <div style="font-size: 13px; line-height: 17px;">U-Tapao Rayong-Pattaya
                                                    International Airport
                                                </div>
                                            </div>
                                            <div class="code">UTP</div>
                                        </div>
                                    </div>
                                    <div id="thailan5" onclick="updateInput('thailan5')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Krabi</div>
                                                <div style="font-size: 13px; line-height: 17px;">Krabi International
                                                    Airport
                                                </div>
                                            </div>
                                            <div class="code">KBV</div>
                                        </div>
                                    </div>
                                </div>

                            </div>


                        </div>
                        <div class="form-group inputgolable">
                            <label id="datepicker" name="datepicker">Ngày đi</label>
                            <input type="text" name="datepickerinput" id="datepickerinput" readonly>

                        </div>
                    </div>
                    <div class="depart-go">

                        <div class="form-group inputreturn" id="inputreturn">
                            <label for="destination"><i class="fa-sharp fa-solid fa-plane fa-rotate-180"></i>
                                Điểm
                                đến:</label>
                            <input type="text" id="destination" name="destination"
                                   onfocus="showSelects('select-container1')">
                            <div id="select-container1" style="display: none;">

                                <div class="location-select" id="recent-locations">
                                    <label value="recent">Địa điểm gần đây</label>
                                    <i class="fa-solid fa-caret-down"></i>
                                </div>
                                <div id="items_vietnam" style="display: none; display: flex; flex-direction: column">
                                    <div class="location-select" id="vietnam-locations">
                                        <label value="recent">Việt Nam</label>
                                        <i class="fa-solid fa-caret-down" onclick="toggleVietnamList1()"></i>
                                    </div>

                                    <div id="items_vietnam_list1"
                                         style="display: flex; flex-direction: column;margin-left: 5%;">

                                        <div id="item1" onclick="update('item1')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Hà Nội</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Nội Bài
                                                    </div>
                                                </div>
                                                <div class="code">HAN</div>
                                            </div>
                                        </div>
                                        <div id="item2" onclick="update('item2')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Đà Nẵng</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Đà Nẵng
                                                    </div>
                                                </div>
                                                <div class="code">DAD</div>
                                            </div>
                                        </div>
                                        <div id="item3" onclick="update('item3')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">TP.HCM</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Tân Sơn
                                                        Nhất
                                                    </div>
                                                </div>
                                                <div class="code">SGN</div>
                                            </div>
                                        </div>
                                        <div id="item4" onclick="update('item4')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Hải Phòng</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Cát Bi
                                                    </div>
                                                </div>
                                                <div class="code">HPH</div>
                                            </div>
                                        </div>
                                        <div id="item5" onclick="update('item5')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Đà Lạt</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Liên
                                                        Khương
                                                    </div>
                                                </div>
                                                <div class="code">DLI</div>
                                            </div>
                                        </div>
                                        <div id="item6" onclick="update('item6')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Cần Thơ</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Cần Thơ
                                                    </div>
                                                </div>
                                                <div class="code">VCA</div>
                                            </div>
                                        </div>
                                        <div id="item7" onclick="update('item7')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Nha Trang</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Cam Ranh
                                                    </div>
                                                </div>
                                                <div class="code">CXR</div>
                                            </div>
                                        </div>
                                        <div id="item8" onclick="update('item8')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Huế</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Phú Bài
                                                    </div>
                                                </div>
                                                <div class="code">HUI</div>
                                            </div>
                                        </div>
                                        <div id="item9" onclick="update('item9')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Phú Quốc</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Phú Quốc
                                                    </div>
                                                </div>
                                                <div class="code">PQC</div>
                                            </div>
                                        </div>
                                        <div id="item10" onclick="update('item10')">
                                            <div style="display: flex; align-items: center;">
                                                <div style="margin-right: 10px;">
                                                    <div class="namecity">Buôn Ma Thuột</div>
                                                    <div style="font-size: 13px; line-height: 17px;">Sân bay Buôn Ma
                                                        Thuột
                                                    </div>
                                                </div>
                                                <div class="code">BMV</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="location-select" id="international-locations">
                                    <label value="recent">Quốc tế</label>
                                    <i class="fa-solid fa-caret-down" onclick="toggleInternationalList1()"></i>
                                </div>
                                <div id="items_international_list1"
                                     style="display: none; flex-direction: column; margin-left: 5%;">

                                    <div id="international1" onclick="update('international1')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">New York</div>
                                                <div style="font-size: 13px; line-height: 17px;">John F. Kennedy
                                                    International Airport
                                                </div>
                                            </div>
                                            <div class="code">JFK</div>
                                        </div>
                                    </div>
                                    <div id="international2" onclick="update('international2')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">London</div>
                                                <div style="font-size: 13px; line-height: 17px;">Heathrow Airport</div>
                                            </div>
                                            <div class="code">LHR</div>
                                        </div>
                                    </div>
                                    <div id="international3" onclick="update('international3')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Paris</div>
                                                <div style="font-size: 13px; line-height: 17px;">Charles de Gaulle
                                                    Airport
                                                </div>
                                            </div>
                                            <div class="code">CDG</div>
                                        </div>
                                    </div>
                                    <div id="international4" onclick="update('international4')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Tokyo</div>
                                                <div style="font-size: 13px; line-height: 17px;">Tokyo Haneda Airport
                                                </div>
                                            </div>
                                            <div class="code">HND</div>
                                        </div>
                                    </div>
                                    <div id="international5" onclick="update('international5')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Singapore</div>
                                                <div style="font-size: 13px; line-height: 17px;">Changi Airport</div>
                                            </div>
                                            <div class="code">SIN</div>
                                        </div>
                                    </div>
                                    <div id="international6" onclick="update('international6')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Dubai</div>
                                                <div style="font-size: 13px; line-height: 17px;">Dubai International
                                                    Airport
                                                </div>
                                            </div>
                                            <div class="code">DXB</div>
                                        </div>
                                    </div>
                                    <div id="international7" onclick="update('international7')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Sydney</div>
                                                <div style="font-size: 13px; line-height: 17px;">Sydney Airport</div>
                                            </div>
                                            <div class="code">SYD</div>
                                        </div>
                                    </div>
                                    <div id="international8" onclick="update('international8')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Hong Kong</div>
                                                <div style="font-size: 13px; line-height: 17px;">Hong Kong International
                                                    Airport
                                                </div>
                                            </div>
                                            <div class="code">HKG</div>
                                        </div>
                                    </div>
                                    <div id="international9" onclick="update('international9')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Seoul</div>
                                                <div style="font-size: 13px; line-height: 17px;">Incheon International
                                                    Airport
                                                </div>
                                            </div>
                                            <div class="code">ICN</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="location-select" id="thailan-locations">
                                    <label value="recent">Thái Lan</label>
                                    <i class="fa-solid fa-caret-down" onclick="toggleThailanList1()"></i>
                                </div>
                                <div id="items_thailan_list1"
                                     style="display: none;  flex-direction: column; margin-left: 5%;">

                                    <div id="thailan1" onclick="update('thailan1')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Bangkok</div>
                                                <div style="font-size: 13px; line-height: 17px;">Suvarnabhumi Airport
                                                </div>
                                            </div>
                                            <div class="code">BKK</div>
                                        </div>
                                    </div>
                                    <div id="thailan2" onclick="update('thailan2')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Phuket</div>
                                                <div style="font-size: 13px; line-height: 17px;">Phuket International
                                                    Airport
                                                </div>
                                            </div>
                                            <div class="code">HKT</div>
                                        </div>
                                    </div>
                                    <div id="thailan3" onclick="update('thailan3')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Chiang Mai</div>
                                                <div style="font-size: 13px; line-height: 17px;">Chiang Mai
                                                    International Airport
                                                </div>
                                            </div>
                                            <div class="code">CNX</div>
                                        </div>
                                    </div>
                                    <div id="thailan4" onclick="update('thailan4')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Pattaya</div>
                                                <div style="font-size: 13px; line-height: 17px;">U-Tapao Rayong-Pattaya
                                                    International Airport
                                                </div>
                                            </div>
                                            <div class="code">UTP</div>
                                        </div>
                                    </div>
                                    <div id="thailan5" onclick="update('thailan5')">
                                        <div style="display: flex; align-items: center;">
                                            <div style="margin-right: 10px;">
                                                <div class="namecity">Krabi</div>
                                                <div style="font-size: 13px; line-height: 17px;">Krabi International
                                                    Airport
                                                </div>
                                            </div>
                                            <div class="code">KBV</div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>

                        <div class="form-group return-date" id="return-date">
                            <label id="datepicker1">Ngày về</label>
                            <input type="text" name="datepickerinput1" id="datepickerinput1" readonly>
                        </div>
                    </div>

                    <div class="type-passenger">
                        <div style="    display: inline-block;
                            vertical-align: top;
                            margin-right: 10px;">
                            <label><i class="fa-solid fa-user"></i>Hành khách</label><br>
                            <input type="text" class="sum_quantity" name="sum_quantity" value="1 Người lớn" readonly>
                        </div>
                        <div style="display: flex;position: inherit;
                        padding-left: 20% !important;">
                            <i class="fa-solid fa-caret-down" onclick="showpassenger()"></i>

                        </div>
                        <div id="passenger_select" style="display:none; ">
                            <div class="adult" style="display: flex; justify-content: space-between;">
                                <div>
                                    <i class="fa-solid fa-user"></i>Người lớn
                                    <label>12 tuổi trở lên</label>
                                </div>
                                <div id="number" style="display: flex;">
                                    <i class="fa-solid fa-minus" id="minus-icon1" style="color: #000000;"></i>
                                    <label id="count-label1">1</label>
                                    <i class="fa-solid fa-plus" id="plus-icon1"></i>
                                </div>
                            </div>

                            <div class="child" style="display: flex; justify-content: space-between;">
                                <div>
                                    <i class="fa-solid fa-child"></i>Trẻ em
                                    <label>2-11 tuổi</label>

                                </div>
                                <div id="number" style="display: flex;">
                                    <i class="fa-solid fa-minus" id="minus-icon2" style="color: #000000;"></i>
                                    <label id="count-label2">0</label>
                                    <i class="fa-solid fa-plus" id="plus-icon2"></i>
                                </div>
                            </div>

                            <div class="baby" style="display: flex; justify-content: space-between;">
                                <div>
                                    <i class="fa-solid fa-baby"></i>Em bé
                                    <label>Dưới 2 tuổi</label>

                                </div>
                                <div id="number" style="display: flex;">
                                    <i class="fa-solid fa-minus" id="minus-icon3" style="color: #000000;"></i>
                                    <label id="count-label3">0</label>
                                    <i class="fa-solid fa-plus" id="plus-icon3"></i>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="form-group find-ticket">
                        <input type="checkbox" id="cheap-flight" name="cheap-flight">
                        <label for="cheap-flight" style="color: white;">Tìm vé rẻ nhất</label>
                    </div>
                    <button type="submit">Tìm kiếm chuyến bay</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">

<script>
    $('#datepicker').datepicker({
        autoclose: true,
        todayHighlight: true
    }).on("changeDate", function (e) {
        var selectedDate = e.date.getDate();
        var selectedMonth = e.date.getMonth() + 1;
        var selectedYear = e.date.getFullYear();
        var formattedDate = selectedDate + '/' + selectedMonth + '/' + selectedYear;
        var labelElement = document.getElementById('datepickerinput');
        labelElement.value = formattedDate;
    });

    $('#datepicker1').datepicker({
        autoclose: true,
        todayHighlight: true
    }).on("changeDate", function (e) {
        var selectedDate = e.date.getDate();
        var selectedMonth = e.date.getMonth() + 1;
        var selectedYear = e.date.getFullYear();
        var formattedDate = selectedDate + '/' + selectedMonth + '/' + selectedYear;
        var labelElement = document.getElementById('datepickerinput1');
        labelElement.value = formattedDate;
    });


</script>
<script>
    function toggleVietnamList() {
        var selectContainer = document.getElementById("items_vietnam_list");

        var caretIcon = document.querySelector("#vietnam-locations i.fa-caret-down");

        if (selectContainer.style.display === "none") {
            selectContainer.style.display = "block";
            caretIcon.classList.add("fa-rotate-180");
        } else {
            selectContainer.style.display = "none";
            caretIcon.classList.remove("fa-rotate-180");
        }
    }

    function toggleVietnamList1() {
        var selectContainer = document.getElementById("items_vietnam_list1");

        var caretIcon = document.querySelector("#vietnam-locations i.fa-caret-down");

        if (selectContainer.style.display === "none") {
            selectContainer.style.display = "block";
            caretIcon.classList.add("fa-rotate-180");
        } else {
            selectContainer.style.display = "none";
            caretIcon.classList.remove("fa-rotate-180");
        }
    }

    function toggleInternationalList() {
        var selectContainer = document.getElementById("items_international_list");
        var caretIcon = document.querySelector("#international-locations i.fa-caret-down");

        if (selectContainer.style.display === "none") {
            selectContainer.style.display = "block";
            caretIcon.classList.add("fa-rotate-180");
        } else {
            selectContainer.style.display = "none";
            caretIcon.classList.remove("fa-rotate-180");
        }
    }

    function toggleInternationalList1() {
        var selectContainer = document.getElementById("items_international_list1");
        var caretIcon = document.querySelector("#international-locations i.fa-caret-down");

        if (selectContainer.style.display === "none") {
            selectContainer.style.display = "block";
            caretIcon.classList.add("fa-rotate-180");
        } else {
            selectContainer.style.display = "none";
            caretIcon.classList.remove("fa-rotate-180");
        }
    }

    function toggleThailanList() {
        var selectContainer = document.getElementById("items_thailan_list");
        var caretIcon = document.querySelector("#thailan-locations i.fa-caret-down");

        if (selectContainer.style.display === "none") {
            selectContainer.style.display = "block";
            caretIcon.classList.add("fa-rotate-180");
        } else {
            selectContainer.style.display = "none";
            caretIcon.classList.remove("fa-rotate-180");
        }
    }

    function toggleThailanList1() {
        var selectContainer = document.getElementById("items_thailan_list1");
        var caretIcon = document.querySelector("#thailan-locations i.fa-caret-down");

        if (selectContainer.style.display === "none") {
            selectContainer.style.display = "block";
            caretIcon.classList.add("fa-rotate-180");
        } else {
            selectContainer.style.display = "none";
            caretIcon.classList.remove("fa-rotate-180");
        }
    }

</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/js/bootstrap.min.js"></script>

<script>


    function showSelects(itemId) {
        var item = document.getElementById(itemId);
        item.style.display = 'block';
    }

    const departureInput = document.getElementById('departure');
    const selectContainer = document.getElementById('select-container');
    const departureInput1 = document.getElementById('destination');
    const selectContainer1 = document.getElementById('select-container1');
    // Xử lý sự kiện nhấn chuột ra ngoài
    document.addEventListener('click', function (event) {
        const targetElement = event.target;
        if (targetElement !== departureInput && !departureInput.contains(targetElement) &&
            targetElement !== selectContainer && !selectContainer.contains(targetElement)) {
            selectContainer.style.display = 'none';
        }
        if (targetElement !== departureInput1 && !departureInput1.contains(targetElement) &&
            targetElement !== selectContainer1 && !selectContainer1.contains(targetElement)) {
            selectContainer1.style.display = 'none';
        }

    });


</script>
<script>
    var adultCount = 1;
    var childCount = 0;
    var babyCount = 0;
    var countLabel = document.getElementById("count-label1");
    var countLabel2 = document.getElementById("count-label2");
    var countLabel3 = document.getElementById("count-label3");


    // Cập nhật giá trị của input
    function updateInputValue() {
        var input = document.querySelector('.sum_quantity');
        input.value = adultCount + " người lớn, " + childCount + " trẻ em, " + babyCount + " em bé";
    }

    // Xử lý sự kiện khi nhấn vào biểu tượng "minus" của người lớn
    document.getElementById("minus-icon1").addEventListener("click", function () {
        if (adultCount > 1) {


            adultCount--;
            countLabel.textContent = adultCount;
            updateInputValue();
        }
    });

    // Xử lý sự kiện khi nhấn vào biểu tượng "plus" của người lớn
    document.getElementById("plus-icon1").addEventListener("click", function () {


        adultCount++;
        countLabel.textContent = adultCount;


        updateInputValue();
    });

    // Xử lý sự kiện khi nhấn vào biểu tượng "minus" của trẻ em
    document.getElementById("minus-icon2").addEventListener("click", function () {
        if (childCount > 0) {
            childCount--;
            countLabel2.textContent = childCount;

            updateInputValue();
        }
    });

    // Xử lý sự kiện khi nhấn vào biểu tượng "plus" của trẻ em
    document.getElementById("plus-icon2").addEventListener("click", function () {
        childCount++;
        countLabel2.textContent = childCount;

        updateInputValue();
    });

    // Xử lý sự kiện khi nhấn vào biểu tượng "minus" của em bé
    document.getElementById("minus-icon3").addEventListener("click", function () {
        if (babyCount > 0) {
            babyCount--;

            countLabel3.textContent = babyCount;

            updateInputValue();
        }
    });

    // Xử lý sự kiện khi nhấn vào biểu tượng "plus" của em bé
    document.getElementById("plus-icon3").addEventListener("click", function () {
        babyCount++;
        countLabel3.textContent = babyCount;

        updateInputValue();
    });

    function showpassenger() {
        var selectContainer = document.getElementById('passenger_select');

        var caretIcon = document.querySelector(".type-passenger i.fa-caret-down");

        if (selectContainer.style.display === "none") {
            selectContainer.style.display = "block";
            caretIcon.classList.add("fa-rotate-180");
        } else {
            selectContainer.style.display = "none";
            caretIcon.classList.remove("fa-rotate-180");
        }


    }


</script>
<script>

    function updateInput(itemId) {
        var item = document.getElementById(itemId);
        var nameCityElement = item.querySelector('.namecity');
        var nameCityText = nameCityElement.textContent.trim();
        var inputElement = document.getElementById('departure');
        inputElement.value = nameCityText;
    }

    function update(itemId) {
        var item = document.getElementById(itemId);
        var nameCityElement = item.querySelector('.namecity');
        var nameCityText = nameCityElement.textContent.trim();
        var inputElement = document.getElementById('destination');
        inputElement.value = nameCityText;
    }

    function handleFlightTypeChange() {
        var oneWayRadio = document.getElementById("one-way");
        var pickDateElement = document.getElementById("return-date");
        var returninp = document.getElementById("inputreturn");

        if (oneWayRadio.checked) {
            pickDateElement.style.display = "none";
            returninp.style.borderRight = "none";
        } else {
            pickDateElement.style.display = "block";
            returninp.style.borderRight = "1px solid rgb(172, 167, 167)";

        }
    }

</script>
<script>
    function checkData(event) {
        var input1Value = document.getElementById("departure").value;
        var input2Value = document.getElementById("destination").value;
        var label1Value = document.getElementById("datepickerinput").value;
        var label2Value = document.getElementById("datepickerinput1").value;
        var div = document.getElementById('return-date');
        var computedStyle = getComputedStyle(div);

        if (computedStyle.display === 'block') {
            if (input1Value === '' || input2Value === '' || label1Value === '' || label2Value === '') {
                event.preventDefault();
                alert("Vui lòng chọn đầy đủ thông tin!");
                return;
            }

            var departureDate = new Date(label1Value);
            var returnDate = new Date(label2Value);

            if (departureDate < new Date()) {
                event.preventDefault();
                alert("Ngày đi phải lớn hơn hoặc bằng ngày hiện tại!");
                return;
            }

            if (returnDate < departureDate) {
                event.preventDefault();
                alert("Ngày về phải lớn hơn hoặc bằng ngày đi!");
                return;
            }
        } else if (computedStyle.display === 'none') {
            if (input1Value === '' || label1Value === '' || input2Value === '') {
                event.preventDefault();
                alert("Vui lòng chọn đầy đủ thông tin!");
                return;
            }

            var departureDate = new Date(label1Value);

            if (departureDate < new Date()) {
                event.preventDefault();
                alert("Ngày đi phải lớn hơn hoặc bằng ngày hiện tại!");
                return;
            }
        }
    }

    // function checkData(event) {
    //
    //     var input1Value = document.getElementById("departure").value;
    //     var input2Value = document.getElementById("destination").value;
    //     var label1Value = document.getElementById("datepickerinput").value;
    //     var label2Value = document.getElementById("datepickerinput1").value;
    //     var div = document.getElementById('return-date');
    //     var computedStyle = getComputedStyle(div);
    //
    //     console.log(computedStyle.display=='none')
    //     if(computedStyle.display === 'block'){
    //             if(input1Value == '' || input2Value == '' || label1Value == '' || label2Value == ''){
    //                 event.preventDefault(); // Ngăn chặn chuyển đến trang mới
    //
    //                 alert("Vui lòng chọn đầy đủ thông tin!");
    //                 return;
    //             }
    //         }
    //         else if(computedStyle.display === 'none'){
    //             if (input1Value== '' || label1Value == '' || input2Value == ''){
    //                 event.preventDefault(); // Ngăn chặn chuyển đến trang mới
    //
    //                 alert("Vui lòng chọn đầy đủ thông tin!");
    //                 return;
    //             }
    //         }  if(computedStyle.display === 'block'){
    //             if(input1Value == '' || input2Value == '' || label1Value == '' || label2Value == ''){
    //                 event.preventDefault(); // Ngăn chặn chuyển đến trang mới
    //
    //                 alert("Vui lòng chọn đầy đủ thông tin!");
    //                 return;
    //             }
    //         }
    //         else if(computedStyle.display === 'none'){
    //             if (input1Value== '' || label1Value == '' || input2Value == ''){
    //                 event.preventDefault(); // Ngăn chặn chuyển đến trang mới
    //
    //                 alert("Vui lòng chọn đầy đủ thông tin!");
    //                 return;
    //             }
    //         }
    //
    // }

    function isValidDate(dateString) {
        var pattern = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
        return pattern.test(dateString);
    }
</script>
</body>

</html>
