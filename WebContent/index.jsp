<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>输入日期</title>
</head>
<body>

欢迎您，${sessionScope.c.name}
<br>
<br>

请输入日期
<form action="SearchServlet" method="post">
checkin：
<input type="text"  name="checkin" size="5"/>
<br>
checkout：
<input type="text"  name="checkout" size="5"/>
<br>
<input type="submit"  value="提交"/>
</form>

<br>
<hr/>
<br>

<a href="/HotelManagementSystem/alter.jsp"><input type="button"  value="修改个人信息"/></a>
<input type="button"  value="查看个人订单"/>
<input type="button"  value="订单评价打分（可在查看订单后实现）"/>

</body>
</html>