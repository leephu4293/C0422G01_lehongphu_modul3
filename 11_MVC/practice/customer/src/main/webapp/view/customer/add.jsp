<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 7/30/2022
  Time: 7:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/Customer"> quay lai danh sach </a>
<form method="post">
    <p> nhap id </p>
    <input type="text" name="id" >
    <p> nhap ten </p>
    <input type="text" name="name" >
    <p> nhap email</p>
    <input type="text" name="email" >
    <p> nhap dia chi </p>
    <input type="text" name="adress" >
    <p> <input type="submit" value="submit" > </p>
    <c:if test="${mess!= null}">
        <p>${mess}</p>
    </c:if>

</form>
</body>
</html>
