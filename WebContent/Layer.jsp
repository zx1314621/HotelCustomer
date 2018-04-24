<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>预定单确认界面</title>
<link href="lxy/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="lxy/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="lxy/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Food shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='https://fonts.googleapis.com/css?family=Rokkitt:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lobster+Two:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="layui/css/layui.css"  media="all">
<!--//fonts-->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="layui/layui.all.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
					</script>
</head>
<body>

<% String flag = (String)session.getAttribute("flag");
if(flag!=null && flag.length()>0 && flag.equals("1"))
	
	{%>
 <script type="text/javascript">
                window.onload=function(){
                	 layer.open({
                	        type: 2,
                	        title:'确认需求',
                	        shade: [0],
                	        area: ['500px', '500px'],
                	        offset: 'auto', //右下角弹出
                	        shift: 2,
                	        content: ['confirm.jsp'], //iframe的url，no代表不显示滚动条
                	        end:function(){
                	        	location.href="MyOrderServlet";
                	        }

                	    });
                	 }
 </script>
<%  
session.setAttribute("flag",null);
	}
%>

<div class="adcenter"><script src="http://www.cssmoban.com/include/new/ggad2_728x90.js"></script></div>
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="logo">
				<h1><a href="Menu.jsp">Meteor Garden</a></h1>
			</div>
			<div class="header-top">
			</div>
			<!---->
			<div class="header-bottom">
				<div class="top-nav" >
					<span class="menu"> </span>
					<ul >
						<li ><a href="Main.jsp" >主页 </a><label>- </label> </li>
										<c:choose>
    										<c:when test="${sessionScope.c == null}">
						<li><a href="javascript:void(0);" id="func11" onclick="func11();">登录</a><label>- </label></li>
						<li><a href="javascript:void(0);" id="func12" onclick="func12();">注册</a></li>
											</c:when>
											<c:otherwise>
						<li><a href="alter.jsp" >修改个人信息</a><label>- </label></li>
						<li><a href="MyOrderServlet" >查看个人订单</a></li>
						<li><p style="font-size:150%;font-family:微软雅黑;color:#CAFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎您，${sessionScope.c.name}&nbsp;&nbsp;&nbsp;</p></li>
						<li><label>- </label><a href="javascript:void(0);" id="quit" onclick="quit();">注销</a></li>
											</c:otherwise>
										</c:choose>
					</ul>
					<!--script-->
<script>
function quit() {
    //iframe窗
    layer.open({
        type: 2,
        title:'注销',
        shade: [0],
        area: ['340px', '340px'],
        offset: 'auto', //右下角弹出
        shift: 2,
        content: ['quit.jsp'], //iframe的url，no代表不显示滚动条
        end:function(){
        	location.reload();
        }

    });
}
function func11() {
    //iframe窗
    layer.open({
        type: 2,
        title:'登录',
        shade: [0],
        area: ['340px', '215px'],
        offset: 'auto', //右下角弹出
        shift: 2,
        content: ['customerlogin.jsp'], //iframe的url，no代表不显示滚动条
        end:function(){
        	location.reload();
        }

    });
}
function func12() {
    //iframe窗
    layer.open({
        type: 2,
        title:'注册',
        shade: [0],
        area: ['340px', '340px'],
        offset: 'auto', //右下角弹出
        shift: 2,
        content: ['register.jsp'], //iframe的url，no代表不显示滚动条
        end:function(){
        	location.reload();
        }

    });
}
</script>

				<script>
					$("span.menu").click(function(){
						$(".top-nav ul").slideToggle(500, function(){
						});
					});
			</script>
				</div>
			<div class="clearfix"> </div>
		</div>
		<!---->
	<div class="banner">
		<div class="banner-in">
		<!---->
		<div class="wmuSlider example1">
			   <div class="wmuSliderWrapper">
				<article style="position: absolute; width: 100%; opacity: 0;"> 
				   	<div class="banner-wrap">			   		 
				   	 </div>	 
			</article>
			</div>
		</div>
		<!---->
		  <script src="js/jquery.wmuSlider.js"></script> 
			  <script>
       			$('.example1').wmuSlider({
					 pagination : false,
				});         
   		     </script> 	
		<!---->
	</div>
	</div>
		</div>
	</div>
	
	
        <div class="content"  style="margin:10px 10px 10px 10px" >
		<div class="container" >
				<!--在此输入信息-->
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 60px;">
  <legend>请确认您的订单</legend>
  
  <form class="layui-form" action="RequireServlet" method="post">
  
  <div class="layui-form-item" style="width:1100px">
    <label class="layui-form-label">订单号</label>
    <div class="layui-input-block">
      <input type="text" name="order_id"  autocomplete="off" value="${sessionScope.o.order_id} " class="layui-input" readonly>
    </div>
  </div>
  
  <div class="layui-form-item" style="width:1100px">
    <div class="layui-inline" style="width:535px">
    <label class="layui-form-label">姓名</label>
    <div class="layui-input-block"  >
      <input type="text" name="username"  autocomplete="off" value="${sessionScope.o.customerName} " class="layui-input"  readonly>
    </div>
    </div>
    
    <div class="layui-inline" style="width:535px">
    <label class="layui-form-label">身份证</label>
    <div class="layui-input-block"  >
      <input type="text" name="idcard"  autocomplete="off" value="${sessionScope.o.idcard} " class="layui-input"  readonly>
    </div>
    </div>
  </div>
  
