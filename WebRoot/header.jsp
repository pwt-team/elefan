<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>爱乐返 - 便捷导航,特价购物乐返网!</title>
<meta name="pragma" content="no-cache">
<meta name="cache-control" content="no-cache">
<meta name="expires" content="0">
<meta name="keywords" content="爱乐返,爱返官网,乐返,购物,返利,物价商品，便捷导航,上网导航,网址导航">
<meta name="description" content="爱乐返 - 乐返有爱,倍受新睐!">
<%@include file="include.jsp"%>
<style type="text/css">
.h-box {
	width: 1000px;
	height: 30px;
	margin: 0 auto;
}

.h-box .h-left,.h-right {
	float: left;
	font-size: 12px;
}

.h-box ul li {
	float: left;
	padding-right: 8px;
}

.h-box .h-left {
	color: #fff;
	line-height: 30px;
	position: relative;
}

.h-box .h-left #loginmenu {
	width: 100px;
	border: 1px solid #898989;
	border-top: transparent;
	height: 90px;
	position: absolute;
	top: 30px;
	left: 34px;
	display: none;
	background:#fff;
}

.h-box .h-left #loginmenu ul li {
	width: 92px;
	height: 30px;
	line-height: 30px;
	color: #898989;
	cursor: pointer;
}

.h-box .h-left #loginmenu ul li:hover {
	color: #000;
	background: #f3f3f3;
}

.h-box .h-left #loginmenu ul li span {
	color: #898989;
	font-size: 20px;
	padding: 0 4px;
}

.h-box #login,#register {
	display: block;
	color: #fff;
	padding: 0 7px;
	border: 1px solid #8988989;
}

/* .h-box #login:hover {
	background: #fff;
	color: #898989;
} */

.h-box #register:hover {
	color: #cf9;
	text-decoration: underline;
}

.h-box .h-line {
	color: #ccc;
	font-size: 8px;
	line-height: 28px;
}

.h-box .h-right {
	float: right;
	line-height: 30px;
}

.h-box .h-right ul li {
	
}

.h-box .h-right ul li a,span {
	color: #fff;
	text-align: center;
}

.h-box .h-right ul li span {
	padding: 0 10px
}

.h-box .h-right ul li a:hover {
	color: #cf9;
	text-decoration: underline;
}


</style>
</head>

<body>
	<header>
		<div class="h-box">
			<div class="h-left">
				<ul>
					<li>您好,</li>
					<li><a href="javascript:void(0);" id="login">马上登录</a></li>
					<li class="h-line">|</li>
					<li><a href="javascript:void(0);" id="register">免费注册</a></li>
				</ul>
				<div id="loginmenu" data-sel="hide">
					<ul>
						<li class="menuitem"><span class="iconfont">&#xe816;</span>QQ登录</li>
						<li class="menuitem"><span class="iconfont">&#xe81e;</span>支付宝登录</li>
						<li class="menuitem"><span class="iconfont">&#xe797;</span>微信登录</li>
					</ul>
				</div>
			</div>
			<div class="h-right">
				<ul>
					<li><a href="javascript:void(0);">返利导购</a><span class="h-line">|</span></li>
					<li><a href="javascript:void(0);">9块9包邮</a><span class="h-line">|</span></li>
					<li><a href="javascript:void(0);">优惠券</a><span class="h-line">|</span></li>
					<li><a href="javascript:void(0);">有奖邀请</a></li>
				</ul>
			</div>
		</div>
	</header>

	<script type="text/javascript">
   		$("#login").on("mouseover",function(e){
  			$(this).css({"background":"#fff","color":"#898989"});
  			$("#loginmenu").show().data("sel","show");
  			e.stopPropagation(); //防止事件冒泡
  		});
  		
   		$(".menuitem").on("mouseout",function(){
   			return false;
   		}).on("mouseover",function(){
   			return false;
   		});
  		$("body,html").on("mouseover",function(e){
  			var sel = $("#loginmenu").data("sel");
   			if(eqauls(sel, "show")){
	  			$("#loginmenu").hide().data("sel","hide");
	  			$("#login").css({"background":"#898989","color":"#fff"});
  			} 
   			e.stopPropagation(); //防止事件冒泡
  		}); 
  		
  	</script>
</body>
</html>
