<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/5/2022
  Time: 4:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<body>

<%@include file="/view/include/header.jsp"%>
<h2 class="text-lg-center"> DANH SACH KHACH HANG </h2>

        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-10">

                <table class="table table-striped">
                    <tr>
                        <th>ID </th>
                        <th> LOAI KHACH </th>
                        <th>HO TEN </th>
                        <th>NGAY SINH</th>
                        <th>GIOI TINH</th>
                        <th>SO CMND</th>
                        <th>DIEN THOAI </th>
                         <th>EMAIL  </th>
                        <th> DIA CHI   </th>
                    </tr>

                    <tr>
                    <c:forEach var="customer" items="${ListCustomer}">

                        <tr>
                            <td>${customer.id}</td>

                    <c:forEach var="type" items="${ListType}">
                       <c:if test="${customer.customerType == type.idType}">
                                <td>${type.nameType}</td>
                       </c:if>
                    </c:forEach>

                            <td>${customer.name}</td>
                            <td>${customer.dayOfBirth}</td>
                    <c:if test="${customer.gender == true}">
                          <td>Nam</td>
                    </c:if>
                        <c:if test="${customer.gender == false}">
                            <td>Nu</td>
                        </c:if>

                            <td>${customer.iden}</td>
                            <td>${customer.phone}</td>
                            <td>${customer.email}</td>
                            <td>${customer.address}</td>

                        </tr>

                    </c:forEach>
                    </tr>

                </table>
            </div>
            <div class="col-lg-1"></div>
        </div>

</body>
<script src="/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</html>
