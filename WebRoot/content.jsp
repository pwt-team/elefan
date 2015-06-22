<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style type="text/css">
.centerpanel {
	width: 1000px;
	height: auto;
	margin: 0 auto;
	position: relative;
	clear: both;
}

.centerpanel .items {
	width: 1000px;
	display: none;
	position: absolute;
	top: 0px;
	left: 0px;
	margin-top: 5px;
}

.centerpanel .items .webleft,.webright {
	float: left;
}

.centerpanel .items .webleft {
	width: 240px;
	height: auto;
}

.centerpanel .items .webleft .left-item {
	width: 240px;
	border: 1px solid #ddd;
	margin-top: 10px;
	background: #fff;
}

.centerpanel .items .webleft .left-item .left-title {
	width: 240px;
	height: 32px;
	background: #f3f3f3;
	font-size: 13px;
	line-height: 32px;
}

.centerpanel .items .webleft .yzmusic {
	width: 240px;
	height: 331px;
	margin: 0;
	overflow: hidden;
	border-top: 1px solid #ddd;
}

.centerpanel .items .webleft .yzmusic .shuixinting {
	padding-left: 25px;
}

.centerpanel .items .webleft .yzmusic .shuixinting:hover {
	color: #1BA358;
	text-decoration: underline;
}

.centerpanel .items .webleft .newsbar {
	
}

.centerpanel .items .webleft .newsbar .left-title ul li {
	float: left;
	width: 60px;
	text-align: center;
	cursor: pointer;
}

.centerpanel .items .webleft .newsbar .left-title ul li:hover {
	background: #fff;
}

.centerpanel .items .webleft .newsbar .newitems {
	height: 232px;
	width: 240px;
}

.centerpanel .items .webleft .newsbar .newimgs {
	position: relative;
	height: 100px;
	margin-bottom: 5px;
}

.centerpanel .items .webleft .newsbar .newimgs img {
	position: absolute;
	top: 0px;
	left: 0;
}

.centerpanel .items .webleft .newsbar .curnew {
	background: #fff;
}

.centerpanel .items .webleft .newsbar .newitems {
	position: relative;
}

.centerpanel .items .webleft .newsbar .newitems .newitem {
	position: absolute;
}

.centerpanel .items .webleft .newsbar .newitems .newitem ul li {
	list-style: none;
	width: 240px;
	font-size: 12px;
	line-height: 23px;
	cursor: pointer;
}

.centerpanel .items .webleft .newsbar .newitems .newitem ul li i,a {
	display:block;
} 
.centerpanel .items .webleft .newsbar .newitems .newitem ul li a:hover{
	color: #1BA358;
} 
.centerpanel .items .webleft .newsbar .newitems .newitem ul li i {
	float: left;
	width: 20px;
	height: 20px;
	background: #cf9;
	font-size: 13px;
	line-height: 25px;
	margin-right: 15px;
	margin-top: 2px;
	margin-left: 5px;
	line-height: 20px;
	font-size: 12px;
	color:#666;
}
.centerpanel .items .webleft .newsbar .newitems .newitem ul li a {
	float:left;
	width:200px;
	text-align:left;
	font-size:12px;
}
.centerpanel .items .webright {
	width: 740px;
	height: auto;
	float: right;
}

.centerpanel .items .webright .right-item {
	width: 740px;
	border: 1px solid #ddd;
	font-size: 13px;
	margin-bottom: 10px; 
}

.centerpanel .items .webright .right-item ul li {
	float: left;
	width: 101px;
	height: 32px;
	line-height: 32px;
	text-align: center;
}

.centerpanel .items .webright .right-item ul li a:hover {
	color: #1BA358;
	text-decoration: underline;
}

.centerpanel .items .webright .right-item i {
	width: 12px;
	height: 12px;
	display: block;
	background: url(./images/defaultIcon1229.png) on-repeat center;
}
.centerpanel .items .webright .right-title {
	height: 32px;
	background: #f3f3f3;
	font-size: 13px;
	line-height: 32px;
	text-align: left;
	padding-left:20px;
	color: #1BA358;
}
.centerpanel .items .webright .person {
	height:140px;
	position: relative;
}
.centerpanel .items .webright .person ul li {
	float: left;
	width: 101px;
	height: 35px;
	line-height: 35px;
	text-align: center;
}
.centerpanel .items .webright .iconfont {
	color: #1BA358;
	padding-right:2px;
	font-size:18px;
}
.centerpanel .items .webright .person #addbox {
	position: absolute;
	right: 0;
	top: 0;
	width: 0px;
	height: 0px;
	display: inline-block;
	border-left: 18px solid transparent;
	border-top: 18px solid #1BA358;
	border-right: 18px solid #1BA358;
	border-bottom: 18px solid transparent;
}
.centerpanel .items .webright .person #addweb {
	position: absolute;
	right: -12px;
	top: -17px;
	width: 12px;
	height: 12px;
	display: block;
	color:#fff;
	vertical-align: top ;
}
.centerpanel .items .webright .tuijian {
	width:740px;
	height:200px;
}
.centerpanel .items .webright .zonghe {
	width:740px;
	height:135px;
	position: relative;
}
.centerpanel .items .webright .zonghe .zonghenav ul li{
	float:left;
	padding:0;
	width:50px;
	border:1px solid transparent;
	cursor:pointer;
}
.centerpanel .items .webright .zonghe .zonghenav .zhsel{
	border-top:1px solid #1BA358;
	background:#fafafa;
}
.centerpanel .items .webright .zonghe .zhitems{
	position: absolute;
	top:32px;
	left:0;
	display:none;
	padding-left:20px;
}
.centerpanel .items .webright .zonghe .zhitems ul li{
	text-align:left;	
}
.centerpanel .items .webright .gongchengshi {
	width:740px;
	height:200px;
	position: relative;
}
.centerpanel .items .webright .gongchengshi .gcitems {
	position: absolute;
	top:32px;
	left:0;
	padding-left:20px;
}
.centerpanel .items .webright .gongchengshi .gcitems ul li {
	text-align:left;	
}
.claer {
	clear: both;
}
</style>

