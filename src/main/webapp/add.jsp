<%--
  Created by IntelliJ IDEA.
  User: Wayne
  Date: 2022/12/26
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <style>
        *{
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }
        html {
            height: 100%;
        }
        body {
            height: 100%;
            background-image: linear-gradient(to right,#ACB6E5, #74EBD5);
        }
        .banner{
            height: 20%;
        }
        .main{
            width: 900px;
            height: 500px;
            border-radius: 10px;
            background-color: white;
            margin: auto;
        }
        .textView{
            margin: auto;
            padding-top: 30px;
            text-align: center;
        }
        .content{
            width: 450px;
            margin: auto;
        }
        .rg_form{
            margin: auto;
            padding-top: 50px;
        }
        .td_left{
            width: 100px;
            text-align: right;
            height: 45px;
            color: #a6a6a6;
        }
        .td_right{
            padding-left: 50px;
            color: #a6a6a6;
        }
        #username,#password,#name{
            width: 251px;
            height: 32px;
            border: 1px solid #a6a6a6;
            /* 设置边框圆角 */
            border-radius: 5px;
            padding-left: 10px;

        }
        #btn_sub{
            width: 100px;
            height: 40px;
            background-color: #ffd026;
            border: 1px solid #a6a6a6;
            border-radius: 10px;
            font-size: 18px;
        }
        .btn{
            margin: 30px auto;
            text-align: center;
        }
    </style></head>
<body>
<div class="banner">

</div>


<div class="main">
    <div class = "textView">
        <h1>新用户注册</h1>
        <h2>USER REGISTER</h2>
    </div>
    <div class = "content">
        <div class="rg_form">
            <form action="addServlet" method="post">
                <table >
                    <tr>
                        <td class="td_left"><label for="username"></label> 用户名</td>
                        <td class="td_right"><input type="text" name="username" id="username" placeholder="请输入用户名"></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="password"></label> 密码</td>
                        <td class="td_right"><input type="password" name="password" id="password" placeholder="请输入密码"></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="name"></label> 姓名</td>
                        <td class="td_right"><input type="text" name="name" id="name" placeholder="请输入姓名"></td>
                    </tr>
                </table>

                <div  class="btn"><input type="submit" value="注册" id="btn_sub"></div>

            </form>
        </div>
    </div>

</div>
</body>
</html>
