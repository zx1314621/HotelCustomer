<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>这是个模板</title>

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
						<li><a href="customerlogin.jsp" >登录</a><label>- </label></li>
						<li><a href="register.jsp" >注册</a><label>- </label></li>
						<li><a href="alter.jsp" >修改个人信息</a><label>- </label></li>
						<li><a href="" >查看个人订单</a><label>- </label></li>
						<li><a href="" >联系我们</a></li>
					</ul>
					<!--script-->
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
				<!-------------这里编写内容！！！！-------------------------------------------------------------------->
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