<center>
	<div class="centerpanel">
		<!-- 网址导航 -->
		<div class="items">
			<div class="webleft">
				<!-- 百度在线音乐 -->
				<div class="left-item yzmusic">
					<div class="left-title">百度音乐在线 <a href="http://fm.baidu.com/" target="_bank" class="shuixinting">随心听</a></div>
					<iframe id="frame-music" src="http://play.baidu.com/player/hao123/index_new.html#top/new" width="240" height="300" border="0" scrolling="no" frameborder="0"></iframe>
				</div>
				<!-- 新闻吧 -->
				<div class="left-item newsbar">
					<div class="left-title">
						<ul>
							<li class="curnew">头条</li>
							<li>社会</li>
							<li>娱乐</li>
							<li>互联网</li>
						</ul>
					</div>
					<div class="newimgs">
						<img alt="" src="http://s0.hao123img.com/res/r/image/2015-05-16/24e4f21e521883ecd147751c653939cb.jpg">
						<img alt="" src="http://s0.hao123img.com/res/r/image/2015-05-16/5bbf7562383633e39d40a022ad10c069.jpg">
						<img alt="" src="http://s0.hao123img.com/res/r/image/2015-05-16/e459788e47d7973df1a9054cb99d0a4c.jpg">
						<img alt="" src="http://s0.hao123img.com/res/r/image/2015-05-16/5d450c79c1df540a2f97923a2fe99a04.jpg">
					</div>
					<div class="newitems">
						<div class="newitem">
							<ul>
							<!-- 动态刷新新闻 -->
							</ul>
						
						</div>
						<div class="newitem"></div>
						<div class="newitem"></div>
						<div class="newitem"></div>
					</div>
				</div>
				<!--  -->		
			</div>
			<div class="webright">
				<div class="right-item person">
					<div class="right-title">常用收藏</div>
					<ul>
						<li><a href="http://wwww.baidu.com/" target="_brank" title="百度一下">百度一下</a></li>
						<li><a href="http://www.google.com.hk/" target="_brank" title="谷歌搜索">谷歌搜索</a></li>
						<li><a href="http://www.haosou.com/" target="_brank" title="360好搜">360好搜</a></li>
						<li><a href="http://cn.bing.com/" target="_brank" title="微软必应搜索">必应搜索</a></li>
						<li><a href="http://www.sogou.com/" target="_brank" title="百度一下">搜狗搜索</a></li>
						<li><a href="https://sg.search.yahoo.com/" target="_brank" title="雅虎搜索">雅虎搜索</a></li>
						<li><a href="http://www.youdao.com/" target="_brank" title="有道搜索">有道搜索</a></li>
						<li><a href="http://www.qq.com/" target="_brank" title="腾讯QQ">腾讯QQ</a></li>
						<li><a href="http://www.163.com/" target="_brank" title="网易163">网易163</a><span class="blacktext">&nbsp;&bull;&nbsp;</span><a href="http://www.163.com/" target="_brank" title="网易126">126</a></li>
						<li><a href="http://hao.360.cn/" target="_brank" title="奇虎360">奇虎360</a></li>
						<li><a href="http://www.hao123.com/" target="_brank" title="奇虎360">HAO123</a></li>
						<li><a href="http://www.2345.com/" target="_brank" title="奇虎360">2345导航</a></li>
						<li><a href="http://www.tmall.com/" target="_brank" title="天猫商城">天猫商城</a><span class="blacktext">&nbsp;&bull;&nbsp;</span><a href="http://www.taobao.com/" target="_brank" title="淘宝网">淘宝</a></li>
						<li><a href="http://passport.fanli.com/come?id=89023076&t=4&spm=invite.pc.copy.a"  target="_brank" title="返利网">返利网</a></li>
						<li><a href="http://www.fanxian.com/REAzNfx0fth" target="_brank" title="返现网">返现网</a></li>
						<li><a href="http://www.mizhe.com/#NEb2NYdkxaWlhvYw" target="_brank" title="米折网">米折网</a></li>
						<li><a href="http://www.egou.com/" target="_brank" title="易购网">易购网</a></li>
						<li><a href="https://www.alipay.com/" target="_brank" title="支付宝"><span class="iconfont">&#xe661;</span>支付宝</a></li>
						<li><a href="http://www.ccb.com/" target="_brank" title="中国建设银行">中国建设银行</a></li>
						<li><a href="http://www.boc.cn/" target="_brank" title="中国银行">中国银行</a></li>
						<li><a href="http://www.pwt.net.cn/" target="_brank" title="鹏万通科技">鹏万通科技</a></li>
					</ul>
					<div id="addbox">
						<a href="javascirpt:void(0);" class="iconfont" id="addweb" title="添加我自己有收藏">&#xe622;</a>
					</div>
				</div>
				<div class="right-item tuijian">
					<div class="right-title">推荐喜欢站点</div>
					<ul>
						<li><a href='http://p.yiqifa.com/n?k=UtPspEB1rI6HWN3LrI6H2mLErI6HWEK7rnRLWn2S6QLO6nUH2mqerI6H3N6bW9681ngH2L--&e=lefan&t=http://www.jd.com/' target='_blank'>京东商城</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErnts1QLErI6H2mLErn276mLmWnjSWEPH6E2mrtsQRB626QqerI6HMEg9WOBy39gH2L--&e=lefan&t=http://www.dangdang.com' target='_blank'>当当网</a></li>
						<li><a href='http://p.yiqifa.com/n?k=RBWmMKoVrI6HWlz7WlgH2mLErI6H2mLq6ltm6mLmWnjSWEPH6nDFWlRqrI6HkQLErJWl1NgwWERqrIW-&e=lefan&t=http://www.mi.com/index.php' target='_blank'>小米手机</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErn2F1n4H2mLErI6H59q3gPBlrnDLWNbH6ljLWE2srn2q6lKFrI6HkQLErnzsWngb1n2mrIW-&e=lefan&t=http://www.vip.com' target='_blank'>唯品会</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErn2m6nzSrI6H2mLErtHsKOyiCZLmWnwernRLWn2S6QL7WE3LWNbH2mqerI6H6lBwMEtsW54H2L--&e=lefan&t=http://www.hitao.com' target='_blank'>嗨淘</a></li>	
						<li><a href='http://p.yiqifa.com/n?k=2mLErnKO6E4H2mLErI6H2mL76nKernRLWn2S6QLS1n371QqfYZuegwyHkQLErJP8MNByWlzqrIW-&e=lefan&t=http://www.suning.com/' target='_blank'>苏宁易购</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErntL6n3SrI6H2mLErI6H6N2S6mLmWnjSWEPH6Nt76NMHkByi5tBIrZyH2mLS1J3s39tOMQLE&e=lefan&t=http://www.jumei.com/' target='_blank'>聚美优品</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErntq6EDSrI6H2mLErI6H6NDLWcLmWnjSWEPH6lDLWEBHR5e!gQgIrZyH2mLeW9DeM9Ws6cLE&e=lefan&t=http://bj.meituan.com/' target='_blank'>美团网</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErntm6njSrI6H2mLErZWlY5o53mLOWE2OrnRLWn2S6QLe6Ej76mLErZyH2mLF3E3LWlzlWcLE&e=lefan&t=http://www.nuomi.com/' target='_blank'>百度糯米</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErn2m6njSrI6H2mLErI6H6ljl6cLmWnjSWEPHWlzs1NRsrB6LY5WqCcqerI6H6ODOWn69WNXH2L--&e=lefan&t=http://www.ly.com' target='_blank'>同程网</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErntl6mLErI6H2mqEUPzOC7yHWERSrnRLWn2S6QLO1NMH2mqerI6HMNbwMNws39BH2L--&e=lefan&t=http://www.mbaobao.com' target='_blank'>麦包包</a></li>
						<li><a href='http://p.yiqifa.com/n?k=DEyZpQMSrI6HWNDFrI6H2mLErI6HWEDernRLWn2S6QLOWlXH2mqerI6H6l2L3ljeWNMH2L--&e=lefan&t=http://redbaby.suning.com' target='_blank'>红孩子</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErnte6cLErI6H2mLErn2S6mLmWnjSWEPH6n27rI6HkQLErn2q6Ey8MEMbrJMtYZM6UmL-&e=lefan&t=http://www.lefeng.com/' target='_blank'>乐蜂Lafaso</a></li>
						<li><a href='http://p.yiqifa.com/n?k=UKKL67qirI6H1njSrI6H2mLErI6HWNWernRLWn2S6QLq6NBH2mqerI6H1NB81nKOWEyH2L--&e=lefan&t=http://www.yhd.com/' target='_blank'>1号店</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErntl6E4H2mLErI6H2mLq1njLrnRLWn2S6QLF1NwerZumDswSWQqerI6H6EXy6JPw6lbH2L--&e=lefan&t=http://www.quwan.com' target='_blank'>趣玩网</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErn3OWn6H2mLErI6H37W7gJgprnDOWNBH6ljLWE2srnDS6N3mrI6HkQLErJDL652SWOgwrIW-&e=lefan&t=http://store.lining.com' target='_blank'>李宁</a></li>
						<li><a href='http://p.yiqifa.com/n?k=gsX75wqArI6H6EWLWmLErI6H2mLErnDs1nXH6ljLWE2srnDq6l2FrI6HkQLErnP935Ds1nRlrIW-&e=lefan&t=http://www.hecha.cn/index.php' target='_blank'>和茶网</a></li>
						<li><a href='http://p.yiqifa.com/n?k=6ny4CKKLrI6H6NzLWcLErI6H2mLErnDsWnBH6ljLWE2srnWFWlzerI6HkQLErJMw3Ew7WODqrIW-&e=lefan&t=http://www.muyingzhijia.com' target='_blank'>母婴之家</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErnDe1ngH2mLErI6H2mL7WlWLrnRLWn2S6QLlWND76cqKNlMbYy6HkQLErn2m35WOMnbbrIW-&e=lefan&t=http://www.yixun.com' target='_blank'>易迅数码</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErn3FWE4H2mLErI6H2mL76ljernRLWn2S6QL76NDq6QLErZyH2mLSWlMbW52FMZLeC9U13OPH&e=lefan&t=http://www.paixie.net/' target='_blank'>拍鞋网</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErnt71N2SrI6H2mLErI6H6NKm1QLmWnjSWEPH6l3eWN6H2mqerI6HWlB93N3m3NyHNnUORK4mrj--&e=lefan&t=http://www.gome.com.cn/ec/homeus/index.html' target='_blank'>国美在线</a></li>
						<li><a href='http://p.yiqifa.com/n?k=gBXvYljerI6HWN37WE4H2mLErI6H2mLs1NtsrnRLWn2S6QLF6NWq6ZLErZyH2mLOMJ4b3ERs6mLE&e=lefan&t=http://www.usashopcn.com' target='_blank'>美国购物网</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErntO6N3SrI6H2mLErZ4IRB3FNQLs1nKFrnRLWn2S6QLFWlR76ZLErZyH2mLq393sWEgw6mLE&e=lefan&t=http://www.banggo.com/' target='_blank'>邦购服装</a></li>
						<li><a href='http://p.yiqifa.com/n?k=6yBuROoLrI6HWN3mWE4H2mLErI6H2mLs6lDLrnRLWn2S6QLFWn2q6ZLErZyH2mLLMEyE6NDLWQLE&e=lefan&t=http://www.lvmama.com' target='_blank'>驴妈妈</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErntO6lzSrI6H2mLErI6H6EjFWmLmWnjSWEPH1Njs6N4HWZ4lKtswrZyH2mL76ODlWNWsMQLE&e=lefan&t=http://www.handu.com/' target='_blank'>韩都衣舍</a></li>
						<li><a href='http://p.yiqifa.com/n?k=PEgAYczOrI6HWNzL6n4H2mLErI6H2mLOWljsrnRLWn2S6QLqWnj76NMH2mqerI6HWOK71nME6JgH2L--&e=lefan&t=http://www.camel.com.cn' target='_blank'>骆驼商城</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErnteWnj7rI6H2mLErI6H6ED7WmLmWnjSWEPHWNt71nwOrI6HkQLErn3l154wM5ternbJkBPl3cL-&e=lefan&t=http://www.sifangtuan.com' target='_blank'>私房团</a></li>
						<li><a href='http://p.yiqifa.com/n?k=39g1kQ6mrI6HWEtOWE4H2mLErI6H2mLO6N3SrnRLWn2S6QLqWEwF6lbH2mqerI6HM9My6n2FMngH2L--&e=lefan&t=http://www1.wodinghua.com/' target='_blank'>我订花网</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErn2SWnzlrI6H2mLErI6H6E3lWZLmWnjSWEPHWNDS1nwLrZPg6nU!6cqerI6H6lKmWEtF3lBH2L--&e=lefan&t=http://yxp.163.com' target='_blank'>网易印像派</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErn2lWEzlrI6H2mLErI6H6ERO1QLmWnjSWEPHWEtl6NwLrI6HkQLErJKFW93l3lX8rZ3mpOVmpcL-&e=lefan&t=http://www.motherbuy.com' target='_blank'>贝因美</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErn2l6N2SrI6H2mLErtgfgEXOkQLO6lRernRLWn2S6QLSWE2m6lgH2mqerI6HWEW7M9Ds3l4H2L--&e=lefan&t=http://www.zhubajie.com' target='_blank'>猪八戒网</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErn27WE3SrI6H2mLErZg9YOBDWmLO6lzqrnRLWn2S6QLSWEDl6lPH2mqerI6H6NKL1NRqWEbH2L--&e=lefan&t=http://u.paipai.com' target='_blank'>拍拍网</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErn276E3SrI6H2mLErtM46cyC6ZLO1nwernRLWn2S6QLlWNtm1nMH2mqerI6HMEMyWntOWOBH2L--&e=lefan&t=http://www.aoyou.com/' target='_blank'>中青旅遨游</a></li>
						<li><a href='http://p.yiqifa.com/n?k=kJevCmXlrI6HWEDO6E6H2mLErI6H2mLO6nw7rnRLWn2S6QLqWNz7WN4H2mqerI6H3lb9MEU81NBH2L--&e=lefan&t=http://www.okhqb.com/' target='_blank'>华强北商城</a></li>
						<li><a href='http://p.yiqifa.com/n?k=2mLErnWF1nwOrI6H2mLErI6HWNRS6lMH6ljLWE2srnDsWNRm1ZLErZyH2mLFW5Wm3lXy6cqLCy4dpQ6H&e=lefan&t=http://f.youdao.com/' target='_blank'>有道翻译</a></li>
					</ul>
				</div>	
				<!-- 综合列表 -->			
				<div class="right-item zonghe">
					<div class="right-title zonghenav">
						<ul>
							<li class="zhsel">商城</li>
							<li>新闻</li>
							<li>影视</li>
							<li>音乐</li>
							<li>软件</li>
							<li>游戏</li>
							<li>银行</li>
							<li>快递</li>
							<li>宠物</li>
						</ul>
					</div>
					<div>
						<div class="zhitems">
							<!-- 综合商城 -->
							<div class="shop">
								<ul>
									<li><a
										href='http://p.yiqifa.com/n?k=UtPspEB1rI6HWN3LrI6H2mLErI6HWEK7rnRLWn2S6QLO6nUH2mqerI6H3N6bW9681ngH2L--&e=lefan&t=http://www.jd.com/'
										target='_blank'>京东商城</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=2mLErnts1QLErI6H2mLErn276mLmWnjSWEPH6E2mrtsQRB626QqerI6HMEg9WOBy39gH2L--&e=lefan&t=http://www.dangdang.com'
										target='_blank'>当当网</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=2mLErn2F1n4H2mLErI6H59q3gPBlrnDLWNbH6ljLWE2srn2q6lKFrI6HkQLErnzsWngb1n2mrIW-&e=lefan&t=http://www.vip.com'
										target='_blank'>唯品会</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=2mLErn2m6nzSrI6H2mLErtHsKOyiCZLmWnwernRLWn2S6QL7WE3LWNbH2mqerI6H6lBwMEtsW54H2L--&e=lefan&t=http://www.hitao.com'
										target='_blank'>嗨淘</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=2mLErnKO6E4H2mLErI6H2mL76nKernRLWn2S6QLS1n371QqfYZuegwyHkQLErJP8MNByWlzqrIW-&e=lefan&t=http://www.suning.com/'
										target='_blank'>苏宁易购</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=2mLErntL6n3SrI6H2mLErI6H6N2S6mLmWnjSWEPH6Nt76NMHkByi5tBIrZyH2mLS1J3s39tOMQLE&e=lefan&t=http://www.jumei.com/'
										target='_blank'>聚美优品</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=2mLErntq6EDSrI6H2mLErI6H6NDLWcLmWnjSWEPH6lDLWEBHR5e!gQgIrZyH2mLeW9DeM9Ws6cLE&e=lefan&t=http://bj.meituan.com/'
										target='_blank'>美团网</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=2mLErntm6njSrI6H2mLErZWlY5o53mLOWE2OrnRLWn2S6QLe6Ej76mLErZyH2mLF3E3LWlzlWcLE&e=lefan&t=http://www.nuomi.com/'
										target='_blank'>百度糯米</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=2mLErn2m6njSrI6H2mLErI6H6ljl6cLmWnjSWEPHWlzs1NRsrB6LY5WqCcqerI6H6ODOWn69WNXH2L--&e=lefan&t=http://www.ly.com'
										target='_blank'>同程网</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=DEyZpQMSrI6HWNDFrI6H2mLErI6HWEDernRLWn2S6QLOWlXH2mqerI6H6l2L3ljeWNMH2L--&e=lefan&t=http://redbaby.suning.com'
										target='_blank'>红孩子</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=UKKL67qirI6H1njSrI6H2mLErI6HWNWernRLWn2S6QLq6NBH2mqerI6H1NB81nKOWEyH2L--&e=lefan&t=http://www.yhd.com/'
										target='_blank'>1号店</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=2mLErntl6E4H2mLErI6H2mLq1njLrnRLWn2S6QLF1NwerZumDswSWQqerI6H6EXy6JPw6lbH2L--&e=lefan&t=http://www.quwan.com'
										target='_blank'>趣玩网</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=6ny4CKKLrI6H6NzLWcLErI6H2mLErnDsWnBH6ljLWE2srnWFWlzerI6HkQLErJMw3Ew7WODqrIW-&e=lefan&t=http://www.muyingzhijia.com'
										target='_blank'>母婴之家</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=2mLErnt71N2SrI6H2mLErI6H6NKm1QLmWnjSWEPH6l3eWN6H2mqerI6HWlB93N3m3NyHNnUORK4mrj--&e=lefan&t=http://www.gome.com.cn/ec/homeus/index.html'
										target='_blank'>国美在线</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=gBXvYljerI6HWN37WE4H2mLErI6H2mLs1NtsrnRLWn2S6QLF6NWq6ZLErZyH2mLOMJ4b3ERs6mLE&e=lefan&t=http://www.usashopcn.com'
										target='_blank'>美国购物网</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=6yBuROoLrI6HWN3mWE4H2mLErI6H2mLs6lDLrnRLWn2S6QLFWn2q6ZLErZyH2mLLMEyE6NDLWQLE&e=lefan&t=http://www.lvmama.com'
										target='_blank'>驴妈妈</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=2mLErntO6lzSrI6H2mLErI6H6EjFWmLmWnjSWEPH1Njs6N4HWZ4lKtswrZyH2mL76ODlWNWsMQLE&e=lefan&t=http://www.handu.com/'
										target='_blank'>韩都衣舍</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=PEgAYczOrI6HWNzL6n4H2mLErI6H2mLOWljsrnRLWn2S6QLqWnj76NMH2mqerI6HWOK71nME6JgH2L--&e=lefan&t=http://www.camel.com.cn'
										target='_blank'>骆驼商城</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=2mLErnteWnj7rI6H2mLErI6H6ED7WmLmWnjSWEPHWNt71nwOrI6HkQLErn3l154wM5ternbJkBPl3cL-&e=lefan&t=http://www.sifangtuan.com'
										target='_blank'>私房团</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=2mLErn27WE3SrI6H2mLErZg9YOBDWmLO6lzqrnRLWn2S6QLSWEDl6lPH2mqerI6H6NKL1NRqWEbH2L--&e=lefan&t=http://u.paipai.com'
										target='_blank'>拍拍网</a></li>
									<li><a
										href='http://p.yiqifa.com/n?k=kJevCmXlrI6HWEDO6E6H2mLErI6H2mLO6nw7rnRLWn2S6QLqWNz7WN4H2mqerI6H3lb9MEU81NBH2L--&e=lefan&t=http://www.okhqb.com/'
										target='_blank'>华强北商城</a></li>
								</ul>
							</div>
						</div>
						<div class="zhitems">
							<!-- 综合新闻 -->
							<div class="news">
								<ul>
									<li><a href="http://news.sina.com.cn/" target="_brank" title="新浪新闻">新浪新闻</a></li>
									<li><a href="http://news.sohu.com/" target="_brank" title="搜狐新闻">搜狐新闻</a></li>
									<li><a href="http://news.baidu.com/" target="_brank" title="新浪新闻">百度新闻</a></li>
									<li><a href="http://news.qq.com/" target="_brank" title="腾讯新闻">腾讯新闻</a></li>
									<li><a href="http://news.163.com/" target="_brank" title="网易新闻">网易新闻</a></li>
									<li><a href="http://www.ifeng.com/" target="_brank" title="凤凰新闻">凤凰新闻</a></li>
									<li><a href="http://www.huanqiu.com/" target="_brank" title="环球新闻网">环球网</a></li>
									<li><a href="http://www.cac.gov.cn/" target="_brank" title="中共动态">中信新闻</a></li>
									<li><a href="http://news.cntv.cn/" target="_brank" title="央视新闻">央视新闻</a></li>
									<li><a href="http://military.china.com/zh_cn/" target="_brank" title="中华军事">中华军事</a></li>
									<li><a href="http://news.ifeng.com/mil/" target="_brank" title="凤凰军事">凤凰军事</a></li>
									<li><a href="http://www.tiexue.net/" target="_brank" title="铁血军事">铁血军事</a></li>
								</ul>
							</div>
						</div>		
						<div class="zhitems">
							<!-- 综合影视 -->
							<div class="film">
								<ul>
									<li><a href="http://www.iqiyi.com/" target="_brank" title="爱奇艺">爱奇艺</a></li>
									<li><a href="http://www.youku.com/" target="_brank" title="优酷网">优酷网</a></li>
									<li><a href="http://www.letv.com/" target="_brank" title="乐视网">乐视网</a></li>
									<li><a href="http://v.baidu.com/" target="_brank" title="百度视频">百度视频</a></li>
									<li><a href="http://www.tudou.com/" target="_brank" title="土豆网">土豆网</a></li>
									<li><a href="http://www.meipai.com/" target="_brank" title="美拍网">美拍网</a></li>
									<li><a href="http://v.qq.com/" target="_brank" title="腾讯视频">腾讯视频</a></li>
									<li><a href="http://www.pptv.com/" target="_brank" title="pptv">PPTV</a></li>
									<li><a href="http://www.hunantv.com/" target="_brank" title="芒果TV">芒果TV</a></li>
									<li><a href="http://www.kankan.com/" target="_brank" title="迅雷看看">迅雷看看</a></li>
									<li><a href="http://tv.sohu.com/" target="_brank" title="搜狐视频">搜狐视频</a></li>
									<li><a href="http://www.360kan.com/index.html" target="_brank" title="360影视">360影视</a></li>
									<li><a href="http://www.ku6.com/" target="_brank" title="酷6网">酷6网</a></li>
									<li><a href="http://www.pps.tv/" target="_brank" title="PPS影音">PPS影音</a></li>
									<li><a href="http://www.m1905.com/" target="_brank" title="m1905电影网">m1905电影网</a></li>
									<li><a href="http://tv.cntv.cn/epg" target="_brank" title="央视网络电视">央视网络电视</a></li>
								</ul>
							</div>
						</div>	
						<div class="zhitems">
							<!-- 综合音乐 -->
							<div class="music">
								<ul>
									<li><a href="http://www.kugou.com/" target="_brank" title="酷狗音乐">酷狗音乐</a></li>
									<li><a href="http://www.1ting.com/" target="_brank" title="一听音乐网">一听音乐网</a></li>
									<li><a href="http://www.9ku.com/" target="_brank" title="九酷音乐网">九酷音乐网</a></li>
									<li><a href="http://music.baidu.com/" target="_brank" title="百度音乐">百度音乐</a></li>
									<li><a href="http://www.kuwo.cn/" target="_brank" title="酷我音乐">酷我音乐</a></li>
									<li><a href="http://music.hao123.com/" target="_brank" title="hao123音乐">hao123音乐</a></li>
									<li><a href="http://music.163.com/" target="_brank" title="网易云音乐">网易云音乐</a></li>
									<li><a href="http://www.xiami.com/" target="_brank" title="虾米音乐">虾米音乐</a></li>
									<li><a href="http://y.qq.com/" target="_brank" title="QQ音乐">QQ音乐</a></li>
									<li><a href="http://www.yinyuetai.com/" target="_brank" title="音悦台">音悦台</a></li>
									<li><a href="http://douban.fm/" target="_brank" title="豆瓣音乐">豆瓣音乐</a></li>
									<li><a href="http://www.duomi.com/" target="_brank" title="多米音乐">多米音乐</a></li>
									<li><a href="http://www.migu.cn/" target="_brank" title="咪咕音乐">咪咕音乐</a></li>
									<li><a href="http://www.songtaste.com/" target="_brank" title="songtaste">songtaste</a></li>
									<li><a href="http://www.ttpod.com/" target="_brank" title="天天音乐">天天音乐</a></li>
									<li><a href="http://music.sogou.com/" target="_brank" title="搜狗音乐">搜狗音乐</a></li>
									<li><a href="http://www.qiyi.com/yinyue/" target="_brank" title="爱奇艺音乐">爱奇艺音乐</a></li>
									<li><a href="http://fm.mp3.baidu.com/" target="_brank" title="百度随心听">百度随心听</a></li>
									<li><a href="http://www.a8.com/" target="_brank" title="A8原创音乐">A8原创音乐</a></li>
									<li><a href="http://www.yue365.com/" target="_brank" title="365音乐网">365音乐网</a></li>
									<li><a href="http://www.9sky.com/" target="_brank" title="九天音乐">九天音乐</a></li>
								</ul>
							</div>
						</div>
						<div class="zhitems">
							<!-- 综合软件 -->
							<div class="software">
								<ul>
									<li><a href="http://www.skycn.com/" target="_brank" title="天空下载">天空下载</a></li>
									<li><a href="http://www.onlinedown.net/" target="_brank" title="华军软件园">华军软件园</a></li>
									<li><a href="http://dl.pconline.com.cn/" target="_brank" title="太平洋网下载">太平洋网下载</a></li>
									<li><a href="http://xiazai.zol.com.cn/" target="_brank" title="ZOL下载">ZOL下载</a></li>
									<li><a href="http://www.xdowns.com/" target="_brank" title="绿盟下载">绿盟下载</a></li>
									<li><a href="http://www.cr173.com/" target="_brank" title="西西软件">西西软件</a></li>
									<li><a href="http://www.crsky.com/default.html" target="_brank" title="非凡软件">非凡软件</a></li>
									<li><a href="http://www.xiazaiba.com/" target="_brank" title="下载吧">下载吧</a></li>
									<li><a href="http://tech.sina.com.cn/down/" target="_brank" title="新浪软件下载">新浪软件下载</a></li>
									<li><a href="http://rj.baidu.com/" target="_brank" title="百度软件">百度软件</a></li>
									<li><a href="http://www.pc6.com/" target="_brank" title="PC6下载站">PC6下载站</a></li>
									<li><a href="http://www.uzzf.com/" target="_brank" title="东坡下载">东坡下载</a></li>
									<li><a href="http://www.d9soft.com/" target="_brank" title="第九软件">第九软件</a></li>
									<li><a href="http://www.huacolor.com/" target="_brank" title="华彩软件">华彩软件</a></li>
									<li><a href="http://www.orsoon.com/" target="_brank" title="未来软件园">未来软件园</a></li>
									<li><a href="http://download.pchome.net/" target="_brank" title="pchome下载">pchome下载</a></li>
									<li><a href="http://www.9553.com/" target="_brank" title="9553下载">9553下载</a></li>
									<li><a href="http://www.skycn.net/" target="_brank" title="hao123下载">hao123下载</a></li>
								</ul>
							</div>
						</div>		
						<div class="zhitems">
							<!-- 综合游戏 -->
							<div class="game">
								<ul>
									<li><a href="http://game.hao123.com/" target="_brank" title="hao123游戏">hao123游戏</a></li>
									<li><a href="http://www.4399.com/" target="_brank" title="4399游戏">4399游戏</a></li>
									<li><a href="http://www.37.com/" target="_brank" title="37游戏">37游戏</a></li>
									<li><a href="http://www.17173.com/" target="_brank" title="17173">17173</a></li>
									<li><a href="http://g.360.cn/" target="_brank" title="360游戏导航">360游戏导航</a></li>
									<li><a href="http://www.ali213.net/" target="_brank" title="游侠网">游侠网</a></li>
									<li><a href="http://www.gamersky.com/" target="_brank" title="游民星空">游民星空</a></li>
									<li><a href="http://www.pcgames.com.cn/" target="_brank" title="太平洋游戏网">太平洋游戏网</a></li>
									<li><a href="http://www.duowan.com/" target="_brank" title="多玩游戏网">多玩游戏网</a></li>
									<li><a href="http://games.qq.com/" target="_brank" title="腾讯游戏频道">腾讯游戏频道</a></li>
									<li><a href="http://www.yxdown.com/" target="_brank" title="游迅网">游迅网</a></li>
									<li><a href="http://www.91danji.com/" target="_brank" title="91单机游戏">91单机游戏</a></li>
									<li><a href="http://xyx.hao123.com/" target="_brank" title="hao123小游戏">hao123小游戏</a></li>
									<li><a href="http://www.2144.cn/" target="_brank" title="2144小游戏">2144小游戏</a></li>
									<li><a href="http://wan.360.cn/" target="_brank" title="360游戏">360游戏</a></li>
									<li><a href="http://dnf.qq.com/" target="_brank" title="地下城与勇士">地下城与勇士</a></li>
									<li><a href="http://www.7fgame.com/" target="_brank" title="起凡游戏">起凡游戏</a></li>
								</ul>
							</div>
						</div>		
						<div class="zhitems">
							<!-- 综合银行 -->
							<div class="bank">
								<ul>
									<li><a href="http://www.icbc.com.cn/" target="_brank" title="工商银行">工商银行</a></li>
									<li><a href="http://www.boc.cn/" target="_brank" title="中国银行">中国银行</a></li>
									<li><a href="http://www.cmbchina.com/" target="_brank" title="招商银行">招商银行</a></li>
									<li><a href="http://www.ccb.com/" target="_brank" title="建设银行">建设银行</a></li>
									<li><a href="http://www.abchina.com/" target="_brank" title="农业银行">农业银行</a></li>
									<li><a href="http://www.bankcomm.com/" target="_brank" title="交通银行">交通银行</a></li>
									<li><a href="https://www.alipay.com/" target="_brank" title="支付宝"><span class="iconfont">&#xe661;</span>支付宝</a></li>
									<li><a href="http://www.tenpay.com/" target="_brank" title="财付通"><span class="iconfont">&#xe740;</span>财付通</a></li>
									<li><a href="https://www.99bill.com/" target="_brank" title="快钱">快钱</a></li>
									<li><a href="http://www.hsbc.com.cn/" target="_brank" title="汇丰银行">汇丰银行</a></li>
									<li><a href="http://www.hangseng.com/" target="_brank" title="恒生银行">恒生银行</a></li>
									<li><a href="http://www.hkbea.com.cn/" target="_brank" title="东亚银行">东亚银行</a></li>
									<li><a href="http://www.citibank.com.cn/" target="_brank" title="花旗银行">花旗银行</a></li>
									<li><a href="http://www.bocd.com.cn/" target="_brank" title="成都银行">成都银行</a></li>
									<li><a href="http://www.dongguanbank.cn/" target="_brank" title="东莞银行">东莞银行</a></li>
								</ul>
							</div>
						</div>	
						<div class="zhitems">
							<!-- 综合快递 -->
							<div class="express">
								<ul>
									<li><a href="http://www.deppon.com/" target="_brank" title="德邦物流">德邦物流</a></li>
									<li><a href="http://www.sf-express.com/cn/sc/" target="_brank" title="顺丰快递">顺丰快递</a></li>
									<li><a href="http://www.yto.net.cn/" target="_brank" title="圆通快递">圆通快递</a></li>
									<li><a href="http://www.ems.com.cn/" target="_brank" title="EMS快件">EMS快件</a></li>
									<li><a href="http://www.cre.cn/" target="_brank" title="中铁快运">中铁快运</a></li>
									<li><a href="http://www.fedex.com/cn/" target="_brank" title="联邦快递FedEx">联邦FedEx</a></li>
									<li><a href="http://www.cn.dhl.com/" target="_brank" title="DHL">DHL</a></li>
									<li><a href="http://www.yundaex.com/" target="_brank" title="韵达快递">韵达快递</a></li>
									<li><a href="http://www.sto.cn/" target="_brank" title="申通快递">申通快递</a></li>
									<li><a href="http://www.zto.cn/" target="_brank" title="中通快递">中通快递</a></li>
									<li><a href="http://www.ttkdex.com/" target="_brank" title="天天快递">天天快递</a></li>
									<li><a href="http://www.800bestex.com/" target="_brank" title="百世汇通">百世汇通</a></li>
									<li><a href="http://yjcx.chinapost.com.cn/" target="_brank" title="中国邮政">中国邮政</a></li>
									<li><a href="http://www.ups.com/WebTracking/track?loc=zh_CN&WT.svl=PriNav" target="_brank" title="UPS快递">UPS快递</a></li>
									<li><a href="http://www.apex100.com/" target="_brank" title="中外运全一">中外运全一</a></li>
								</ul>
							</div>
						</div>
						<div class="zhitems">
							<!-- 综合宠物 -->
							<div class="pet">
								<ul>
									<li><a href="http://www.ttpet.com/" target="_brank" title="天天宠物网">天天宠物网</a></li>
									<li><a href="http://www.chinapet.com/" target="_brank" title="宠物中国">宠物中国</a></li>
									<li><a href="http://www.mypethome.com/" target="_brank" title="宠物之家论坛">宠物之家论坛</a></li>
									<li><a href="http://www.goumin.com/" target="_brank" title="狗民网">狗民网</a></li>
									<li><a href="http://pet.pclady.com.cn/" target="_brank" title="太平洋宠物">太平洋宠物</a></li>
									<li><a href="http://www.aigou.com/" target="_brank" title="爱狗网">爱狗网</a></li>
									<li><a href="http://www.goupuzi.com/" target="_brank" title="狗铺子">狗铺子</a></li>
									<li><a href="http://www.chongwujiaoyi.com/" target="_brank" title="宠物交易平台">宠物交易平台</a></li>
									<li><a href="http://longyu.cc/" target="_brank" title="龙鱼之巅">龙鱼之巅</a></li>
									<li><a href="http://www.cndog.net/" target="_brank" title="名犬网">名犬网</a></li>
								</ul>
							</div>
						</div>	
					</div>								
				</div>	
				<!-- Java推荐 -->				
				<div class="right-item gongchengshi">
					<div class="right-title">Java相关推荐</div>
						<div class="gcitems">
						<ul>
							<li><a href='http://www.yq1012.com/api/' target='_blank'>javaAPI_1.6</a></li>
							<li><a href='http://tool.oschina.net/apidocs/apidoc?api=javaEE5' target='_blank'>javaEE 5.0</a></li>
							<li><a href='http://tool.oschina.net/apidocs/apidoc?api=javaEE6' target='_blank'>javaEE 6.0</a></li>
							<li><a href='http://tool.oschina.net/apidocs/apidoc?api=jdk_6u30' target='_blank'>JDK 1.6</a></li>
							<li><a href='http://tool.oschina.net/apidocs/apidoc?api=jdk_7u4' target='_blank'>JDK 7</a></li>
							<li><a href='http://tool.oschina.net/apidocs/apidoc?api=jdk-zh' target='_blank'>JDK 中文版</a></li>
							<li><a href='http://tool.oschina.net/apidocs/apidoc?api=jquery' target='_blank'>JQuery</a></li>
							
							<li><a href='http://tool.oschina.net/' target='_blank'><span class="iconfont">&#xe7a2;</span>开发工具</a></li>
							<li><a href='http://tool.oschina.net/commons?type=4' target='_blank'>ASCII对照表</a></li>
							<li><a href='http://tool.oschina.net/commons?type=3' target='_blank'>RGB颜色参考</a></li>
							<li><a href='http://tool.oschina.net/commons?type=2' target='_blank'>HTML转义字符</a></li>
							<li><a href='http://tool.oschina.net/commons?type=5' target='_blank'>HTTP状态码</a></li>
							<li><a href='http://tool.oschina.net/commons?type=8' target='_blank'>网页字体</a></li>
							
							<li><a href='http://tool.oschina.net/regex' target='_blank'>正则表达式测试</a></li>
							<li><a href='http://tool.oschina.net/encrypt' target='_blank'>在线加密解密</a></li>
							<li><a href='http://tool.oschina.net/apidocs/apidoc?api=hibernate-4.1.4' target='_blank'>Hibernate文档</a></li>
							<li><a href='http://tool.oschina.net/apidocs/apidoc?api=struts-2.3.4' target='_blank'>Struts文档</a></li>
							<li><a href='http://tool.oschina.net/qr' target='_blank'>二维码生成器</a></li>
							<li><a href='http://tool.oschina.net/jscompress' target='_blank'>js/css压缩</a></li>
							<li><a href='http://tool.oschina.net/codeformat/' target='_blank'>代码格式化</a></li>
							<li><a href='http://runjs.cn/' target='_blank'>js在线编辑</a></li>
							<li><a href='http://tool.oschina.net/highlight' target='_blank'>代码着色</a></li>
							<li><a href='http://ueditor.baidu.com/website/' target='_blank'>Editor插件</a></li>
							
							<li><a href='http://www.apache.org/' target='_blank'>apache</a></li>
							<li><a href='http://www.bootcss.com/' target='_blank'>Bootstrap</a></li>
							<li><a href='https://www.processon.com/' target='_blank'>processon</a></li>
							<li><a href='https://www.worktile.com' target='_blank'>worktile</a></li>
							<li><a href='http://www.github.com' target='_blank'>github</a></li>
							<li><a href='http://www.jq22.com/' target='_blank'>jquery插件库</a></li>
							<li><a href='http://www.52html5.com/' target='_blank'>52html5</a></li>
							<li><a href='http://passport.csdn.net/' target='_blank'>CSDN.net</a></li>
							<li><a href='http://extjs.org.cn/' target='_blank'>extjs中文站</a></li>
							<li><a href='http://www.iconfont.cn/' target='_blank'>阿里图标库</a></li>
							<li><a href='http://www.tanzhouedu.com/' target='_blank'>潭州学院</a></li>
							<li><a href='http://www.iteye.com/' target='_blank'>Iteye</a></li>
						</ul>
					</div>								
				</div>	
			</div>			
		</div>
		
		<div class="items">
			<iframe id="new_frame" src="http://sh.qihoo.com/daohang/" border="0" width="1000px" height="4540px" scrolling="no" allowtransparency="true" frameborder="no"></iframe>
		</div>
		<div class="items">
			<iframe id="new_frame" src="http://cdn.inf.v.360.cn/daohang/dianshi.html" border="0"  width="1000px" height="1500px" scrolling="no" allowtransparency="true" frameborder="no"></iframe>
		</div>
		<div class="items">
			<iframe id="new_frame" src="http://cdn.inf.v.360.cn/daohang/dianying.html" border="0"  width="1000px" height="1500px" scrolling="no" allowtransparency="true" frameborder="no"></iframe>
		</div>
		<div class="items">
			<iframe id="new_frame" src="http://xyx.hao123.com/xyxSecIframe" border="0"  width="1000px" height="2028px" scrolling="no" allowtransparency="true" frameborder="no"></iframe>
		</div>
		<div class="items">
			<iframe id="new_frame" src="http://book.hao123.com/index123.html"border="0"   width="1000px" height="3071px" scrolling="no" allowtransparency="true" frameborder="no"></iframe>
		</div>
		<div class="clear"></div>
	</div>
