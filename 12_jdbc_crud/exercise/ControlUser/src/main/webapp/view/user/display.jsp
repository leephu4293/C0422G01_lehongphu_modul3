<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/1/2022
  Time: 8:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<p><a href="/user?action=update"> update theo id </a></p>
<p><a href="/user?action=add"> them moi  </a></p>
<p><a href="/user?action=delete"> xoa theo id   </a></p>
<p><a href="/user?action=sort"> danh sach xap xep theo ten </a></p>


<h1> nhap ten quoc gia  muon tim </h1>
<form  action="/user?action=search" method="post">
 <input type="text" name="country">
    <input type="submit" value="enter">
    <c:if test="${mess != null}">
        <p>${mess}</p>
    </c:if>
</form>


<c:if test="${listcountry != null}">

<h1>DANH SACH tim kiem </h1>

<table border="2">
    <tr>
        <th> id </th>
        <th> name </th>
        <th> email</th>
        <th> country </th>
    </tr>
    <tr>
        <c:forEach var="list" items="${listcountry}">
    <tr>
        <td> ${list.id}</td>
        <td>${list.name}</td>
        <td>${list.email}</td>
        <td>${list.country}</td>
    </tr>
    </c:forEach>
    </tr>

</table>
</c:if>


<c:if test="${listcountry == null}">
    <h1>DANH SACH USERS</h1>

<table border="2">
    <tr>
        <th> id </th>
        <th> name </th>
        <th> email</th>
        <th> country </th>
    </tr>
    <tr>
        <c:forEach var="list" items="${list}">
    <tr>
        <td> ${list.id}</td>
        <td>${list.name}</td>
        <td>${list.email}</td>
        <td>${list.country}</td>
    </tr>
    </c:forEach>
    </tr>
</table>

</c:if>


<h1>DANH SACH USERS SAP XEP</h1>

<table border="2">
    <tr>
        <th> id </th>
        <th> name </th>
        <th> email</th>
        <th> country </th>
    </tr>
    <tr>
        <c:forEach var="list" items="${sortlist}">
    <tr>
        <td>${list.id}</td>
        <td>${list.name}</td>
        <td>${list.email}</td>
        <td>${list.country}</td>
    </tr>
    </c:forEach>
    </tr>
</table>

</body>
</html>
