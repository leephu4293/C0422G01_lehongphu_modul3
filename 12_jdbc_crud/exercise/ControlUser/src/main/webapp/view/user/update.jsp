<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/1/2022
  Time: 8:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/user">quay lai trang list </a>

<form action="/user?action=update" method="post">
    <h1>nhap id muon sua </h1>
    <input type="text" name="id" value="${list.id}">
    <h1>  nhap ten muon sua </h1>
    <input type="text" name="name" value="${list.name}">

    <h1>nhap email muon sua </h1>
    <input type="text" name="email">

    <h1>nhap quoc gia  muon sua </h1>
    <input type="text" name="country">
    <input type="submit" >

    <c:if test="${mess != null}">
        <p>${mess}</p>
    </c:if>
</form>
</body>

</html>
