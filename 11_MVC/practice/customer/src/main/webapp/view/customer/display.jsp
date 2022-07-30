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

<h1>DANH SACH KHACH HANG</h1>
<p> <a href="/Customer?action=add"> them moi khach hang </a></p>
<p> <a href="/Customer?action=find"> tim khach hang </a></p>
<table border="2">
    <tr>
        <th>ID </th>
        <th>NAME </th>
        <th> EMAIL </th>
        <th> ADRESS </th>
    </tr>
    <c:forEach var="customer" items="${list}">
         <tr>
             <td>${customer.id}</td>
             <td>${customer.name}</td>
             <td>${customer.email}</td>
             <td>${customer.add}</td>
         </tr>
    </c:forEach>
</table>
</body>
</html>
