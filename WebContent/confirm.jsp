<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="layui/css/layui.css"  media="all">
<title>确认需求</title>
</head>
<body>

<label class="layui-form-label"  style="width:140px">请确认您的需求</label>
<br>
<textarea name="requirement"  class="layui-textarea"  rows="10" cols="30" readonly>${sessionScope.all}</textarea>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="DoOrderServlet" class="layui-btn"  >确认无误</a>


</body>
</html>