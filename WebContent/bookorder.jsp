<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
<title>预定订单界面</title>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>请确认您的订单</legend>
  
  <form class="layui-form" action="">
  
  <div class="layui-form-item" style="width:900px">
    <label class="layui-form-label">订单号</label>
    <div class="layui-input-block">
      <input type="text" name="order_id"  autocomplete="off" value="${sessionScope.o.order_id} " class="layui-input" readonly>
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-inline">
    <label class="layui-form-label">姓名</label>
    <div class="layui-input-block"  style="width:200px">
      <input type="text" name="username"  autocomplete="off" value="${sessionScope.o.customerName} " class="layui-input"  readonly>
    </div>
    </div>
    
    <div class="layui-inline">
    <label class="layui-form-label">身份证</label>
    <div class="layui-input-block"  style="width:200px">
      <input type="text" name="idcard"  autocomplete="off" value="${sessionScope.o.idcard} " class="layui-input"  readonly>
    </div>
    </div>
  </div>
  
<div class="layui-form-item">
	<div class="layui-inline">
		<label class="layui-form-label">入住时间</label>
		<div class="layui-input-block"  style="width:100px">
			<input type="text" name="checkin"  autocomplete="off" value="${sessionScope.o.checkin} " class="layui-input"  readonly>
		</div>
	</div>
	
	<div class="layui-inline">
		<label class="layui-form-label">离店时间</label>
		<div class="layui-input-block"  style="width:100px">
			<input type="text" name="checkout"  autocomplete="off" value="${sessionScope.o.checkout} " class="layui-input"  readonly>
		</div>
	</div>
	
	<div class="layui-inline">
		<label class="layui-form-label">房间号</label>
		<div class="layui-input-block"  style="width:100px">
			<input type="text" name="room_id"  autocomplete="off" value="${sessionScope.o.room_id} " class="layui-input"  readonly>
		</div>
	</div>
	
	<div class="layui-inline">
		<label class="layui-form-label">房间类型</label>
		<div class="layui-input-block"  style="width:100px">
			<input type="text" name="roomtype"  autocomplete="off" value="${sessionScope.o.roomtype} " class="layui-input"  readonly>
		</div>
	</div>
</div>

<div class="layui-form-item">
<div class="layui-inline" style="width:440px">
    <label class="layui-form-label">房间朝向</label>
    <div class="layui-input-block" >
      <select name="orientation"  id="o">
        <option value=""></option>
        <option value="0"selected="">北</option>
        <option value="1" >南</option>
        <option value="2">东</option>
        <option value="3">西</option>
      </select>
    </div>
</div>
    
<div class="layui-inline" style="width:440px">
    <label class="layui-form-label">房间楼层</label>
    <div class="layui-input-block">
      <select name="floor"  id="f">
        <option value=""></option>
        <option value="0"selected="">1st</option>
        <option value="1" >2nd</option>
        <option value="2">3rd</option>
        <option value="3">4th</option>
      </select>
    </div>
</div>
</div>



<div class="layui-form-item" style="width:900px">
    <label class="layui-form-label">您的需求</label>
    <div class="layui-input-block">
      <input type="text" name="requirement"  autocomplete="off"  class="layui-input"  id="r" placeholder="请输入您对于房间的额外需求，我们据此为您提供最佳服务">
    </div>
  </div>

</form>
  
</fieldset>





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