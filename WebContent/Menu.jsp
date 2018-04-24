<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>预定界面</title>
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
					<style>
        <%--table,table tr th, table tr td { border:1px solid #0094ff; }--%>
     </style>
</head>
<body>
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
function big() {
    //iframe层
    layer.open({
        type: 2,
        title: '大床房的所有评价',
        shadeClose: true,
        shade: 0.8,
        area: ['60%', '60%'],
        content: 'big.jsp' //iframe的url
    });
}
function med() {
    //iframe层
    layer.open({
        type: 2,
        title: '标准间的所有评价',
        shadeClose: true,
        shade: 0.8,
        area: ['60%', '60%'],
        content: 'med.jsp' //iframe的url
    });
}
function sma() {
    //iframe层
    layer.open({
        type: 2,
        title: '单人间的所有评价',
        shadeClose: true,
        shade: 0.8,
        area: ['60%', '60%'],
        content: 'sma.jsp' //iframe的url
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
	<div class="content" style="margin:10px 10px 10px 10px">
		<div class="container" >
				<table><tr>
					<td width="2000" ><strong face="微软雅黑">房间图片</strong></td>
						
						
							<td width="1000" ><strong face="微软雅黑">房间类型</strong></td>
						
						<td width="1000" >
							<strong face="微软雅黑">房间价格</strong>
						</td>
						<td width="1000" >
						<strong face="微软雅黑">房间状态</strong>
							</td>
							<td width="1000" >
						<strong face="微软雅黑">所有评价</strong>
							</td>
						<td width="1000" >
						<strong face="微软雅黑" >预订</strong>
							</td>
							</tr>
							</table>
					<hr style=" height:2px;border:none;border-top:2px dotted #185598;" />
        </div>
        </div>
	<div class="content" style="margin:10px 10px 10px 10px">
		<div class="container"  >
				<table><tr>
					<td width="1300" ><a href="big.jsp"><img src="lxy/images/p1.jpg" class="img-responsive" alt=""></a></td>
						
						
							<td width="700" ><p style="font-size:150%;font-family:微软雅黑">大床房</p></td>
						
						<td width="600" >
							<span class="dollar">¥376</span>
						</td>
						<td width="500" ><p style="font-size:150%;font-family:微软雅黑">${sessionScope.num_big}</p></td>
						
						<td width="400" >
							<button class="layui-btn"  name="lookbig"  onclick="big()" >查看评价</button>
						</td>
						
						<td width="500" ><div>
											<c:choose>
												<c:when test="${sessionScope.c == null}">
													<button class="layui-btn"  name="login"  onclick="func11();">预订</button>
												</c:when> 
    											<c:when test="${sessionScope.num_big > 0}">
    												<a href="BookServlet?action=big"><button class="layui-btn"  name="use"   >预订</button></a>
    											</c:when> 
    											<c:otherwise>
     												<button class="layui-btn layui-btn-disabled"  name="nouse"  >客满</button>
    											</c:otherwise>
											</c:choose>
							</div>
							</td>
							</tr>
							</table>
					<hr style=" height:2px;border:none;border-top:2px dotted #185598;" />
        </div>
        
        </div>
       <div class="content" >
		<div class="container"  >
				<table><tr>
					<td width="1300" ><a href="big.jsp"><img src="lxy/images/p2.jpg" class="img-responsive" alt=""></a></td>
						
						
							<td width="700" ><p style="font-size:150%;font-family:微软雅黑">标准间</p>
						
						<td width="600" >
							<span class="dollar">¥400</span>
						</td>
						<td width="500" ><p style="font-size:150%;font-family:微软雅黑">${sessionScope.num_med}</p></td>
						
						<td width="400" >
							<button class="layui-btn"  name="lookmed"  onclick="med()">查看评价</button>
						</td>
						
						<td width="500" ><div>
											<c:choose>
												<c:when test="${sessionScope.c == null}">
													<button class="layui-btn"  name="login"  onclick="func11();">预订</button>
												</c:when>
    											<c:when test="${sessionScope.num_med > 0}">
    												<a href="BookServlet?action=med"><button class="layui-btn"  name="use"   >预订</button></a>
    											</c:when> 
    											<c:otherwise>
     												<button class="layui-btn layui-btn-disabled"  name="nouse"  >客满</button>
    											</c:otherwise>
											</c:choose>
							</div>
							</td>
							</tr>
							</table>
					<hr style=" height:2px;border:none;border-top:2px dotted #185598;" />
        </div>
        
        </div>
        <div class="content" style="margin:10px 10px 10px 10px">
		<div class="container" >
				<table><tr>
					<td width="1300" ><a href="big.jsp"><img src="lxy/images/p3.jpg" class="img-responsive" alt=""></a></td>
						
						
							<td width="700" ><p style="font-size:150%;font-family:微软雅黑">单人间</p>
						
						<td width="600" >
							<span class="dollar">¥198</span>
						</td>
						<td width="500" ><p style="font-size:150%;font-family:微软雅黑">${sessionScope.num_sma}</p></td>
						
						<td width="400" >
							<button class="layui-btn"  name="lookbig"  onclick="sma()">查看评价</button>
						</td>
						
						<td width="500" ><div>
											<c:choose>
												<c:when test="${sessionScope.c == null}">
													<button class="layui-btn"  name="login"  onclick="func11();">预订</button>
												</c:when>
    											<c:when test="${sessionScope.num_sma > 0}">
    												<a href="BookServlet?action=sma"><button class="layui-btn"  name="use"   >预订</button></a>
    											</c:when> 
    											<c:otherwise>
     												<button class="layui-btn layui-btn-disabled"  name="nouse"  >客满</button>
    											</c:otherwise>
											</c:choose>
							</div>
							</td>
							</tr>
							</table>
					<hr style=" height:2px;border:none;border-top:2px dotted #185598;" />
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
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


</body>
</html>