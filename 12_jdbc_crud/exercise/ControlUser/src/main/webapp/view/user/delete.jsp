<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/1/2022
  Time: 10:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/user"> quay lia trang list </a>
<form action="/user?action=delete" method="post">
    <h1>nhap id </h1>
    <input type="text" name="id">
    <input type="submit" value="enter">
    <c:if test="${mess != null}">
        <p>${mess}</p>
    </c:if>
</form>
</body>
</html>
