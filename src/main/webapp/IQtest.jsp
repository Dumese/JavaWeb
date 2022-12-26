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
    <title>国际标准智商测试题</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        html {
            height: 100%;
        }
        body {
            height: 100%;
            background:#fcfaed ;
        }
        li{
            list-style: none;
        }
        .banner{
            width: 100%;
            height: 10%;
            background-color: rgba(0, 0, 0, 0);
        }
        .username{
            position: relative;
            top: 10px;
            left: 10px;
            font-size: 10px;
            color: blue;
        }
        .main{
            width: 100%;
            height: 90%;
        }
        .information{
            position: relative;
            height: 30px;
            width: 400px;
            margin: 30px auto;
        }
        .name{
            left: 50px;
            position: absolute;
            width: 124px;
            font-size: 14px;
        }
        .id{
            left: 200px;
            position: absolute;
            width: 124px;
            font-size: 14px;
        }
        .content{
            width: 800px;
            margin: 30px auto;
            padding-left: 300px;
        }
        li{
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <div class="banner">
        <p class="username">${user.name},欢迎。</p>
    </div>

    <div class="main">

        <form action="markServlet" method="post" name="detail">

        <h1 style="text-align: center;position: relative;top: 10px">国际标准智商测试题</h1>

        <div class="information">
            <span class="name">姓名: <input type="text" name="name" id="name" required="required" style="width: 86px"></span>
            <span class="id">学号: <input type="text" name="id" id="id" required="required" style="width: 86px"></span>
        </div>

        <div class="content">
            <ul>
                <span>一、单选题</span>
                <li>
                    <span>1.“海上升明月，天涯共此时”是谁的诗句？</span><br/>
                    <input type="radio" name="test1" id="test1_1" required="required" value="A"><label for="test1_1">A.王勃</label>
                    <input type="radio" name="test1" id="test1_2" required="required" value="B"><label for="test1_2">B.张九龄</label>
                    <input type="radio" name="test1" id="test1_3" required="required" value="C"><label for="test1_3">C.白居易</label>
                    <input type="radio" name="test1" id="test1_4" required="required" value="D"><label for="test1_4">D.杜甫</label>
                </li>

                <li>
                    <span>2.成语“沐浴栉风”源于哪个故事？（15分）</span><br/>
                    <input type="radio" name="test2" id="test2_1" required="required" value="A"><label for="test2_1">A.大禹治水</label>
                    <input type="radio" name="test2" id="test2_2" required="required" value="B"><label for="test2_2">B.苏武牧羊</label>
                    <input type="radio" name="test2" id="test2_3" required="required" value="C"><label for="test2_3">C.安史之乱</label>
                    <input type="radio" name="test2" id="test2_4" required="required" value="D"><label for="test2_4">D.赤壁之战</label>
                </li>
            </ul>

            <ul>
                <span>二、多选题</span>
                <li>
                    <span>3.古代五音包括？</span><br/>
                    <input type="checkbox" name="test3" id="test3_1" value="A"><label for="test3_1">A.宫</label>
                    <input type="checkbox" name="test3" id="test3_2" value="B"><label for="test3_2">B.商</label>
                    <input type="checkbox" name="test3" id="test3_3" value="C"><label for="test3_3">C.徽</label>
                    <input type="checkbox" name="test3" id="test3_4" value="D"><label for="test3_4">D.羽</label>
                </li>

                <li>
                    <span>4.世界三大短篇小说巨匠是？</span><br/>
                    <input type="checkbox" name="test4" id="test4_1" value="A"><label for="test4_1" value="A">A.马克•吐温（美国）</label>
                    <input type="checkbox" name="test4" id="test4_2" value="B"><label for="test4_2" value="B">B.契诃夫（俄国）</label>
                    <input type="checkbox" name="test4" id="test4_3" value="C"><label for="test4_3" value="C">C.莫泊桑（法国）</label>
                    <input type="checkbox" name="test4" id="test4_4" value="D"><label for="test4_4" value="D">D.欧•亨利（美国）</label>
                </li>
            </ul>

            <ul>
                <span>三、判断题</span>
                <li>
                    <span>5.古埃及的汉谟拉比法典是世界上现存的第一部比较完备的成文法典。</span><br/>
                    <input type="radio" name="test5" id="test5_1" required="required" value="对"><label for="test5_1">√</label>
                    <input type="radio" name="test5" id="test5_2" required="required" value="错"><label for="test5_2">×</label>
                </li>

                <li>
                    <span>6.我国第一部地理书是《禹贡》。</span><br/>
                    <input type="radio" name="test6" id="test6_1" required="required" value="对"><label for="test6_1">√</label>
                    <input type="radio" name="test6" id="test6_2" required="required" value="错"><label for="test6_2">×</label>
                </li>
            </ul>

            <input type="submit" style="margin: 15px 190px">



        </div>

        </form>

    </div>
</body>
</html>

