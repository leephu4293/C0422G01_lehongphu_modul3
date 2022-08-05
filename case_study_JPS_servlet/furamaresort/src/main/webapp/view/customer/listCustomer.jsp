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
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th scope="col">ID </th>
                        <th scope="col">HO TEN </th>
                        <th scope="col">NGAY SINH</th>
                        <th scope="col">GIOI TINH</th>
                        <th scope="col">SO CMND</th>
                        <th scope="col">DIEN THOAI </th>
                        <th scope="col">EMAIL  </th>
                        <th scope="col"> LOAI KHACH </th>
                        <th scope="col"> DIA CHI   </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Nguyễn Thị Hào</td>
                        <td>1970-11-07</td>
                        <td>nu</td>
                        <td>643431213</td>
                        <td>0945423362</td>
                        <td>thihao07@gmail.com</td>
                        <td>diamon</td>
                        <td>23 Nguyễn Hoàng, Đà Nẵng</td>

                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Phạm Xuân Diệu</td>
                        <td>1992-08-08</td>
                        <td>nam</td>
                        <td>865342123</td>
                        <td>0954333333</td>
                        <td>xuandieu92@gmail.com</td>
                        <td> platium</td>
                        <td>K77/22 Thái Phiên, Quảng Trị</td>

                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Dương Văn Quan</td>
                        <td>1981-07-08</td>
                        <td>nam</td>
                        <td>543432111</td>
                        <td>0490039241</td>
                        <td>duongquan@gmail.com</td>
                        <td>gold</td>
                        <td>K453/12 Lê Lợi, Đà Nẵng</td>

                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-1"></div>
        </div>

</body>
<script src="/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</html>
