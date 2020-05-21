<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" /><base href="<%=basePath%>">
<title>DeathGhost-产品分类页面</title>
<meta name="keywords" content="DeathGhost,DeathGhost.cn,web前端设,移动WebApp开发" />
<meta name="description" content="DeathGhost.cn::H5 WEB前端设计开发!" />
<meta name="author" content="DeathGhost"/>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jqpublic.js"></script>
<!--
Author: DeathGhost
Author URI: http://www.deathghost.cn
-->
</head>
<body>
<header>
 <section class="Topmenubg">
  <div class="Topnav">
   <div class="LeftNav">
    <!-- <a href="register.jsp">注册</a>/<a href="login.jsp">登录</a><a href="#">QQ客服</a><a href="#">微信客服</a><a href="#">手机客户端</a> -->
   </div>
   <div class="RightNav">
    <a href="user_center.jsp">用户中心</a> <a href="order/list.html" target="_blank" title="我的订单">我的订单</a> <a href="cart/list.html">购物车</a> <a href="user/listshop.html?user_id=${sessionScope.user.user_id }" target="_blank" title="我的收藏">我的收藏</a>  
   </div>
  </div>
 </section>
 <div class="Logo_search">
  <div class="Logo"><a href="index.jsp" >
   <img src="images/gannan.jpg" title="DeathGhost" alt="模板"></a>
   <i></i>
   <!-- <span>西安市 [ <a href="#">莲湖区</a> ]</span> -->
  </div>
  <div class="Search"> 
   <form method="post" id="main_a_serach" action="good/querygood.html">
   <div class="Search_nav" id="selectsearch">
    <a href="javascript:;" onClick="selectsearch(this,'restaurant_name')" class="choose">食物名</a>
    
   </div>
   <div class="Search_area"> 
   <input type="search" id="fkeyword" name="keyword" placeholder="请输入您所需查找的食物名称..." class="searchbox" />
   <input type="submit" class="searchbutton" value="搜 索" />
   </div>
   </form>
   
  </div>
 </div>
 <nav class="menu_bg">
  <center><img src="images/xinfu.jpg" /></center>
  
   
   
   
  </ul>
 </nav>
</header>
<!--Start content-->
<section class="Psection">
 <section class="fslist_navtree">
  <ul class="select">
		<li class="select-list">
			<dl id="select1">
				<dt>分类：</dt>
				<dd class="select-all selected"><a href="javascript:">全部</a></dd>
				<dd><a href="javascript:">火锅/干锅</a></dd>
                <dd><a href="javascript:">火锅/干锅</a></dd>
                <dd><a href="javascript:">火锅/干锅</a></dd>
                <dd><a href="javascript:">火锅/干锅</a></dd>
                <dd><a href="javascript:">火锅/干锅</a></dd>
                <dd><a href="javascript:">火锅/干锅</a></dd>
                <dd><a href="javascript:">火锅/干锅</a></dd>
                <dd><a href="javascript:">火锅/干锅</a></dd>
                <dd><a href="javascript:">火锅/干锅</a></dd>
                <dd><a href="javascript:">火锅/干锅</a></dd>
                <dd><a href="javascript:">火锅/干锅</a></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select2">
				<dt>位置：</dt>
				<dd class="select-all selected"><a href="javascript:">全部</a></dd>
				<dd><a href="javascript:">高新区</a></dd>
                <dd><a href="javascript:">未央区</a></dd>
                <dd><a href="javascript:">碑林区</a></dd>
                <dd><a href="javascript:">阎良区</a></dd>
                <dd><a href="javascript:">新城区</a></dd>
                <dd><a href="javascript:">雁塔区</a></dd>
                <dd><a href="javascript:">莲湖区</a></dd>
                <dd><a href="javascript:">灞桥区</a></dd>
                <dd><a href="javascript:">高陵区</a></dd>
                <dd><a href="javascript:">周至县</a></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select3">
				<dt>餐点：</dt>
				<dd class="select-all selected"><a href="javascript:">全部</a></dd>
				<dd><a href="javascript:">早餐</a></dd>
			</dl>
		</li>
        <li class="select-list">
			<dl id="select4">
				<dt>价位区间：</dt>
				<dd class="select-all selected"><a href="javascript:">全部</a></dd>
				<dd><a href="javascript:">20元以下</a></dd>
                <dd><a href="javascript:">20-40元</a></dd>
                <dd><a href="javascript:">40-60元</a></dd>
                <dd><a href="javascript:">60-80元</a></dd>
                <dd><a href="javascript:">80-100元</a></dd>
			</dl>
		</li>
		<li class="select-result">
			<dl>
			 <dd class="select-no">已选择：</dd>
			</dl>
		</li>
	</ul>
 </section>
