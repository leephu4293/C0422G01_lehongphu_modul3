<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/10/2022
  Time: 11:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/DataTables-1.12.1/css/dataTables.bootstrap5.min.css">
<html>
<head>
    <title>Title</title>
</head>
<body>
   <div class="row">
       <div class="col-lg-2"></div>
       <div class="col-lg-8">
           <h5 class="text-lg-center">DANH SACH BAI HOC</h5>
           <table class="table table-hover" id="testTable">
               <thead>
               <tr>
                    <th>STT</th>
                   <th>tieu de</th>
                   <th> loai bai </th>
                   <th> do kho </th>
                   <th>modul</th>
                   <th> link bai </th>
                   <th>ACTION</th>
                   <th>ACTION</th>

               </tr>
               </thead>
               <tbody>
               <c:forEach var="list" items="${list}" varStatus="STT">
                   <tr>

                       <td>${list.idLesson}</td>
                   <td>${list.header}</td>
                   <td>${list.typeLesson}</td>
                   <td>${list.hardLevel}</td>
                   <td>${list.modul}</td>
                   <td>${list.link}</td>
                   <td><a class="btn btn-primary"  > SUA </a></td>
                   <td><a class="btn btn-primary" href="/view?action=delete&id=${list.idLesson}"> XOA </a></td>
                    </tr>
               </c:forEach>
               </tbody>
           </table>
       </div>
       <div class="col-lg-2"></div>
   </div>



   <!-- Button trigger modal -->
<%--   <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">--%>
<%--       Launch demo modal--%>
<%--   </button>--%>

<%--   <!-- Modal -->--%>
<%--   <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
<%--       <div class="modal-dialog">--%>
<%--           <div class="modal-content">--%>
<%--               <div class="modal-header">--%>
<%--                   <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>--%>
<%--                   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--               </div>--%>
<%--               <div class="modal-body">--%>
<%--                   ...--%>
<%--               </div>--%>
<%--               <div class="modal-footer">--%>
<%--                   <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>--%>
<%--                   <button type="button" class="btn btn-primary">Save changes</button>--%>
<%--               </div>--%>
<%--           </div>--%>
<%--       </div>--%>
<%--   </div>--%>

   <script src="/bootstrap-5.0.2-dist/jquery-3.6.0.min.js"></script>
   <script src="/DataTables-1.12.1/js/jquery.dataTables.min.js"></script>
   <script src="/DataTables-1.12.1/js/dataTables.bootstrap5.min.js"></script>
   <script src="/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $('#testTable').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 2
        })
    })
</script>
</body>
</html>
