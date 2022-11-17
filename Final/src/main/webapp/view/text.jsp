<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/10/2022
  Time: 11:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/bootstrap-5.0.2-dist/css/bootstrap.min.css">

<html>
<head>
    <title>Title</title>
    <style>
        .css{
            margin-left: 160px;
            border-radius: 10px;
        }
        body{
            background: #cff4fc;
        }
    </style>
</head>
<body>
 <div class="row">
     <div class="col-lg-2"></div>
     <div class="col-lg-8 "  style="margin-top: 100px" >
         <form class="text-dark bg-light justify-content-center align-items-lg-center w-75 css"
               style="box-shadow: 10px 10px black; border-radius: 10px; border: 10px" >

             <h5 class="text-lg-center"> THEM MOI BAI HOC  </h5>
             <div  class="css">
                 <label>TIEU DE </label>
                 <input type="text" class="form-control rounded-3 w-75"   placeholder="Ho Ten" ${customerVali.name} >

             </div>

             <div  class="css">
                 <label>LOAI BAI </label>
                 <input type="date" class="form-control rounded-3 w-75"  >
             </div>

             <div class="css">
                 <label>DO KHO</label>
                 <input type="text" class="form-control rounded-3 w-75"   >

             </div>

             <div  class="css" >
                 <label>So Dien Thoai</label>
                 <input type="text" class="form-control rounded-3 w-75" >
             </div>

             <div  class="css" >
                 <label>Email</label>
                 <input type="text" class="form-control rounded-3 w-75"  >

             </div>

             <div  class="css" id="s2">
                 <label> Dia Chi </label>
                 <input type="text" class="form-control rounded-3 w-75" >
             </div>
             <p></p>
             <button type="submit" class="btn btn-primary justify-content-center css">Submit</button>

         </form>
     </div>
     <div class="col-lg-2"></div>
 </div>

 <script src="/bootstrap-5.0.2-dist/jquery-3.6.0.min.js"></script>
 <script src="/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
</html>