<section class="Fslmenu">
 <a href="#" title="默认排序">
  <span>
  <span>默认排序</span>
  <span></span>
  </span>
 </a>
 <a href="#" title="评价">
  <span>
  <span>评价</span>
  <span class="s-up"></span>
  </span>
 </a>
 <a href="#" title="销量">
  <span>
  <span>销量</span>
  <span class="s-up"></span>
  </span>
 </a>
 <a href="#" title="价格排序">
  <span>
  <span>价格</span>
  <span class="s-down"></span>
  </span>
 </a>
 <a href="#" title="发布时间排序">
  <span>
  <span>发布时间</span>
  <span class="s-up"></span>
  </span>
 </a>
</section>
<section class="Fsl">
 <ul>
  <li>
   <a href="shop.jsp" target="_blank" title="调用产品名/店铺名"><img src="upload/03.jpg"></a>
   <hgroup>
   <h3>【大明宫】***川菜馆</h3>
   <h4></h4>
   </hgroup>
   <p>菜系：川湘菜</p>
   <p>地址：西安市莲湖区土门十字往右100米</p>
   <p>人均：20~50元</p>
   <p>
    <span class="Score-l">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="Score-v">4.8</span>
    </span>
    <span class="DSBUTTON"><a href="shop.jsp" target="_blank" class="Fontfff">点外卖</a></span>
   </p>
  </li>
  <li>
   <a href="shop.jsp" target="_blank" title="调用产品名/店铺名"><img src="upload/03.jpg"></a>
   <hgroup>
   <h3>【大雁塔】***川菜馆</h3>
   <h4></h4>
   </hgroup>
   <p>菜系：川湘菜</p>
   <p>地址：西安市莲湖区土门十字往右100米</p>
   <p>人均：20~50元</p>
   <p>
    <span class="Score-l">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="Score-v">4.8</span>
    </span>
    <span class="DSBUTTON"><a href="shop.jsp" target="_blank" class="Fontfff">点外卖</a></span>
   </p>
  </li>
  <li>
   <a href="shop.jsp" target="_blank" title="调用产品名/店铺名"><img src="upload/03.jpg"></a>
   <hgroup>
   <h3>【南稍门】***川菜馆</h3>
   <h4></h4>
   </hgroup>
   <p>菜系：川湘菜</p>
   <p>地址：西安市莲湖区土门十字往右100米</p>
   <p>人均：20~50元</p>
   <p>
    <span class="Score-l">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="Score-v">4.8</span>
    </span>
    <span class="DSBUTTON"><a href="shop.jsp" target="_blank" class="Fontfff">点外卖</a></span>
   </p>
  </li>
  <li>
   <a href="shop.jsp" target="_blank" title="调用产品名/店铺名"><img src="upload/03.jpg"></a>
   <hgroup>
   <h3>【小雁塔】***川菜馆</h3>
   <h4></h4>
   </hgroup>
   <p>菜系：川湘菜</p>
   <p>地址：西安市莲湖区土门十字往右100米</p>
   <p>人均：20~50元</p>
   <p>
    <span class="Score-l">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="Score-v">4.8</span>
    </span>
    <span class="DSBUTTON"><a href="shop.jsp" target="_blank" class="Fontfff">点外卖</a></span>
   </p>
  </li>
 </ul>
 <aside>
  <div class="title">热门商家</div>
  <div class="C-list">
   <a href="shop.jsp" target="_blank" title="店铺名称"><img src="upload/cc.jpg"></a>
   <p><a href="shop.jsp" target="_blank">[大雁塔]店铺名称</a></p>
   <p>
   <span>人均：20~50元</span>
   <span style=" float:right">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="ALscore">4.8</span>
   </span>
   </p>
  </div>
  <div class="C-list">
   <a href="shop.jsp" target="_blank" title="店铺名称"><img src="upload/cc.jpg"></a>
   <p><a href="shop.jsp" target="_blank">[大雁塔]店铺名称</a></p>
   <p>
   <span>人均：20~50元</span>
   <span style=" float:right">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="ALscore">4.8</span>
   </span>
   </p>
  </div>
 </aside>
 <div class="TurnPage">
  <a href="#">
  <span class="Prev"><i></i>首页</span>
  </a>
  <a href="#"><span class="PNumber">1</span></a>
  <a href="#"><span class="PNumber">2</span></a>
  <a href="#">
  <span class="Next">最后一页<i></i></span>
  </a>
 </div>
