<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订房界面（点击订房后的页面）</title>
</head>
<body>


<br>
<br>
<br>

<table border="2">
    <tr>
        <td>大床房：</td><td>${sessionScope.num_big}</td>
        <td><a href="BookServlet?action=big"><input type="button"  name="big" value="订房"></a></td>
    </tr>
    <tr>
        <td>标准间：</td><td>${sessionScope.num_med}</td>
        <td><a href="BookServlet?action=med"><input type="button"  name="med" value="订房"></a></td>
    </tr>
    <tr>
        <td>单人间：</td><td>${sessionScope.num_sma}</td>
        <td><a href="BookServlet?action=sma"><input type="button"  name="sma" value="订房"></a></td>
    </tr>
</table>

<br>
<br>
<br>

<p>room数据库遍历</p>
<br>
<p>大床房list：</p>
<table border="2" >
	<tr>
        <td>room_id</td><td>roomtype</td><td>orientation</td><td>floor</td><td>price</td>
    </tr>
<c:forEach var="r"  items="${sessionScope.list_big}">
    <tr>
        <td>${r.room_id}</td><td>${r.roomtype}</td><td>${r.orientation}</td><td>${r.floor}</td><td>${r.price}</td>
    </tr>
</c:forEach>
</table>

<br>
<p>标准间list：</p>
<table border="2" >
	<tr>
        <td>room_id</td><td>roomtype</td><td>orientation</td><td>floor</td><td>price</td>
    </tr>
<c:forEach var="z"  items="${sessionScope.list_med}">
    <tr>
        <td>${z.room_id}</td><td>${z.roomtype}</td><td>${z.orientation}</td><td>${z.floor}</td><td>${z.price}</td>
    </tr>
</c:forEach>
</table>

<br>
<p>单人间list：</p>
<table border="2" >
	<tr>
        <td>room_id</td><td>roomtype</td><td>orientation</td><td>floor</td><td>price</td>
    </tr>
<c:forEach var="x"  items="${sessionScope.list_sma}">
    <tr>
        <td>${x.room_id}</td><td>${x.roomtype}</td><td>${x.orientation}</td><td>${x.floor}</td><td>${x.price}</td>
    </tr>
</c:forEach>
</table>



</body>
</html>