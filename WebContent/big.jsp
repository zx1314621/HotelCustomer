<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix = "c"  uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import = "DAO.MessageDao ,
    javax.sql.DataSource ,
    java.util.ArrayList ,
    model.Message" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="layui/css/layui.css"  media="all">
<title>big</title>
</head>
<body>

<%
int i=1;
MessageDao md = new MessageDao( (DataSource)application.getAttribute("dataSource") );
ArrayList<Message> big = md.getMessageBy_roomtype("大床房");
request.setAttribute("big", big);
%>

<table class="layui-table">
	<thead>
		<tr>
			<th>编号</th>
			<th>房间</th>
			<th>星级</th>
			<th>评价</th>
		</tr>
	</thead>
<c:forEach var="b"  items="${requestScope.big}">	
	<tbody>
		<tr>
			<td><%out.println(i);%></td>
			<td>${b.room_id}</td>
			<td>${b.level}</td>
			<td>${b.message}</td>
			<%i++; %>
		</tr>
	</tbody>
</c:forEach>
</table>

</body>
</html>