</section>
</section>
<!--End content-->
<div class="F-link">
  <!-- <span>友情链接：</span>
  <a href="http://www.deathghost.cn" target="_blank" title="DeathGhost">DeathGhost</a>
  <a href="http://www.17sucai.com/pins/15966.jsp" target="_blank" title="免费后台管理模板">绿色清爽版通用型后台管理模板免费下载</a>
  <a href="http://www.17sucai.com/pins/17567.jsp" target="_blank" title="果蔬菜类模板源码">jsp5果蔬菜类模板源码</a>
  <a href="http://www.17sucai.com/pins/14931.jsp" target="_blank" title="黑色的cms商城网站后台管理模板">黑色的cms商城网站后台管理模板</a> -->
 </div>
<footer>
 <section class="Otherlink">
  <aside>
   <div class="ewm-left">
    
    
    <img src="images/beier.jpg">
   </div>
   <div class="tips">
    <p>客服热线</p>
    <p><i>0797-8316800</i></p>
    <p>配送时间</p>
    <p><time>09：00</time>~<time>22:00</time></p>
    <p>网站公告</p>
   </div>
  </aside>
  <section>
    <div>
    <span><i class="i1"></i>配送支付</span>
    <ul>
     <li><a href="article_read.jsp" target="_blank" title="标题">支付方式</a></li>
     <li><a href="article_read.jsp" target="_blank" title="标题">配送方式</a></li>
     <li><a href="article_read.jsp" target="_blank" title="标题">配送效率</a></li>
     <li><a href="article_read.jsp" target="_blank" title="标题">服务费用</a></li>
    </ul>
    </div>
    <div>
    <span><i class="i2"></i>关于我们</span>
    <ul>
     <li><a href="article_read.jsp" target="_blank" title="标题">招贤纳士</a></li>
     <li><a href="article_read.jsp" target="_blank" title="标题">网站介绍</a></li>
     <li><a href="article_read.jsp" target="_blank" title="标题">配送效率</a></li>
     <li><a href="article_read.jsp" target="_blank" title="标题">商家加盟</a></li>
    </ul>
    </div>
    <div>
    <span><i class="i3"></i>帮助中心</span>
    <ul>
     <li><a href="article_read.jsp" target="_blank" title="标题">服务内容</a></li>
     <li><a href="article_read.jsp" target="_blank" title="标题">服务介绍</a></li>
     <li><a href="article_read.jsp" target="_blank" title="标题">常见问题</a></li>
     <li><a href="article_read.jsp" target="_blank" title="标题">网站地图</a></li>
    </ul>
    </div>
  </section>
 </section>
<!-- <div class="copyright">© 版权所有 2016 DeathGhost 技术支持：<a href="http://www.deathghost.cn" title="DeathGhost">DeathGhost</a></div> -->
</footer>
</body>
</html>
