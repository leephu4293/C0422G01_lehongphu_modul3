<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/5/2022
  Time: 10:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<body>

<h1 class="text-lg-center"> SUA DICH VU  </h1>

<div class="row">
    <div class="col-lg-3"></div>
    <div class="col-lg-6 " >
        <form class="text-dark bg-light" style="box-shadow: 10px 10px 10px 10px black; border-radius: 10px">

            <div class="css">

                <label>  chon loai muon them </label>
                <select  onchange="addNew(this.value)">
                    <option value="room">Room</option>
                    <option value="villa">Villa</option>
                    <option value="house">House</option>
                </select>
            </div>

            <div  class="css">
                <label>Ten Dich Vu</label>
                <input type="text" class="form-control rounded-3 w-75" placeholder="Ten Dich Vu" >
            </div>

            <div  class="css">
                <label>Dien Tich Su Dung</label>
                <input type="text" class="form-control rounded-3 w-75" placeholder="Dien Tich Su Dung" >
            </div>

            <div  class="css">
                <label>Chi Phi</label>
                <input type="text" class="form-control rounded-3 w-75" placeholder="Chi Phi" >
            </div>

            <div  class="css">
                <label>So Nguoi Toi Da</label>
                <input type="text" class="form-control rounded-3 w-75" placeholder=" So Nguoi Toi Da" >
            </div>

            <div  class="css" >
                <label>Kieu Thue</label>
                <input type="text" class="form-control rounded-3 w-75"  placeholder="Kieu Thue">
            </div>

            <div  class="css" id = "s1" style="display: none">
                <label>Tieu chuan Phong</label>
                <input type="text" class="form-control rounded-3 w-75"  placeholder="Tieu chuan Phong">
            </div>

            <div  class="css" id="s2" style="display: none">
                <label>Tien Nghi Khac</label>
                <input type="text" class="form-control rounded-3 w-75"  placeholder="Tien Nghi Khac">
            </div>

            <div  class="css" id="s3" style="display: none">
                <label>Dien Tich Ho Boi</label>
                <input type="text" class="form-control rounded-3 w-75"  placeholder="Dien Tich Ho Boi">
            </div>

            <div  class="css" id="s4" style="display: none">
                <label>So Tang</label>
                <input type="text" class="form-control rounded-3 w-75"  placeholder="So Tang">
            </div>

            <div  class="css" id="s5" style="display: block">
                <label>Dich vu mien phi di kem </label>
                <input type="text" class="form-control rounded-3 w-75"  placeholder="So Tang">
            </div>
            <p></p>
            <button type="submit" class="btn btn-primary text-lg-center css">Submit</button>

        </form>
    </div>

    <div class="col-lg-3 "></div>
</div>

<script src="/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
</html>
