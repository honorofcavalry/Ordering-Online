<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" /><base href="<%=basePath%>">
<title>我的店铺</title>
<meta name="keywords" content="DeathGhost,DeathGhost.cn,web前端设,移动WebApp开发" />
<meta name="description" content="DeathGhost.cn::H5 WEB前端设计开发!" />
<meta name="author" content="DeathGhost"/>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jqpublic.js"></script>
<script type="text/javascript" src="js/cart.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script>
$(function(){		
	$('.title-list li').click(function(){
		var liindex = $('.title-list li').index(this);
		$(this).addClass('on').siblings().removeClass('on');
		$('.menutab-wrap div.menutab').eq(liindex).fadeIn(150).siblings('div.menutab').hide();
		var liWidth = $('.title-list li').width();
		$('.shopcontent .title-list p').stop(false,true).animate({'left' : liindex * liWidth + 'px'},300);
	});
	
	$('.menutab-wrap .menutab li').hover(function(){
		$(this).css("border-color","#ff6600");
		$(this).find('p > a').css('color','#ff6600');
	},function(){
		$(this).css("border-color","#fafafa");
		$(this).find('p > a').css('color','#666666');
	});
	});
	var mt = 0;
window.onload = function () {
 var Topcart = document.getElementById("Topcart");
   var mt = Topcart.offsetTop;
    window.onscroll = function () {
     var t = document.documentElement.scrollTop || document.body.scrollTop;
      if (t > mt) {
      Topcart.style.position = "fixed";
        Topcart.style.margin = "";
         Topcart.style.top = "200px";
		 Topcart.style.right = "191px";
		 Topcart.style.boxShadow ="0px 0px 20px 5px #cccccc";
		 Topcart.style.top="0";
		 Topcart.style.border="1px #636363 solid";
         }
         else { 
         Topcart.style.position = "static";
		 Topcart.style.boxShadow ="none";
		 Topcart.style.border="";
          }
          }
        }
</script>
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
<section class="Shop-index">
 <article>
  <div class="shopinfor">
   <div class="title">
    <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${shop.shop_name }</span>
   </div>
   <div class="imginfor">
    <div class="shopimg">
     <img src="${shop.shop_imgpath }" id="showimg">
      <ul class="smallpic">
       <li><img src="${shop.shop_imgpath }" onmouseover="show(this)" onmouseout="hide()"></li>
      </ul>
    </div>
    <div class="shoptext">
     <p><span>地址：</span>${shop.shop_address }</p>
     <p><span>电话：</span>${shop.shop_tel }</p>
     <p><span>特色菜品：</span>${shop.shop_good }</p>
     <p><span>营业时间：</span>${shop.shop_hours }</p>
     <p><span>WIFI：</span>${shop.shop_wifi }</p>
     <div class="Button">
      <a href="javascript:void(0)" onclick="document.getElementById('1').scrollIntoView();"><span class="DCbutton">查看菜谱点菜</span></a>
      <a href="user/collection.html?shop_id=${shop.shop_id }" ><span class="DCbutton">收藏店铺</span></a>
     </div>
     <div class="otherinfor">
	 <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=1&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
     </div>
   </div>
  </div>
  <div class="shopcontent">
  <div class="title2 cf">
  <a id="caidan"></a>
    <ul class="title-list fr cf ">
      <li class="on">菜谱</li>
      <li>累计评论</li>
      <!-- <li>店铺留言</li> -->
      <p><b></b></p>
    </ul>
  </div>
  <div class="menutab-wrap">
   <a name="ydwm">
    <!--case1-->
    <div class="menutab show">
	      <c:forEach items="${goodlist}" var="s">
			<ul style="float:left">		
				<li >
				<a href="good/list.html?good_id=${s.good_id }" title="酸辣土豆丝">
				<img src="${s.good_imgpath }" class="foodsimgsize">
				<a href="#" class="item">
				 <div>
				  <p>${s.good_name}</p>
				  <p class="AButton">￥${s.good_price }</p>
				 </div>
				 </a>
				 </li>								
			</ul>
		</c:forEach>
    </div>
    </a>
    <!--case2-->
    <div class="menutab">
     <c:forEach items="${mlist}" var="m">
     <div class="shopcomment">
      <div class="Spname">
       <a href="${m.good_id.good_imgpath }" target="_blank" title="酸辣土豆丝">${m.good_id.good_name }</a>
      </div>
      <div class="C-content">
       <q>${m.comment }</q>
      </div>
      <div class="username">
      ${m.user_id.user_name }
      </div>
      </br>
     </div>
      </c:forEach>
    </div>
    <!--case4-->

    <!--case5-->
     <div class="menutab">
     <span class="Ask"><i>DeathGhost</i>:这里是测试问答？</span>
     <span class="Answer"><i>管理员回复</i>：这里是测试回答！</span>

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
    
     <form class="A-Message" action="#"> 
      <p><i>姓名：</i><input name="usr_name" type="text" autofocus placeholder="张三" required></p>
      <p><i>手机：</i><input name="" type="text" placeholder="15825518***" pattern="[0-9]{11}" required></p>
      <p><i>邮件：</i><input type="email" name="email" autocomplete="off" placeholder="admin@admin.com" required/></p>
      <p><i>问题补充：</i><textarea name="" cols="" rows="" required placeholder="详细说明您的问题..."></textarea></p>
      <p><input type="submit" class="Abutt" /></p>
     </form>
    </div>
  </div>
</div>
 </article>
 <aside>
  <!-- <div class="cart" id="Topcart">
	<span class="Ctitle Block FontW Font14"><a href="cart.jsp" target="_blank">我的购物车</a></span>
	<table id="cartcontent" fitColumns="true">
	<thead>
	<tr> 
	<th width="33%" align="center" field="name">商品</th>
	<th width="33%" align="center" field="quantity">数量</th>
	<th width="33%" align="center" field="price">价格</th>
	</tr>
	</thead>
	</table>
	<p class="Ptc"><span class="Cbutton"><a href="cart.jsp" target="进入购物车">进入购物车</a></span><span class="total">共计金额: ￥0</span></p>
  </div> -->
  
  <!-- <div class="Nearshop">
   <span class="Nstitle">附近其他店铺</span>                                                           
   <ul>
    <li>
     <img src="upload/cc.jpg">
     <p>
     <span class="shopname" title="动态调用完整标题"><a href="detailsp.jsp" target="_blank" title="肯德基">肯德基</a></span>
     <span class="Discolor">距离：1.2KM</span>
     <span title="完整地址title">地址：西安市雁塔区2000号...</span>
     </p>
    </li>
   </ul>
  </div>
  
  <div class="History">
   <span class="Htitle">浏览历史</span>
   <ul>
    <li>
    <a href="detailsp.jsp" target="_blank" title="清真川菜馆"><img src="upload/cc.jpg"></a>
    <p>
     <span class="shopname" title="动态调用完整标题"><a href="detailsp.jsp" target="_blank" title="正宗陕北小吃城">正宗陕北小吃城</a></span>
     <span>西安市莲湖区土门十西安市莲湖区土门十字西安市莲湖区土门十字.</span>
    </p>
    </li>
    <span>[ <a href="#">清空历史记录</a> ]</span>
   </ul>
  </div> -->
 </aside>
 
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
