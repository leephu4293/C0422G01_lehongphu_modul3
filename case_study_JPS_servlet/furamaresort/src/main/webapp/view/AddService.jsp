<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/4/2022
  Time: 10:50 PM
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
            margin-left: 80px;
            border-radius: 10px;
        }

        body{
              background-image: url("/picture/bgfu.jpg");
           }

    </style>
</head>
<body>

<h1 class="text-lg-center"> THEM DICH VU  </h1>

<div class="row container-fluid">
    <div class="col-lg-3"></div>
    <div class="col-lg-6 " >
        <form class="text-dark bg-light" style="box-shadow:  10px 10px 10px black; border-radius: 10px" action="/viewFacility?action=add" method="post">

            <div class="css">

                <label>  chon loai muon them </label>
                  <select  onchange="addNew(this.value)" name ="typecodeF">
                      <option value="0">Chon</option>
                      <option value="3">Room</option>
                      <option value="1">Villa</option>
                      <option value="2">House</option>
                  </select>
            </div>

            <div  class="css">
                <label>Ten Dich Vu</label>
                <input type="text" class="form-control rounded-3 w-75" name="name" placeholder="Ten Dich Vu" >
            </div>

            <div  class="css">
                <label>Dien Tich Su Dung</label>
                <input type="number" class="form-control rounded-3 w-75"  name="area" placeholder="Dien Tich Su Dung" >
            </div>

            <div  class="css">
                <label>Chi Phi</label>
                <input type="number" class="form-control rounded-3 w-75" name="cost"  placeholder="Chi Phi" >
            </div>

            <div  class="css">
                <label>So Nguoi Toi Da</label>
                <input type="number"  value=0 class="form-control rounded-3 w-75"  name="people" placeholder=" So Nguoi Toi Da" >
            </div>

            <div  class="css" >
                <label> Ma Kieu Thue</label>
                <input type="number" class="form-control rounded-3 w-75"  name="rent" placeholder="Kieu Thue">
            </div>

            <div  class="css" id = "s1" style="display: none">
                <label>Tieu chuan Phong</label>
                <input type="text"  value="nomal" class="form-control rounded-3 w-75" name="roomstandar" placeholder="Tieu chuan Phong">
            </div>

            <div  class="css" id="s2" style="display: none">
                <label>Tien Nghi Khac</label>
                <input type="text"  class="form-control rounded-3 w-75" name="anyelse" placeholder="Tien Nghi Khac">
            </div>

            <div  class="css" id="s3" style="display: none">
                <label>Dien Tich Ho Boi</label>
                <input type="number" value=0 class="form-control rounded-3 w-75" name="areapool" placeholder="Dien Tich Ho Boi">
            </div>

            <div  class="css" id="s4" style="display: none">
                <label>So Tang</label>
                <input type="number" value=0 class="form-control rounded-3 w-75" name="flood" placeholder="So Tang">
            </div>

                <div  class="css" id="s5" style="display: block">
                    <label>Dich vu mien phi di kem </label>
                    <input type="text" class="form-control rounded-3 w-75" name="freeservice" placeholder="So Tang">
                </div>
                 <p></p>
            <button type="submit" class="btn btn-primary text-lg-center css">Submit</button>

        </form>
    </div>

     <div class="col-lg-3 "></div>
</div>

<script src="/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
<script>
    function addNew(value) {

        switch (value){
            case "1":
                document.getElementById("s1").style.display = "block"
                document.getElementById("s2").style.display = "block"
                document.getElementById("s3").style.display = "block"
                document.getElementById("s4").style.display = "block"
                document.getElementById("s5").style.display = "none"
                break
            case "2":
                document.getElementById("s1").style.display = "block"
                document.getElementById("s2").style.display = "block"
                document.getElementById("s3").style.display = "none"
                document.getElementById("s4").style.display = "block"
                document.getElementById("s5").style.display = "none"
                break;
            case "3":
                document.getElementById("s1").style.display = "none"
                document.getElementById("s2").style.display = "none"
                document.getElementById("s3").style.display = "none"
                document.getElementById("s4").style.display = "none"
                document.getElementById("s5").style.display = "block"
                break;
        }
    }

</script>
</html>