<div class="layui-form-item" style="width:1100px">
	<div class="layui-inline" >
		<label class="layui-form-label" style="width:100px">入住时间</label>
		<div class="layui-input-block"  style="width:150px">
			<input type="text" name="checkin"  autocomplete="off" value="${sessionScope.o.checkin} " class="layui-input"  readonly>
		</div>
	</div>
	
	<div class="layui-inline" >
		<label class="layui-form-label" style="width:100px">离店时间</label>
		<div class="layui-input-block"  style="width:150px">
			<input type="text" name="checkout"  autocomplete="off" value="${sessionScope.o.checkout} " class="layui-input"  readonly>
		</div>
	</div>
	
	<div class="layui-inline" >
		<label class="layui-form-label" style="width:100px">房间号</label>
		<div class="layui-input-block"  style="width:150px">
			<input type="text" name="room_id"  autocomplete="off" value="${sessionScope.o.room_id} " class="layui-input"  readonly>
		</div>
	</div>
	
	<div class="layui-inline" >
		<label class="layui-form-label" style="width:100px">房间类型</label>
		<div class="layui-input-block"  style="width:150px">
			<input type="text" name="roomtype"  autocomplete="off" value="${sessionScope.o.roomtype} " class="layui-input"  readonly>
		</div>
	</div>
</div>

<div class="layui-form-item" style="width:1100px">
<div class="layui-inline" style="width:535px">
    <label class="layui-form-label" style="width:100px">房间朝向</label>
    <div class="layui-input-block" >
      <select name="orientation"  id="o">
        <option value=""></option>
        <option value="北"selected="">北</option>
        <option value="南" >南</option>
        <option value="东">东</option>
        <option value="西">西</option>
      </select>
    </div>
</div>
    
<div class="layui-inline" style="width:535px">
    <label class="layui-form-label" style="width:100px">房间楼层</label>
    <div class="layui-input-block">
      <select name="floor"  id="f">
        <option value=""></option>
        <option value="1st"selected="">1st</option>
        <option value="2nd" >2nd</option>
        <option value="3rd">3rd</option>
        <option value="4th">4th</option>
      </select>
    </div>
</div>
</div>



<div class="layui-form-item" style="width:1100px">
    <label class="layui-form-label" style="width:100px">您的需求</label>
    <div class="layui-input-block">
      <input type="text" name="requirement"  placeholder="请输入您额外的需求备注，我们会竭诚为您服务" class="layui-input"  id="r">
    </div>
  </div>
  
  
<div class="layui-form-item"  style="width:500px; margin-left:auto; margin-right:auto">
							<div class="layui-input-block">
								<button class="layui-btn" lay-submit="" >提交</button>
								<button type="reset" class="layui-btn layui-btn-primary">重置</button>
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
        </div>
        
        </div>

	<!---->
	<div class="footer">
		<div class="container">
		<div class="col-md-8 footer-bottom ">
		<h4>Meteor Garden</h4>
		<p style="color:white;">Made by 刘翔宇，万栋宇，王辰瑜，陈敏</p>
		</div>
				<div class="clearfix"> </div>
		</div>	
	</div>
	 <script type="text/javascript">
						$(document).ready(function() {
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


</body>
</html>