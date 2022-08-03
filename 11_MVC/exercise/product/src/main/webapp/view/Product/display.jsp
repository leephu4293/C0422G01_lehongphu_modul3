<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 7/29/2022
  Time: 4:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1> thong tin san pham </h1>
<p><a href="/Product?action=addNew"> them moi san pham </a></p>
<p><a href="/Product?action=selection"> hien thi chi tiet san pham </a></p>
<p><a href="/Product?action=edit"> update  san pham </a></p>
<p><a href="/Product?action=delete"> nhap ma san pham muon xoa </a></p>


<form  action="/Product?action=search" method="post">
    <p> nhap ten san pham muon tim </p>
    <input type="text" name="name">
    <p><input type="submit" value="enter"></p>
</form>

<c:if test="${mess!= null}">
    <p>${mess}</p>
</c:if>

<c:if test="${list != null }">
    <table border="2">
        <tr>
            <th> ma san pham</th>
            <th> ten san pham</th>
            <th> so luong</th>
            <th> gia san pham</th>
            <th> trang thai mo ta</th>
        </tr>
        <c:forEach var="product" items="${list}">
            <tr>
                <td>${product.code}</td>
                <td>${product.name}</td>
                <td>${product.number}</td>
                <td>${product.price}</td>
                <td>${product.explan}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<c:if test="${list == null}">
<table border="2">
    <tr>
        <th> ma san pham</th>
        <th> ten san pham</th>
        <th> so luong</th>
        <th> gia san pham</th>
        <th> trang thai mo ta</th>
        <th> sua thong tin </th>

    </tr>
    <tr>
        <c:forEach var="product" items="${product}">
    <tr>
        <td>${product.code}</td>
        <td>${product.name}</td>
        <td>${product.number}</td>
        <td>${product.price}</td>
        <td>${product.explan}</td>
        <td><a href="view/Product/edit.jsp"> edit</a></td>
    </tr>
    </c:forEach>
    </tr>
</table>
</c:if>
</body>
</html>
