<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 7/27/2022
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/count" method="post">
   <p>  Product Description </p> <input type="text" name="product" placeholder=" Product Description">
   <p>  List Price          </p> <input type="text"  name="price" placeholder="List Price">
   <p>  Discount Percent </p>    <input type="text"  name="percent" placeholder="Discount Percent">
   <p> <input type="submit" name="result" value="money"> </p>
  </form>
  </body>
</html>
