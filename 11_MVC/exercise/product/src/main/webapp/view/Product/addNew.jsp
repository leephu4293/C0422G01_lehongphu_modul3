<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 7/29/2022
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>THEM MOI SAN PHAM </h1>
<a href="/Product">Quay lai trang hien thi </a>
<c:if test="${mess!= null}">
    <p>${mess}</p>
</c:if>
<form action="/Product?action=addNew" method="post">
 <p> nhap ma san pham </p>
  <input type="text" name="code">
 <p> nhap ten san pham </p>
    <input type="text" name="name">
 <p>nhap so luong san pham </p>
    <input type="text" name="number">
    <p>nhap gia  san pham </p>
    <input type="text" name="price">
 <p>nhap trang thai  san pham </p>
    <input type="text" name="status">
    <p><input type="submit" value="enter"></p>
</form>
</body>
</html>
