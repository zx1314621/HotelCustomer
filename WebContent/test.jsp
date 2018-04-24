<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
          

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>顾客信息</legend>
</fieldset>
<form action=DeleteMessageManager method="post">
  <div class="layui-form-item">
   <div class="layui-inline">
      <label class="layui-form-label">用户账号</label>
      <div class="layui-input-inline">
        <input type="text" name="customer_id" lay-verify="required" autocomplete="off" value="${customer.getCustomer_id() }" class="layui-input" readonly>
      </div>
    </div>
  </div>
  <div class="layui-form-item">
   <div class="layui-inline">
      <label class="layui-form-label">用户姓名</label>
      <div class="layui-input-inline">
        <input type="text" name="name" lay-verify="required" autocomplete="off" value="${customer.getName() }" class="layui-input" readonly>
        
      </div>
    </div>
  </div>
  <div class="layui-form-item">
   <div class="layui-inline">
      <label class="layui-form-label">评分</label>
      <c:forEach begin='1' end='5' >
              <a class="layui-icon" style="font-size: 26px; color: #FFFF00;">&#xe658;</a> 
        </c:forEach> 
    </div>
  </div>
   <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">评价</label>
    <div class="layui-input-block">
      <textarea  name="message" class="layui-textarea" readonly>${MessageList.get(check).getMessage()}</textarea>
    </div>
  </div>
   <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">评价</label>
    <div class="layui-input-block">
     <button class="layui-btn layui-btn-danger layui-btn-mini news_del" name="delete"  type="submit"  value="${check}"><i class="layui-icon">&#xe640;</i> 删除</button>
    </div>
  </div>



</body>
</html>