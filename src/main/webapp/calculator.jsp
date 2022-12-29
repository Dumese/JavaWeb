<%--
  Created by IntelliJ IDEA.
  User: Wayne
  Date: 2022/12/21
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>简易计算器</title>
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
            height: 10%;
            text-align: center;
        }
        .main{
            width: 400px;
            height: 300px;
            margin: 15px auto;
            position: relative;
        }
        .in{
            width: 100px;
            height: 30px;
        }
        #num1{
            position: absolute;
            top: 10px;
            left: 20px;
        }
        #num2{
            position: absolute;
            top: 10px;
            left: 210px;
        }
        .result{
            width: 400px;
            text-align: center;
            margin: auto;
            padding-top: 80px;
        }
    </style>
</head>

<body>

    <div class="banner">
        <h1 style="padding-top: 15px">计算器</h1>
    </div>

    <div class="main">
        <form action="calculator.jsp" method="post">

        <input type="text" placeholder="请输入数字" name="num1" id="num1" class="in">

        <select name="function" style="width: 50px; height: 30px; font-size: 18px; position: absolute; top: 10px; left: 140px">
            <option>+</option>
            <option>-</option>
            <option>*</option>
            <option>/</option>
        </select>

        <input type="text" placeholder="请输入数字" name="num2" id="num2" class="in">

        <button type="submit" style="width: 50px; height: 30px; font-size: 18px; position:absolute; top: 10px; left: 330px">=</button>

        </form>

        <%
            String num1 = request.getParameter("num1");
            String num2 = request.getParameter("num2");
            String function = request.getParameter("function");
            String message = "";

            double detail = 0.0;

            try{
                System.out.println("执行try语句");

                if(num1==null || num2==null)    throw new Exception("输入不能为空");

                double x = Double.parseDouble(num1);
                double y = Double.parseDouble(num2);

                if(function.equals("+")) detail = x + y;
                else if (function.equals("-")) {
                    detail = x - y;
                } else if (function.equals("*")) {
                    detail = x*y;
                } else if (function.equals("/")) {
                    detail = x/y;
                }
            }catch (ArithmeticException e){
                message = "输入不合法";
            }catch (Exception e){
                message = e.getMessage();
            }
        %>

        <div class="result">
            <p>结果是<%=detail%></p>
            <p><%=message%></p>
        </div>

    </div>



</body>
</html>

