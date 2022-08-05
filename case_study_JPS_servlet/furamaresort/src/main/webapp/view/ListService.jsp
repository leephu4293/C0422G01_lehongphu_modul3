<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/4/2022
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/bootstrap-5.0.2-dist/css/bootstrap.min.css">
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h2 class="text-lg-center"> DANH SACH DICH VU </h2>
  <div class="row">
      <div class="col-lg-12">
  <table class="table table-hover">
      <thead>
      <tr>
          <th scope="col">MA DV</th>
          <th scope="col">TEN DICH VU</th>
          <th scope="col">DIEN TICH SU DUNG</th>
          <th scope="col">CHI PHI THUE</th>
          <th scope="col">SO NGUOI TOI DA </th>
          <th scope="col">KIEU THUE  </th>
          <th scope="col"> SUA </th>
          <th scope="col"> XOA  </th>
      </tr>
      </thead>
      <tbody>
      <tr>
          <th scope="row">1</th>
          <td>Villa</td>
          <td>120</td>
          <td>2000000</td>
          <td>15</td>
          <td>3day</td>
          <td><a class="btn btn-primary">SUA</a></td>
          <td><a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">XOA</a></td>

      </tr>
      <tr>
          <th scope="row">2</th>
          <td>Room</td>
          <td>100</td>
          <td>1500000</td>
          <td>20</td>
          <td>1day</td>
          <td><a class="btn btn-primary">SUA</a></td>
          <td><a class="btn btn-primary">XOA</a></td>

      </tr>
      <tr>
          <th scope="row">3</th>
          <td>House</td>
          <td>80</td>
          <td>1000000</td>
          <td>30</td>
          <td>18 Hour</td>
          <td><a class="btn btn-primary">SUA</a></td>
          <td><a class="btn btn-primary">XOA</a></td>

      </tr>
      </tbody>
  </table>
      </div>
  </div>




  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
          <div class="modal-content">
              <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                  ban co muon xoa khong
              </div>
              <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-primary">Save changes</button>
              </div>
          </div>
      </div>
  </div>
<script src="/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>

</body>
</html>
