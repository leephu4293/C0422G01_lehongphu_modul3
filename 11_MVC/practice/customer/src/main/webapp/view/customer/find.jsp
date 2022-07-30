<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 7/30/2022
  Time: 8:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post">
  <p> nhap id kh muon tim  </p>
  <input type="text" name="id" >
    <input type="submit" value="submit">
</form>
<c:if test="${mess!= null}">
    <p> ${mess}</p>
</c:if>
<table border="2">
    <tr>
        <th>ID </th>
        <th>NAME </th>
        <th> EMAIL </th>
        <th> ADRESS </th>
    </tr>
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.email}</td>
            <td>${customer.add}</td>
        </tr>
</table>
<a href="/Customer"></a>
</body>
</html>
