<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Wayne
  Date: 2022/12/22
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>答题结果</title>
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
        .banner{
            width: 100%;
            height: 100px;
        }
        .username{
            position: relative;
            top: 10px;
            left: 10px;
            font-size: 10px;
            color: blue;
        }
        .content{
            width: 800px;
            margin: auto;
        }
    </style>
</head>

<body>
<div class="banner">
    <p class="username">${user.name},欢迎。</p>
</div>

<div class="content">
    <h1 style="text-align: center">答题结果</h1>

    <div style="margin-top: 15px; text-align: center">
        <span>姓名${detail['name']}</span>
        <span>学号${detail['id']}</span>
    </div>

    <div style="margin-top: 15px; margin-left: 300px">
        <p>第一题</p>
        <span>您的选择是${detail['test1']}</span>
        <span style="color: red">正确答案是:B</span>
        <p>第二题</p>
        <span>您的选择是${detail['test2']}</span>
        <span style="color: red">正确答案是:A</span>
        <p>第三题</p>
        <span>您的选择是${detail['test3']}</span>
        <span style="color: red">正确答案是:ABD</span>
        <p>第四题</p>
        <span>您的选择是${detail['test4']}</span>
        <span style="color: red">正确答案是:ABC</span>
        <p>第五题</p>
        <span>您的选择是${detail['test5']}</span>
        <span style="color: red">正确答案是:错</span>
        <p>第六题</p>
        <span>您的选择是${detail['test6']}</span>
        <span style="color: red">正确答案是:对</span>
    </div>

    <p style="font-size: 18px; margin-top: 20px; text-align: center">您的最终成绩为<p style="color: red; font-size: 24px; text-align: center">${detail['score']}</p></p>
</div>
</body>
</html>