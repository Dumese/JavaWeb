<%--
  Created by IntelliJ IDEA.
  User: Wayne
  Date: 2022/12/6
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Eroor</title>
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
    </style>
</head>
<body>
    <jsp:include page="index.jsp"/>
    <%
        System.out.println("fail.jsp");
    %>
</body>

<script type="text/javascript">
    <%
    System.out.println("弹窗");
    %>
    alert("用户名或密码错误，请重新登录");
</script>

</html>
