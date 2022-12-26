<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <style>
        * {
            margin: 0;
            padding: 0;
        }
        html {
            height: 100%;
        }
        body {
            height: 100%;
        }
        .container {
            height: 100%;
            background-image: linear-gradient(to right,#ACB6E5, #74EBD5);
        }
        .login-wrapper {
            background-color: white;
            width: 358px;
            height: 588px;
            border-radius: 15px;
            padding: 0 50px;
            position: relative;
            left: 50%;
            top: 50%;
            transform: translate(-50%,-50%);
        }
        .header {
            font-size: 38px;
            text-align: center;
            line-height: 200px;
        }
        .input-item {
            display: block;
            width: 100%;
            margin-bottom: 20px;
            border: 0;
            padding: 10px;
            border-bottom: 1px solid rgb(128,125,125);
            font-size: 15px;
            outline: none;
        }
        .input-item::placeholder {
            text-transform: uppercase;
        }
        .btn {
            border: none;
            text-align: center;
            border-radius: 8px;
            padding: 10px;
            width: 100%;
            margin-top: 40px;
            background-image: linear-gradient(to right,#a6c1ee, #fbc2eb);
            color: #fff;
        }
        .errorMessage{
            line-height: 88px;
            text-align: center;
            color: red;
            font-size: 18px;
        }
        .add{
            text-decoration: none;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="login-wrapper">
        <div class="header">登录界面</div>
        <div class="form-wrapper">
            <form action="indexServlet" method="post">
                <input type="text" name="username" placeholder="用户名" class="input-item">
                <input type="password" name="password" placeholder="密码" class="input-item">
                <input type="submit" name="submit" class="btn">
            </form>

            <div class="errorMessage">${msg}</div>
        </div>

        <div class="add">
            <a href="add.jsp">注册</a>
        </div>
    </div>
</div>
</body>
</html>