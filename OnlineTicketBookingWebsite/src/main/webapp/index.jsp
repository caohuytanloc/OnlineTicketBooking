<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

  <title>Home</title>
</head>

<body>
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
            <img src="/image/banner1.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="/image/banner1.png" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="/image/banner2.png" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="/image/banner4.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="/image/banner5.jpg" class="d-block w-100" alt="...">
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


        <form action="/RenderTicket" method="post">
          <div class="form-group radio-group">
            <label for="one-way">Một chiều</label>

            <input type="radio" id="one-way" name="flight-type" value="one-way" checked>
            <label for="round-trip">Khứ hồi</label>

            <input class="unit" type="radio" id="round-trip" name="flight-type" value="round-trip">
            <select id="passenger-select" name="passenger-select">
              <option value="1">VND

              </option>
              <option value="2">USD
              </option>

            </select>
          </div>

          <div class="depart-go">
            <div class="form-group inputgo">
              <label for="departure"><i class="fa-sharp fa-solid fa-plane"></i> Điểm đi:</label>
              <input type="text" id="departure" name="departure" onfocus="showSelects()">
              <div id="select-container" style="display: none;">
                <div class="location-select" id="recent-locations">
                  <label class="bold-text" value="recent">Địa điểm gần đây</label>
                  <i class="fa-solid fa-caret-down"></i>
                </div>
                <div class="location-select" id="vietnam-locations">
                  <label class="bold-text" value="vietnam">Việt Nam(4)</label>

                  <i class="fa-solid fa-caret-down" onclick="toggleLocationList()"></i>

                </div>
                <div id="items_vietnam" style="display:none; display: flex; flex-direction: column">
                  <div id="items" style="display: flex; align-items: center;"
                       onclick="copyContent('Hà Nội')">
                    <div style="margin-right: 10px;">Hà Nội
                      <label>Sân bay Nội Bài</label>
                    </div>
                    <div style="margin-left: auto;margin-right: 5px;">HAN</div>
                  </div>
                  <div id="items" style="display: flex; align-items: center;"
                       onclick="copyContent('TP.Hồ Chí Minh')">
                    <div style="margin-right: 10px;">TP.Hồ Chí Minh
                      <label>Sân bay Tân Sơn Nhất</label>
                    </div>
                    <div style="margin-left: auto;margin-right: 5px;">SGN</div>
                  </div>
                  <div id="items" style="display: flex; align-items: center;"
                       onclick="copyContent('Buôn Ma Thuột')">
                    <div style="margin-right: 10px;">Buôn Ma Thuột
                      <label>Sân bay Buôn Ma Thuột</label>
                    </div>
                    <div style="margin-left: auto;margin-right: 5px;">BMV</div>
                  </div>
                  <div id="items" style="display: flex; align-items: center;"
                       onclick="copyContent('TP.Đà Lạt')">
                    <div style="margin-right: 10px;">TP.Đà Lạt
                      <label>Sân bay Liên Khương</label>
                    </div>
                    <div style="margin-left: auto;margin-right: 5px;">DLI</div>
                  </div>

                </div>


                <div class="location-select" id="international-locations">
                  <label class="bold-text" value="international">Quốc tế(3)</label>
                  <i class="fa-solid fa-caret-down" onclick="toggleInternationalList()"></i>
                </div>
                <div id="items_international"
                     style="display:none; display: flex; flex-direction: column">
                  <div id="items" style="display: flex; align-items: center;"
                       onclick="copyContent('Bali')">
                    <div style="margin-right: 10px;">Bali
                      <label>Sân bay quốc tế Ngurah Rai (Denpasar)</label>
                    </div>
                    <div style="margin-left: auto;margin-right: 5px;">DPS</div>
                  </div>
                  <div id="items" style="display: flex; align-items: center;"
                       onclick="copyContent('Brisbane')">
                    <div style="margin-right: 10px;">Brisbane
                      <label>Sân bay quốc tế Brisbane</label>
                    </div>
                    <div style="margin-left: auto;margin-right: 5px;">BNE</div>
                  </div>
                  <div id="items" style="display: flex; align-items: center;"
                       onclick="copyContent('Busan')">
                    <div style="margin-right: 10px;">Cao Hùng
                      <label>Sân bay quốc tế Cao Hùng</label>
                    </div>
                    <div style="margin-left: auto;margin-right: 5px;">KHH</div>
                  </div>
                </div>

                <div class="location-select" id="thailand-locations">
                  <label class="bold-text" value="thailand">Thái Lan</label>
                  <i class="fa-solid fa-caret-down"></i>
                </div>
              </div>

            </div>
            <div class="form-group inputgolable">
              <label for="depart-date" id="datepicker"> Ngày đi</label>
            </div>
          </div>
          <div class="depart-go">

            <div class="form-group inputreturn">
              <label for="destination"><i class="fa-sharp fa-solid fa-plane fa-rotate-180"></i>
                Điểm
                đến:</label>
              <input type="text" id="destination" name="destination">
            </div>

            <div class="form-group return-date">
              <label for="return-date" id="datepicker1">Ngày về</label>
            </div>
          </div>

          <div class="passenger">
            <div class="type-passenger">
              <label for="depart-date"><i class="fa-regular fa-user-group"></i>Hành khách</label>
              <i class="fa-solid fa-chevron-down" onclick="listTypePassenger()"></i>
            </div>


            <div id="passenger_select" style="display:none;">
              <div class="adult" style="text-align: left;">
                <div class="items-passenger">
                  <i class="fa-solid fa-person" style="color: #85878a;"></i>Người lớn
                  <label for="">12 tuổi trở lên</label>
                </div>
                <div class="icon_passenger" style="float:right;display: flex;">
                  <i class="fa-regular fa-minus" id="minus-icon"></i>
                  <label id="count-label">0</label>
                  <i class="fa-solid fa-plus" id="plus-icon"></i>
                </div>
              </div>

              <div class="child">
                <div  class="items-passenger">
                  <i class="fa-solid fa-child" style="color: #85878a;"></i>Trẻ em
                  <label for="">2-11 tuổi</label>
                </div>
                <div class="icon_passenger" style="float:right;display: flex;">
                  <i class="fa-regular fa-minus" id="minus-icon1"></i>
                  <label id="count-label1">0</label>
                  <i class="fa-solid fa-plus" id="plus-icon1"></i>
                </div>
              </div>

              <div class="baby" style="">
                <div  class="items-passenger">
                  <i class="fa-solid fa-baby" style="color: #85878a;"></i>Em bé
                  <label>Dưới 2 tuổi</label>
                </div>
                <div class="icon_passenger" style="float:right;display: flex;">
                  <i class="fa-regular fa-minus" id="minus-icon2"></i>
                  <label id="count-label2">0</label>
                  <i class="fa-solid fa-plus" id="plus-icon2"></i>
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
    todayHighlight: true,
  }).on("changeDate", function (e) {
    var selectedDate = e.date.getDate();
    var selectedMonth = e.date.getMonth() + 1;
    var selectedYear = e.date.getFullYear();
    var formattedDate = selectedDate + '/' + selectedMonth + '/' + selectedYear;
    var labelElement = document.getElementById('datepicker');
    labelElement.textContent = '' + formattedDate;
  });
  $('#datepicker1').datepicker({
    autoclose: true,
    todayHighlight: true,
  }).on("changeDate", function (e) {
    var selectedDate = e.date.getDate();
    var selectedMonth = e.date.getMonth() + 1;
    var selectedYear = e.date.getFullYear();
    var formattedDate = selectedDate + '/' + selectedMonth + '/' + selectedYear;
    var labelElement = document.getElementById('datepicker1');
    labelElement.textContent = '' + formattedDate;
  });

