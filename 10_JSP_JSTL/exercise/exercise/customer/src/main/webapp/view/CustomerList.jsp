<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 7/28/2022
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="2">
    <tr>
        <th colspan="4">DANH SACH KHANH HANG</th>
    </tr>
    <tr>
        <th> TEN </th>
        <th> NGAY SINH</th>
        <th> DIA CHI </th>
        <th> ANH  </th>
    </tr>
    <tr>
        <c:forEach var="customer" items="${customerList}" varStatus="status">
    <tr>

        <td> ${customer.name} </td>
        <td> ${customer.dayOfBirth}</td>
        <td> ${customer.address} </td>
        <td><img  src="${customer.imagi}" style="height: 80px; width: 60px"></td>
    </tr>
    </c:forEach>
    </tr>
</table>
</body>
</html>