</center>



<script type="text/javascript">


	$(".navbox").find("li").on("click",function(){
		var index = $(this).index();
		if(index != 0){
			$(this).addClass("current").siblings().removeClass("current");
		}else{
			$(this).siblings().removeClass("current");
		}
		$(".items").eq(index).stop().show().siblings().hide();
		var height = $(".items").eq(index).height();
		if(height){
			$("footer").css({"top":(height + 180)+"px"});
		}
	});
	
	$(".zonghenav").find("li").on("mouseover",function(){
		var index = $(this).index();
		$(this).addClass("zhsel").siblings().removeClass("zhsel");
		$(".zhitems").eq(index).stop().show().siblings().hide();
	});
	

	/* 获取新闻 */
	$(function() {
		//设置60分钟刷新一次时限
		var time = getCookie("newstime");
		if (time) {
			var t = $.tmDate._numMinute(time, new Date());
			if (t >= 60) {
				getnews();
			}
		}else{
			 getnews();
		}
	});
	
	function getnews(){
		var ctime = $.tmDate._toString(new Date(),"yyyy-MM-dd HH:mm:ss");
		setCookie("newstime", ctime);
		$.ajax({
			url : "${basePath}list.jxp",
			success : function(response) {
				if (response.success) {
					var data = response.result.newss;
					var length = data.length;
					var html = "";
					for (var i = 0; i < length; i++) {
						var title = data[i].title;
						var len = getStrLength(title);
						if (len >= 30) {
							title = getSubStr(title, 0, 30);
						}
						html += "<li><i>"+ (i * 1 + 1)+ "</i><a href="+data[i].href+" target=_brank>"+ title + "</a></li>";
					}
					$(".newitem").find("ul").append(html);
				}
			}
		});
	}
	
</script>
