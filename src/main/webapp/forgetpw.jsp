
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quên mật khẩu</title>
    <link href="css/bootstrap1.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>

        @import url('https://fonts.googleapis.com/css?family=Numans');

        html, body{
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
            height: 370px;
            margin-top: auto;
            margin-bottom: auto;
            width: 400px;
            background-color: rgb(92, 73, 57) !important;
        }

        .social_icon span{
            font-size: 60px;
            margin-left: 10px;
            color: #e29d04;
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
            background-color: #e29d04;
            color: black;
            border:0 !important;
        }

        input:focus{
            outline: 0  !important;
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
            color: black;
            background-color: #e29d04;
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
<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header" style="text-align: center;color:white;">
                <i class="fa fa-lock" style="font-size: 80px;margin-bottom: 20px;"></i><br/>
                <h1>Quên mật khẩu?</h1>
            </div>
            <form action="/sendMails" method="get" class="card-body">
                <div class="input-group form-group" style="margin: auto;font-size: 16px;color: white;">
                    <span style="text-align: center;margin: auto;margin-bottom: 10px;">Đi đến email để lấy lại mật khẩu mới!</span>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                    </div>
                    <input type="email" class="form-control" name="mail" placeholder="Nhập email (abc@gmail.com)">
                </div>
                <div class="input-group form-group" style="margin-top: 20px;">
                    <button style="border-radius: 10%;background-color: #e29d04;margin: auto;width: 100px;height: 50px;">Gửi</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
