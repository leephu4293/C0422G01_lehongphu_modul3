<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/1/2022
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/user">quay lai list </a>
<form action="/user?action=add" method="post">
    <h1>nhap ten  </h1>
    <input type="text" name="name">
    <h1>nhap email  </h1>
    <input type="text" name="email">
    <h1>nhap quoc gia </h1>
    <input type="text" name="country">
    <input type="submit" value="enter">
    <c:if test="${mess != null}">
        <p>${mess}</p>
    </c:if>

</form>
</body>
</html>
