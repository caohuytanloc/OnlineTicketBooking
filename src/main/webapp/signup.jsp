<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng ký</title>
    <link href="css/bootstrap1.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <style>
        @import url('https://fonts.googleapis.com/css?family=Numans');

        html,
        body {
            background-image: url('images/backgroundlogin.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            height: 100%;
            font-family: Arial, Helvetica, sans-serif;
        }

        .container {
            height: 100%;
            align-content: center;
        }

        .card {
            height: 440px;
            margin-top: 100px;
            margin-bottom: auto;
            width: 400px;

            background-color: rgb(92, 73, 57) !important;
        }

        .social_icon span {
            font-size: 60px;
            margin-left: 10px;
            color: rgba(241, 239, 234, 0.95);
        }

        .social_icon span:hover {
            color: white;
            cursor: pointer;
        }

        .card-header h3 {
            color: white;
        }

        .social_icon {
            position: absolute;
            right: 20px;
            top: -45px;
        }

        .input-group-prepend span {
            width: 50px;
            background-color: #e20b04;
            color: black;
            border: 0 !important;
        }

        input:focus {
            outline: 0 !important;
            box-shadow: 0 0 0 0 !important;

        }

        .remember {
            color: white;
        }

        .remember input {
            width: 20px;
            height: 20px;
            margin-left: 15px;
            margin-right: 5px;
        }

        .login_btn {
            color: black;
            background-color: #e22504;
            width: 100px;
        }

        .login_btn:hover {
            color: black;
            background-color: white;
        }

        .links {
            color: white;
        }

        .links a {
            margin-left: 4px;
        }
    </style>
</head>

<body>
<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header" style="text-align: center;">
                <h3>Đăng ký</h3>
            </div>
            <div class="card-body">
                <p style="color: red">
                    <%=request.getAttribute("errMess")!=null?request.getAttribute("errMess"):"" %>
                </p>
                <form action="signup" method="get">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" class="form-control" placeholder="Tên đăng nhập" id="un"
                               name="username" value="<%=request.getAttribute("errMess")==null?"":request.getParameter("username")%>">

                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                        </div>
                        <input type="email" class="form-control" placeholder="Email" id="mail"name="mail"
                               value="<%=request.getParameter("mail")==null?"":request.getParameter("mail")%>">
                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-phone"></i></span>
                        </div>
                        <input type="text" class="form-control" placeholder="Số điện thoại" id="phone" name="phone"
                               value="<%=request.getParameter("phone")==null?"":request.getParameter("phone")%>">
                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" class="form-control" placeholder="Mật khẩu" id="pw" name="pass">
                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-lock"></i></span>
                        </div>
                        <input type="password" class="form-control" placeholder="Nhập lại mật khẩu" id="pwr" name="repass">
                    </div>
                    <div class="row align-items-center remember">
                    </div>
                    <div class="input-group form-group" style="margin-top: 10px;">
                        <button style="border-radius: 10%;background-color: #e21604;margin: auto;width: 150px;">Đăng
                            ký</button>
                    </div>
                </form>
            </div>
            <div class="card-footer">
            </div>
        </div>
    </div>
</div>
</body>
<%--<script>--%>
<%--    function validate(form) {--%>
<%--        var u = document.getElementById("un").value;--%>
<%--        var p = document.getElementById("pw").value;--%>
<%--        var pr = document.getElementById("pwr").value;--%>
<%--        var phone = document.getElementById("phone").value;--%>
<%--        var mail = document.getElementById("mail").value;--%>

<%--        if(u== "") {--%>
<%--            alert("Vui lòng nhập tên!");--%>
<%--            return false;--%>
<%--        }--%>
<%--        if(p == "") {--%>
<%--            alert("Vui lòng nhập mật khẩu!");--%>
<%--            return false;--%>
<%--        }--%>
<%--        if (pr!=p){--%>
<%--            alert("Vui lòng nhập lại mật khẩu");--%>
<%--            return false;--%>
<%--        }--%>
<%--        if (mail==""){--%>
<%--            return false;--%>
<%--            alert("Vui lòng nhập email");--%>
<%--        }--%>
<%--        if(u!=null && p!=null && pr!=null && mail!=null) {--%>
<%--            alert("Bạn đã đăng ký thành công");--%>
<%--            window.location.href='/template_web/index.html'--%>
<%--            return true;--%>
<%--        }else{--%>
<%--            alert("Mật khẩu sai hãy nhập lại mật khẩu");--%>
<%--        }--%>
<%--    }--%>
<%--</script>--%>
</html>
