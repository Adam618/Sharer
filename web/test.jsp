<%--
  Created by IntelliJ IDEA.
  User: 24429
  Date: 2019/5/28
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"--%>
<%--            crossorigin="anonymous"></script>--%>
<%--    <script--%>
<%--            src="https://cdn.bootcss.com/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"></script>--%>

</head>
<body>
<button class="btn-primary" id="login">登录</button>

<%--<img src="${initParam.path}yaoshui.jpg">--%>

</body>
<script>
    $('#login').click(function () {
        console.log($(this).text("haha"))
    })
</script>
</html>
