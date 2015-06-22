<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 头部登录,导航栏 -->
<%@include file="header.jsp"%>
<style type="text/css">
body {
	background: #fafafa;
}

.logopanel {
	width: 100%;
	background:#fff;
}

.logopanel .logobox {
	width: 1000px;
	height: 90px;
	margin: 0 auto;
}

.logopanel .logobox .logo,.baidubox {
	float: left;
}

.logopanel .logobox .logo {
	width: 200px;
	height: 80px;
	line-height: 80px;
	font-size: 38px;
	font-family: "段宁毛笔行书";
	color: #1BA358;
	text-align: center;
	margin-top:5px;
}

.logopanel .logobox .baidubox {
	width: 730px;
}

.logopanel .logobox .baidubox input[name="word"] {
	width: 351px;
	height: 35px;
	padding: 0 7px;
	font-size: 16px;
}

.logopanel .logobox .baidubox .baiduinp {
	width: 600px;
	margin: 0 auto;
	margin-top: 25px;
}

.logopanel .logobox .baidubox .baiduinp input {
	border: 1px solid #1BA358;
	float: left;
	font-family: "Microsoft YaHei";
	outline: none;
}

.logopanel .logobox .baidubox  input[type="submit"] {
	width: 100px;
	height: 37px;
	background: #1BA358;
	border-left: transparent;
	color: #fff;
	cursor: pointer;
	font-weight: bold;
}

.navbox {
	width: 1000px;
	height: 40px;
	margin: 0 auto;
}

.navbox ul li {
	float: left;
	width: 120px;
	text-align: center;
	line-height: 40px;
	font-family: "Microsoft YaHei";
	font-size: 16px;
	color: #fff;
	cursor: pointer;
}

.navbox .navhome {
	background: #ff8400;
}

.navbox .navitem:hover {
	background: #f3f3f3;
	color: #1BA358;
}

.navbox .navitem:hover  span {
	color: #1BA358;
}

.navbox ul li span {
	padding: 0 3px;
	color: #fff;
}

.navbox .current {
	background: #f3f3f3;
	color: #1BA358;
}
footer {
	width:100%;
	height:60px;
	clear: both;
	position:absolute;
	background: #f3f3f3;
}

footer .footerbox {
	width:650px;
	height:60px;
	margin:0 auto;
}
footer .footerbox ul li {
	float:left;
	line-height:60px;
	padding:0 10px;
	font-size:12px;
	color:#898989;
}
.right-tool {
	width: 50px;
	height: 180px;
	position: fixed;
	bottom: 30px;
	right: 20px;
}

.right-tool a {
	display: block;
	width: 50px;
	height: 50px;
	border-radius: 5px;
}

.right-tool .r-bar {
	background: #646464;
	margin-bottom: 8px;
}

#recode:hover {
	background: "#FF3228";
}

#recode i {
	display: block;
	width: 50px;
	height: 50px;
	background: url(${basePath }images/erweima_3.png) no-repeat center;
	background-position: -124px 0px;
	margin-left: 2.5px;
}

#feedback span {
	width: 35px;
	display: block;
	height: 35px;
	line-height: 17px;
	padding: 5px 7px;
	color: #fff;
	font-size:13px;
}

#feedback span:hover {
	color: #1CBD9D;
}

#back {
	position: relative;
}

#back i {
	width: 45px;
	height: 15px;
	display: block;
	background: url(${basePath }images/erweima_3.png) no-repeat center;
	background-position: -125px -106px;
	position: absolute;
	top: 15px;
}

#big-recode {
	width: 122px;
	height: 137px;
	background: url(${basePath }images/erweima_3.png) no-repeat center;
	background-position: 0px 2px;
	position: absolute;
	top: 0;
	right: 57px;
	display: none;
	background:#fff;
}


</style>

<div class="logopanel">
	<div class="logobox">
		<div class="logo"><img src="${basePath }images/logo.png"></div>
		<div class="baidubox">
			<form action="http://www.baidu.com/baidu" target="_blank">
				<input name="tn" type="hidden" value="baidu">
				<div class="baiduinp">
					<input id="ipt1" type="text" name="word" autocomplete="off"> 
					<input type="submit" value="百度一下"> 
				</div>
				<span id="alertSpan"></span>
			</form>
		</div>
	</div>
</div>

