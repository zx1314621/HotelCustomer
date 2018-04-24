<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="layui/css/layui.css"  media="all">
<title>评价订单</title>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>评价订单</legend>
</fieldset>

<div class="layui-form-item"  style="width:200px">
    <label class="layui-form-label">订单编号</label>
    <div class="layui-input-block">
      <input type="text" name="oid"  value="${sessionScope.order_id }"class="layui-input" readonly>
    </div>
</div>

<form action="CommentServlet" method="post"  class="layui-form" >

<div class="layui-inline" >
    <label class="layui-form-label" >评星</label>
    <div class="layui-input-block">
      <select name="star"  >
        <option value=""></option>
        <option value="1">一星</option>
        <option value="2" >二星</option>
        <option value="3">三星</option>
        <option value="4">四星</option>
        <option value="5" selected="">五星</option>
      </select>
    </div>
</div>

<br>
<br>
<br>

<div class="layui-form-item" >
<div class="layui-inline" >
<label class="layui-form-label" >您的评价</label>
</div>
<div class="layui-inline" >
<textarea name="comment"  class="layui-textarea"  lay-verify="required"  rows="10" cols="30"  placeholder="请输入您的评价"></textarea>
</div>
</div>

<div class="layui-form-item"  >
							<div class="layui-input-block">
								<button class="layui-btn" lay-submit="" >提交</button>
								<button type="reset" class="layui-btn layui-btn-primary">重置</button>
							</div>
</div>

</form>





<script src="layui/layui.js" charset="utf-8"></script>
<script>
layui.use('form', function(){
  var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功
  
  //……
  
  //但是，如果你的HTML是动态生成的，自动渲染就会失效
  //因此你需要在相应的地方，执行下述方法来手动渲染，跟这类似的还有 element.init();
  form.render();
});  
</script>

</body>
</html>