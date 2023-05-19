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

  <title>Document</title>
</head>

<body>
<style>
  html{
  }
  .container-left {
    position: absolute;
    z-index: 0;
    left: 0;
  }

  .container-right {
    width: 380px !important;
    position: relative;
    z-index: 1;
    float: right;
    margin-top: 10%;
    margin-left: 60%;
  }

  .search-form {
    max-width: 500px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f5f5f5;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    /* background: linear-gradient(180deg, rgba(249, 3, 3, 0.5) 0%, rgba(227, 41, 41, 0.5) 47.92%, rgba(219, 14, 14, 0.5) 100%); */
    background: linear-gradient(30.3deg, #c7565a 33.94%, #cb2424 80%)
  }

  .search-form h2 {
    margin-top: 0;
    margin-bottom: 20px;
  }

  .search-form label {
    margin-bottom: 5px;
  }

  .search-form input[type="radio"],
  .search-form input[type="checkbox"] {
    display: inline-block;
    margin-right: 5px;
    vertical-align: middle;
  }

  .search-form .form-group {
    margin-bottom: 20px;
  }

  .search-form .form-group.return-date input:disabled {
    opacity: 0.5;
  }

  .search-form button {
    display: block;
    margin-top: 20px;
    padding: 10px 20px;
    background-color: #0077c2;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }

  .search-form button {
    color: #000000;
    width: 100%;
    height: 39px;
    font-size: 16px;
    max-width: 200px;
    background: linear-gradient(26.73deg, #F9A51A 13.7%, #FBB612 29.8%, #FFDD00 66.81%);
    font-family: JambonoMedium;
    border-radius: 10px;
  }

  @media (min-width: 768px) {
    .search-form {
      padding: 40px;
    }
  }

  @media (min-width: 992px) {
    .search-form {
      max-width: 500px;
    }
  }

  .radio-group {
    display: block;
    margin-bottom: 10px;
  }

  .radio-group label {
    display: inline-block;
    margin-right: 10px;
    color: white;
  }

  .radio-group input[type="radio"] {
    display: inline-block;
    vertical-align: middle;
    margin-right: 5px;
  }

  .depart-go {
    /* display: block; */
    margin-bottom: 10px;

    border-radius: 5px;
    background: white;
    height: 55px;
    display: flex;
    /* Đặt phần tử cha là flexbox container */
    justify-content: space-between;
    /* Các phần tử con sẽ được căn giữa với khoảng cách giữa chúng */

  }

  .depart-go .form-group {
    display: inline-block;
    vertical-align: top;
    margin-right: 10px;
  }

  /* .depart-go .form-group:last-child {
      margin-right: 0;
  } */

  .find-ticket {
    display: flex;
    align-items: center;
  }

  .find-ticket label {
    order: 2;
  }

  input[type="checkbox"] {
    order: 1;
  }

  input[type="text"] {
    border: none;
  }

  .type-passenger {
    background: white;
    border-radius: 5px;
    height: 50px;
  }

  .type-passenger label {
    display: inline-block;
    text-align: left;
  }

  .type-passenger select {
    display: inline-block;
  }

  .label-container {
    display: flex;
    justify-content: space-between;
    align-items: center;


  }

  .label-container label {
    background: linear-gradient(30.3deg, #D91A21 33.94%, #6F0000 163.23%);
    border: 0.5px solid rgb(62, 59, 59);
    border-radius: 7% 7% 0 0;
    color: white;
    height: 50px;
    font-size: 14px;
  }

  .form-group input:focus,
  .form-group input:active,
  .form-group input:focus-visible {
    outline: none;
    border: none;
    box-shadow: none;
  }

  select {
    border: none;
    outline: none;
    float: right;
  }

  .inputgo,
  .inputreturn {
    border-right: 1px solid rgb(172, 167, 167);
    /* tạo đường viền bên phải */
    /* padding-right: 1%;  */
  }

  .hidden {
    display: none;
  }

  ul {
    list-style: none;
  }

  #passenger-list {
    position: relative;
    /* Đặt phần tử là relative để có thể sử dụng z-index */
    text-align: left;
    z-index: 999;
  }

  input[type=number] {
    border: none;
  }

  #select-container {
    flex-direction: column;
    width: 340px;
    position: relative;
    z-index: 1;
  }

  select {
    border: none;
  }

  .hidden {
    display: none;
  }

  .label-container .lableskypoint {
    background: linear-gradient(26.73deg, #F9A51A 13.7%, #FBB612 29.8%, #FFDD00 66.81%);
    color: #000000;
  }
</style>
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
                <select class="location-select" id="recent-locations">
                  <option value="recent">Địa điểm gần đây</option>
                  <option value="location1">Vị trí 1</option>
                  <option value="location2">Vị trí 2</option>
                  <option value="location3">Vị trí 3</option>
                </select>
                <select class="location-select" id="vietnam-locations">
                  <option value="vietnam">Việt Nam</option>
                  <option value="location4">Vị trí 4</option>
                  <option value="location5">Vị trí 5</option>
                  <option value="location6">Vị trí 6</option>
                </select>
                <select class="location-select" id="international-locations">
                  <option value="international">Quốc tế</option>
                  <option value="location7">Vị trí 7</option>
                  <option value="location8">Vị trí 8</option>
                  <option value="location9">Vị trí 9</option>
                </select>
                <select class="location-select" id="thailand-locations">
                  <option value="thailand">Thái Lan</option>
                  <option value="location10">Vị trí 10</option>
                  <option value="location11">Vị trí 11</option>
                  <option value="location12">Vị trí 12</option>
                </select>
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

          <div class="type-passenger">
            <label for="depart-date"><i class="fa-regular fa-user-group"></i>Hành khách</label>
            <svg width="24" xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24">
              <path d="M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z"></path>
              <path fill="none" d="M0 0h24v24H0V0z"></path>
            </svg>
            <ul id="passenger-list" class="hidden" style="background-color: white;">
              <li style="text-align: left; "><i class="fa-solid fa-user"></i>Người lớn <input
                      type="number" id="adult-passengers" name="adult-passengers" min="1" max="10"
                      value="1" style="text-align: right;">
              </li>
              <li style="text-align: left; "><i class="fa-solid fa-child"></i>Trẻ em <input
                      type="number" id="child-passengers" name="child-passengers" min="0" max="10"
                      value="0" style="text-align: right;">
              </li>
              <li style="text-align: left;"><i class="fa-solid fa-baby"></i>Em bé <input type="number"
                                                                                         id="infant-passengers" name="infant-passengers" min="0" max="10" value="0"
                                                                                         style="text-align: right;">
              </li>
            </ul>

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
  });
  $('#datepicker1').datepicker({
    autoclose: true,
    todayHighlight: true,
  });

</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/js/bootstrap.min.js"></script>

	<script>
		const typePassenger = document.querySelector(".type-passenger");
		const passengerList = document.getElementById("passenger-list");

		typePassenger.addEventListener("click", function () {
			passengerList.classList.toggle("hidden");
		});


		function showSelects() {
			const selectContainer = document.getElementById('select-container');
			selectContainer.style.display = 'flex';
		}

		const selects = document.querySelectorAll('.location-select');
		const input = document.getElementById('departure');

		for (let i = 0; i < selects.length; i++) {
			selects[i].addEventListener('change', function () {
				input.value = this.options[this.selectedIndex].text;
			});
		}

		const departureInput = document.getElementById('departure');
const selectContainer = document.getElementById('select-container');

// Ẩn thẻ div khi chuột rời khỏi input hoặc div
departureInput.addEventListener('blur', function() {
  setTimeout(function() {
    if (!selectContainer.matches(':hover') && !departureInput.matches(':hover')) {
      selectContainer.style.display = 'none';
    }
  }, 100);
});

selectContainer.addEventListener('mouseleave', function() {
  setTimeout(function() {
    if (!selectContainer.matches(':hover') && !departureInput.matches(':hover')) {
      selectContainer.style.display = 'none';
    }
  }, 100);
});

	</script>


</body>

</html>