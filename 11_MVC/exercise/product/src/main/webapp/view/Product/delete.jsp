<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 7/30/2022
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/Product">quay lai trang hien thi </a>
<form action="/Product?action=delete" method="post">
    <p> nhap ma san pham muon xoa  </p>
    <input type="text" name="code">
    <p><input type="submit" value="enter"></p>
</form>
<c:if test="${mess!= null}">
    <p>${mess}</p>
</c:if><c:if test="${send!= null}">
    <p>${send}</p>
</c:if>
</body>
</html>
