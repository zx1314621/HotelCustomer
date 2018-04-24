<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>您的订单</title>

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

<% String f = (String)session.getAttribute("f");
if(f!=null && f.length()>0 && f.equals("1"))
	
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
                	        content: ['comment.jsp'], //iframe的url，no代表不显示滚动条
                	        end:function(){
                	        	location.href="MyOrderServlet";
                	        }

                	    });
                	 }
 </script>
<%  
session.setAttribute("f",null);
	}
%>

<% String single = (String)session.getAttribute("single");
if(single!=null && single.length()>0 && single.equals("1"))
	
	{%>
 <script type="text/javascript">
                window.onload=function(){
                	 layer.open({
                	        type: 2,
                	        title:'您的评价',
                	        shade: [0],
                	        area: ['500px', '500px'],
                	        offset: 'auto', //右下角弹出
                	        shift: 2,
                	        content: ['look.jsp'], //iframe的url，no代表不显示滚动条
                	        end:function(){
                	        	location.href="MyOrderServlet";
                	        }

                	    });
                	 }
 </script>
<%  
session.setAttribute("single",null);
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
        	location.href="MyOrderServlet";
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
        	location.href="MyOrderServlet";
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
		
		
				  <table class="layui-table">
    <colgroup>
      <col width="150">
      <col width="150">
      <col width="200">
      <col>
    </colgroup>
    <thead>
      <tr>
        <th>订单编号</th>
        <th>checkin</th>
        <th>checkout</th>
        <th>房间编号</th>
        <th>房间类型</th>
        <th>住户姓名</th>
        <th>身份证号</th>
        <th>需求备注</th>
        <th>订单状态</th>
        <th>评价</th>
      </tr> 
    </thead>
<c:forEach var="o"  items="${sessionScope.orderlist}">
    <tbody>
      <tr>
        <td>${o.order_id }</td>
        <td>${o.checkin }</td>
        <td>${o.checkout }</td>
        <td>${o.room_id }</td>
        <td>${o.roomtype }</td>
        <td>${o.customerName }</td>
        <td>${o.idcard }</td>
        <td>${o.requirement }</td>
        <td>
        	<c:choose>
        		<c:when test="${o.processed == 0}">未入住</c:when>
        	</c:choose>
        	<c:choose>
        		<c:when test="${o.processed == 1}">已入住</c:when>
        	</c:choose>
        	<c:choose>
        		<c:when test="${o.processed == 2}">已离店</c:when>
        	</c:choose>
        	<c:choose>
        		<c:when test="${o.processed == 3}">已评价</c:when>
        	</c:choose>
        </td>
        <td>							<c:choose>
    											<c:when test="${o.processed == 0 || o.processed == 1}">
    												<button class="layui-btn layui-btn-disabled"    name="nouse"   >不可评价</button>
    											</c:when> 
    											<c:when test="${o.processed == 2}">
    											<form action="MiddleServlet"  method="post">
    												<button class="layui-btn"  type="submit" name="commentorder"   value="${o.order_id }">评价订单</button>
    											</form>
    											</c:when> 
    											<c:otherwise>
    											<form action="LookServlet"  method="post">
     												<button class="layui-btn"   type="submit" name="lookup"  value="${o.order_id }">查看评价</button>
     											</form>
    											</c:otherwise>
											</c:choose>
		</td>
      </tr>
    </tbody>
</c:forEach>
  </table>
  
  
		</div>
		</div>


<!---------------------------------------------------------------------------------------------------->
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