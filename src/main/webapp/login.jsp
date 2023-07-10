
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Đăng nhập</title>
  <link href="css/bootstrap1.min.css" rel="stylesheet" id="bootstrap-css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="styles.css">
  <style>

    @import url('https://fonts.googleapis.com/css?family=Numans');

    html,body{
      background-image: url('images/backgroundlogin.jpg');
      background-size: cover;
      background-repeat: no-repeat;
      height: 100%;
      font-family: 'Numans', sans-serif;
    }

    .container{
      height: 100%;
      align-content: center;
    }

    .card{
      height: 390px;
      margin-top: auto;
      margin-bottom: auto;
      width: 400px;
      background-color: rgb(92, 73, 57) !important;
    }

    .social_icon span{
      font-size: 60px;
      margin-left: 10px;
      color: #e21604;
    }

    .social_icon span:hover{
      color: white;
      cursor: pointer;
    }

    .card-header h3{
      color: white;
    }

    .social_icon{
      position: absolute;
      right: 20px;
      top: -45px;
    }

    .input-group-prepend span{
      width: 50px;
      background-color: #e22504;
      color: white;
      border:0 !important;
    }

    input:focus{
      outline: none !important;
      box-shadow: 0 0 0 0 !important;

    }

    .remember{
      color: white;
    }

    .remember input
    {
      width: 20px;
      height: 20px;
      margin-left: 15px;
      margin-right: 5px;
    }

    .login_btn{
      color: white;
      background-color: #e20b04;
      width: 100px;
    }

    .login_btn:hover{
      color: black;
      background-color: white;
    }

    .links{
      color: white;
    }

    .links a{
      margin-left: 4px;
    }
  </style>
</head>
<body>
<div class="container" action="login" method="get">
  <div class="d-flex justify-content-center h-100">
    <div class="card">
      <div class="card-header">
        <h3>Đăng nhập</h3>
        <div class="d-flex justify-content-end social_icon">
          <span><i class="fab fa-facebook-square"></i></span>
          <span><i class="fab fa-google-plus-square"></i></span>
          <span><i class="fab fa-twitter-square"></i></span>
        </div>
        <p style="color: red">
          <%=request.getAttribute("errMess")!=null?request.getAttribute("errMess"):"" %>
        </p>
      </div>
      <div class="card-body">
        <form action="login" method="get">

          <div class="input-group form-group">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-user"></i></span>
            </div>
            <input type="text" class="form-control" placeholder="Tên đăng nhập" name="username" id="username"
                   value="<%=request.getParameter("username")==null?"":request.getParameter("username")%>">

          </div>
          <div class="input-group form-group">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-key"></i></span>
            </div>
            <input type="password" class="form-control" placeholder="Mật khẩu" name="pass" id="pass">
          </div>
          <div class="row align-items-center remember">
            <input type="checkbox">Nhớ mật khẩu
          </div>
          <div class="form-group">
            <input type="submit" value="Login" class="btn float-right login_btn" onclick="validate(this.form)">
          </div>
        </form>
      </div>
      <div class="card-footer">
        <div class="d-flex justify-content-center links">
          Không có tài khoản?<a href="signup.jsp">Đăng kí</a>
        </div>
        <div class="d-flex justify-content-center">
          <a href="forgetpw.jsp">Quên mật khẩu?</a>
        </div>
      </div>
    </div>
  </div>
</div>
<script>
  function validate(form) {
    var u = document.getElementById("username").value;
    var p = document.getElementById("pass").value;

    if(u== "") {
      alert("Vui lòng nhập tên!");
      return false;
    }
    if(p == "") {
      alert("Vui lòng nhập mật khẩu!");
      return false;
    }
  }
</script>
</body>
</html>

