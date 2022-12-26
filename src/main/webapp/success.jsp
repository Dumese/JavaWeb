<%--
  Created by IntelliJ IDEA.
  User: Wayne
  Date: 2022/12/6
  Time: 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
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
        .username{
            padding-top: 10px;
            padding-left: 10px;
            font-size: 10px;
            color: blue;
        }
        .container {
            height: 100%;
            background-image: linear-gradient(to right, #C9D6FF, #E2E2E2);
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
            margin: 0;
        }
        .header {
            font-size: 38px;
            text-align: center;
            line-height: 200px;
        }
        a{
            text-align: center;
            text-decoration: none;
        }
        .btn{
            text-align: center;
        }
    </style>
</head>
<body>

    <div class="container">

        <p class="username">${user.name},欢迎。</p>

        <div class="login-wrapper">
            <div class="header">登录成功</div>
            <div class="btn">
                <a href="IQtest.jsp">国际标准智商测试题</a>
            </div>

            <div class="btn">
                <a href="calculator.jsp">计算器</a>
            </div>
        </div>
    </div>
</body>
</html>