<nav>
	<div class="navbox">
		<ul>
			<li class="navhome">首页</li>
			<li class="navitem"><span class="iconfont">&#xe6ed;</span>新闻头条</li>
			<li class="navitem"><span class="iconfont">&#xe7a9;</span>电视剧集</li>
			<li class="navitem"><span class="iconfont">&#xe6eb;</span>高清电影</li>
			<li class="navitem"><span class="iconfont">&#xe744;</span>休闲游戏</li>
			<li class="navitem"><span class="iconfont">&#xe73a;</span>阅读书库</li>
		</ul>
	</div>
</nav>

<!-- 引入内容部分 -->
<div>
	<%@include file="content.jsp" %>
</div>
<!-- 引入脚部信息 -->
<footer>
	<div class="footerbox">
		<ul>
			<li>爱乐返 - 便捷导航,物价购物爱乐返! </li>
			<li>Copyright ©elefan.net. All Rights Reserved. 粤ICP备15028261号-2</li>
		</ul>
	</div>
</footer>
<!-- 右侧停靠工具 -->
<div class="right-tool">
	<a href="javascript:void(0);" class="r-bar" id="recode" title="关注茶舍"> <i id="rqcode"></i></a> 
	<a href="javascript:void(0);" class="r-bar" id="feedback" title="意见与建议反馈"><span>意见反馈</span></a> 
	<a href="javascript:void(0);" class="r-bar" id="back"><i data-keys="up"></i></a> 
	<a href="javascript:void(0);" id="big-recode"></a>
</div>

<script charset="gbk" src="${basePath}js/opensug.js"></script>
<script type="text/javascript">
	var scrollHeight = getScrollHeight();
	$(function(){
		$(".items").eq(0).show().css({"z-index":2});
		$(".zhitems").eq(0).show();	
		$("footer").css({"top":($(".items").eq(0).height() + 180)+"px"});
	});

	var txtObj = document.getElementById("alertSpan");

	//回调函数，用于获取用户当前选择的文字
	function show(str) {
		txtObj.innerHTML = str;
	}

	var params = {
		"XOffset" : 0, //提示框位置横向偏移量,单位px
		"YOffset" : -5, //提示框位置纵向偏移量,单位px
		"width" : 367, //提示框宽度，单位px
		"fontColor" : "#898989", //提示框文字颜色
		"fontColorHI" : "#fff", //提示框高亮选择时文字颜色
		"fontSize" : "14px", //文字大小
		"fontFamily" : "Microsoft YaHei", //文字字体
		"borderColor" : "#ddd", //提示框的边框颜色
		"bgcolorHI" : "#898989", //提示框高亮选择的颜色
		"sugSubmit" : true //选择自动提交
	//在选择提示词条是是否提交表单
	};

	BaiduSuggestion.bind("ipt1", params, show);
	
	
	

	/* 处理滚动条 */
	$(window).scroll(function() {
		var box = $("#back");
		if ($(window).scrollTop() >= 100) {
			box.children("i").css({
				"background-position" : "-125px -122px"
			});
			box.children("i").data("keys", "down");
			box.attr("title", "回到顶端");
		} else {
			box.children("i").css({
				"background-position" : "-125px -106px"
			});
			box.children("i").data("keys", "up");
			box.attr("title", "回到底端");
		}
	});
	$("#back").click(function(e) {
		var key = $(this).children("i").data("keys");
		if (key == "down") {
			$("html,body").animate({
				"scrollTop" : 0
			}, "slow");
			$(this).children("i").data("keys", "up");
		} else {
			$("html,body").animate({
				"scrollTop" : scrollHeight
			}, "slow");
			$(this).children("i").data("keys", "down");
		}
		e.stopPropagation();
	});
	/* 处理二维码 */
	$("#rqcode").click(function(e) {
		$("#big-recode").stop(true, true).fadeIn('slow');
		e.stopPropagation();
	});
	$("body").bind("click", function(e) {
		$("#big-recode").stop(true, true).fadeOut(500, 0);
		e.stopPropagation();
	});

	/* 单击显示放大二维码 */
	$("#qrcode").click(function(e) {
		$("#h-qrcode").fadeTo(500, 1);
		$("#h-qrcode").data("status", 1);
		e.stopPropagation();
	});
	$("body,html").bind("click", function(e) {
		var s = $("#h-qrcode").data("status");
		if (s == 1) {
			$("#h-qrcode").fadeOut(500, 0);
			$("#h-qrcode").data("status", 0);
		}
		e.stopPropagation();
	});
	
</script>
