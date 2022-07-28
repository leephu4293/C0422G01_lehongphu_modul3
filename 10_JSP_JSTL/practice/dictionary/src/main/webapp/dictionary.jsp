<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 7/28/2022
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>



<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("search");
    PrintWriter px = response.getWriter();
    String result = dic.get(search);
    if (result != null) {
        px.println("Word: " + search);
        px.println("Result: " + result);
    } else {
        px.println("Not found");
    }


//    String str = "" ;
//    if (result != null) {
//        str+= "word :" + search + "result:" + result ;
//    } else {
//        str+= "not found";
//    }

%>

<%--<h1><%=str%></h1>--%>


</body>
</html>
