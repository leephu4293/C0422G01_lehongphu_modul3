<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 7/28/2022
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/CaculatorServlet" method="post">
    <h1>Simple Calculator</h1>
            <td>First operand: </td>
            <td><input name="first" type="text"/></td>
          <tr>
            <td>Operator: </td>
            <td>
              <select name="operator">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
              </select>
            </td>
          </tr>
          <tr>
            <td>Second operand: </td>
            <td><input name="second" type="text"/></td>
          </tr>
          <tr>
            <td></td>
            <td><input type="submit"/></td>
          </tr>
        </table>
      </fieldset>
  </form>
  </body>
</html>