</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/js/bootstrap.min.js"></script>

<script>
  // const typePassenger = document.querySelector(".type-passenger");
  // const passengerList = document.getElementById("passenger-list");

  // typePassenger.addEventListener("click", function () {
  // 	passengerList.classList.toggle("hidden");
  // });


  function showSelects() {
    var vietnam = document.getElementById("items_vietnam");
    var international = document.getElementById("items_international");

    const selectContainer = document.getElementById('select-container');
    selectContainer.style.display = 'flex';
    international.style.display = 'none';
    vietnam.style.display = 'block';

  }

  const departureInput = document.getElementById('departure');
  const selectContainer = document.getElementById('select-container');

  // Ẩn thẻ div khi chuột rời khỏi input hoặc div
  departureInput.addEventListener('blur', function () {
    setTimeout(function () {
      if (!selectContainer.matches(':hover') && !departureInput.matches(':hover')) {
        selectContainer.style.display = 'none';
      }
    }, 100);
  });

  selectContainer.addEventListener('mouseleave', function () {
    setTimeout(function () {
      if (!selectContainer.matches(':hover') && !departureInput.matches(':hover')) {
        selectContainer.style.display = 'none';
      }
    }, 100);
  });

</script>
<script>
  function toggleLocationList() {
    var selectContainer = document.getElementById("items_vietnam");
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
    var selectContainer = document.getElementById("items_international");
    var caretIcon = document.querySelector("#international-locations i.fa-caret-down");

    if (selectContainer.style.display === "none") {
      selectContainer.style.display = "block";
      caretIcon.classList.add("fa-rotate-180");
    } else {
      selectContainer.style.display = "none";
      caretIcon.classList.remove("fa-rotate-180");
    }
  }
  function listTypePassenger() {
    var selectNumber = document.getElementById("passenger_select");

    if (selectNumber.style.display === "none") {
      selectNumber.style.display = "block";
    } else {
      selectNumber.style.display = "none";
    }
  }
