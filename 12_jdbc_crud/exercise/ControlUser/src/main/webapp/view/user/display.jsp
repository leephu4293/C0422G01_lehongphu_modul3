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
    <link  rel="stylesheet" href="/bootstrap-5.0.2-dist/css/bootstrap.css">
    <script src="bootstrap-5.0.2-dist/jquery-3.6.0.min.js"></script>
    <script src="bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</head>
<body>

<%--<p><a href="/user?action=update"> update theo id </a></p>--%>
<%--<p><a href="/user?action=add"> them moi  </a></p>--%>
<%--<p><a href="/user?action=delete"> xoa theo id   </a></p>--%>
<p><a href="/user?action=sort"> danh sach xap xep theo ten </a></p>


<h1> nhap ten quoc gia  muon tim </h1>
<form  action="/user?action=search" method="post">
 <input required type="text" name="country">
    <input type="submit" value="enter">
    <c:if test="${mess != null}">
        <p>${mess}</p>
    </c:if> <c:if test="${messnull != null}">
        <p>${messnull}</p>
    </c:if>
</form>

    <h1>DANH SACH</h1>

<table class="table table-hover">
    <tr class="">
        <th class="text-danger"> id </th>
        <th> name </th>
        <th> email</th>
        <th> country </th>
        <th> sua theo id </th>
        <th> xoa </th>
    </tr>
    <tr>
        <c:forEach var="list" items="${list}">
    <tr>
        <td> ${list.id}</td>
        <td>${list.name}</td>
        <td>${list.email}</td>
        <td>${list.country}</td>
        <td> <a  class="btn btn-primary" href="/user?action=update"> update theo id </a></td>
        <td> <a  class="btn btn-primary" href="/user?action=delete"> xoa theo id </a></td>

    </tr>
    </c:forEach>
    </tr>
</table>

</body>
</html>
