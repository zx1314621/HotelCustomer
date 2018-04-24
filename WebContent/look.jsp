<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="layui/css/layui.css"  media="all">
<title>您的评价</title>
</head>
<body>

<div class="layui-form-item"  style="width:300px">
    <label class="layui-form-label">订单编号</label>
    <div class="layui-input-block">
      <input type="text" name="oid"  value="${sessionScope.m.order_id }"class="layui-input" readonly>
    </div>
</div>

<div class="layui-form-item"  style="width:300px">
    <label class="layui-form-label">用户账号</label>
    <div class="layui-input-block">
      <input type="text" name="oid"  value="${sessionScope.m.customer_id }"class="layui-input" readonly>
    </div>
</div>

<div class="layui-form-item"  style="width:300px">
    <label class="layui-form-label">用户姓名</label>
    <div class="layui-input-block">
      <input type="text" name="oid"  value="${sessionScope.m.name }"class="layui-input" readonly>
    </div>
</div>

<div class="layui-form-item">
   <div class="layui-inline">
      <label class="layui-form-label">评分</label>
      <c:forEach begin='1' end='${sessionScope.m.level }' >
              <a class="layui-icon" style="font-size: 26px; color: #FFFF00;">&#xe658;</a> 
        </c:forEach> 
    </div>
  </div>
  
  <div class="layui-form-item" >
<div class="layui-inline" >
<label class="layui-form-label" >您的评价</label>
</div>
<div class="layui-inline" >
<textarea name="comment"  class="layui-textarea"    rows="10" cols="30"  readonly>${sessionScope.m.message }</textarea>
</div>
</div>

</body>
</html>