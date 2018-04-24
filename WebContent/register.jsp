<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="layui/css/layui.css"  media="all">
<title>顾客注册</title>
</head>
<body>

<br>

<form action="RegisterServlet" method="post">
<table>
<tr><td><label class="layui-form-label">账号：</label></td>
		<td><input class="layui-input"  type="text" name="id" /></td>
</tr>
<tr><td><label class="layui-form-label">密码：</label></td>
		<td><input class="layui-input"  type="text" name="password"/></td>
</tr>
<tr><td><label class="layui-form-label">身份证：</label></td>
		<td><input class="layui-input"  type="text" name="idcard"/></td>
</tr>
<tr><td><label class="layui-form-label">真实姓名：</label></td>
		<td><input class="layui-input"  type="text" name="name"/></td>
</tr>
</table>

<br>
<div class="layui-input-inline">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="layui-btn"  type="submit" value="注册" />
</div>
<div class="layui-input-inline">
<input class="layui-btn"  type="reset" value="重置" />
</div>
<div class="layui-input-inline">
<a href="customerlogin.jsp"><input class="layui-btn"  type="button" value="返回登录" /></a>
</div>

</form>

</body>
</html>