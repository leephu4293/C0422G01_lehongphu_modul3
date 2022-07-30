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
 <p> nhap ma san pham muon tim </p>
 <form method="post">
<input type="text" name="code">
 <p><input type="submit" value="enter"></p>
 </form>
<p>ket qua </p>
     <c:if test="${mess != null}">
         <p>${mess}</p>
     </c:if>
 <table border="2">
     <tr>
         <th> ma san pham</th>
         <th> ten san pham</th>
         <th> so luong</th>
         <th> gia san pham</th>
         <th> trang thai mo ta</th>
     </tr>
     <tr>
         <td>${product.code}</td>
         <td>${product.name}</td>
         <td>${product.number}</td>
         <td>${product.price}</td>
         <td>${product.explan}</td>
     </tr>
 </table>
<a href="/Product"> quay ve trang hien thi </a>
</body>
</html>
