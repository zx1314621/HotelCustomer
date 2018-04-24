<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="layui/css/layui.css"  media="all">
<title>顾客登录</title>
</head>
<body>

<form action="CustomerLoginServlet" method="post">
<br>
<table>
<tr><td><label class="layui-form-label">账号：</label></td>
		<td><input class="layui-input"  type="text" name="username" /></td>
</tr>
<tr><td><label class="layui-form-label">密码：</label></td>
		<td><input class="layui-input"  type="password" name="password"/></td>
</tr>
</table>

<br>
<div class="layui-input-inline">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="layui-btn"   type="submit" value="登录" />
</div>
<div class="layui-input-inline">
<input class="layui-btn"  type="reset" value="重置" />
</div>
<div class="layui-input-inline">
<a href="register.jsp">&nbsp;<input class="layui-btn"  type="button" value="注册" /></a>
</div>

</form>

</body>
</html>