</script>

<script>
  function copyContent(element) {

    document.getElementById("departure").value = element;
  }
</script>
<script>
  function updateLabel() {
    var selectedDate = document.getElementById("depart-date").value;
    var labelElement = document.getElementById("datepicker");
    console.log(labelElement);
    // labelElement.textContent = "Ngày đi: " + selectedDate;
  }


  // var minusIcon = document.getElementById("minus-icon");
  // var plusIcon = document.getElementById("plus-icon");
  // var countLabel = document.getElementById("count-label");

  // minusIcon.addEventListener("click", function () {
  // 	var count = parseInt(countLabel.textContent);
  // 	if (count > 0) {
  // 		countLabel.textContent = count - 1;
  // 	}
  // });

  // plusIcon.addEventListener("click", function () {
  // 	var count = parseInt(countLabel.textContent);
  // 	countLabel.textContent = count + 1;
  // });
  // Xử lý sự kiện khi nhấn vào biểu tượng "minus" của người lớn
  document.getElementById("minus-icon").addEventListener("click", function () {
    var countLabel = document.getElementById("count-label");
    var count = parseInt(countLabel.textContent);
    if (count > 0) {
      count--;
      countLabel.textContent = count;
    }
  });

  // Xử lý sự kiện khi nhấn vào biểu tượng "plus" của người lớn
  document.getElementById("plus-icon").addEventListener("click", function () {
    var countLabel = document.getElementById("count-label");
    var count = parseInt(countLabel.textContent);
    count++;
    countLabel.textContent = count;
  });

  // Xử lý sự kiện khi nhấn vào biểu tượng "minus" của trẻ em
  document.getElementById("minus-icon1").addEventListener("click", function () {
    var countLabel = document.getElementById("count-label1");
    var count = parseInt(countLabel.textContent);
    if (count > 0) {
      count--;
      countLabel.textContent = count;
    }
  });

  // Xử lý sự kiện khi nhấn vào biểu tượng "plus" của trẻ em
  document.getElementById("plus-icon1").addEventListener("click", function () {
    var countLabel = document.getElementById("count-label1");
    var count = parseInt(countLabel.textContent);
    count++;
    countLabel.textContent = count;
  });

  // Xử lý sự kiện khi nhấn vào biểu tượng "minus" của em bé
  document.getElementById("minus-icon2").addEventListener("click", function () {
    var countLabel = document.getElementById("count-label2");
    var count = parseInt(countLabel.textContent);
    if (count > 0) {
      count--;
      countLabel.textContent = count;
    }
  });

  // Xử lý sự kiện khi nhấn vào biểu tượng "plus" của em bé
  document.getElementById("plus-icon2").addEventListener("click", function () {
    var countLabel = document.getElementById("count-label2");
    var count = parseInt(countLabel.textContent);
    count++;
    countLabel.textContent = count;
  });

</script>
</body>

</html>