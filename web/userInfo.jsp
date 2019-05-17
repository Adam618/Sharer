<%--
  Created by IntelliJ IDEA.
  User: 10254
  Date: 2019/5/8
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>UserInfo</title>
</head>
<body>
    <div align="center">
        <c:forEach items="${requestScope.userList}" var="item">
            用户ID：&nbsp;&nbsp;${item.uid}<br/>
            用户名：&nbsp;&nbsp;${item.uname}<br/>
            用户性别：&nbsp;&nbsp;${item.ugender}<br/>
            用户邮箱：&nbsp;&nbsp;${item.uemail}<br/>
            用户电话：&nbsp;&nbsp;${item.uphone}<br/>
            用户生日：&nbsp;&nbsp;${item.ubirth}<br/>
            用户图片：&nbsp;&nbsp;${item.uimg}<br/>
            用户状态：&nbsp;&nbsp;${item.ustatus}<br/>
            用户句子：&nbsp;&nbsp;${item.uwords}<br/>
            <br><br>
        </c:forEach>
    </div>
</body>
</html>
