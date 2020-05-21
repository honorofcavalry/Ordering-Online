<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" /><base href="<%=basePath%>">
<title>关于订餐</title>
<meta name="keywords" content="DeathGhost,DeathGhost.cn,web前端设,移动WebApp开发" />
<meta name="description" content="DeathGhost.cn::H5 WEB前端设计开发!" />
<meta name="author" content="DeathGhost"/>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jqpublic.js"></script>
<script type="text/javascript" src="js/cart.js"></script>
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
 </nav>
</header>
<!--Start content-->
<section class="Psection MT20">
 <article class="A-left Overflow">
  <h1 class="Font16 FontW classtitle">孙子兵法-计篇</h1>
  <div class="A-read">
      孙子曰:兵者，国之大事，死生之地，存亡之道，不可不察也。

故经之以五事，校之以计，而索其情:一曰道，二曰天，三曰地，四曰将，五曰法。

道者，令民于上同意，可与之死，可与之生，而不危也；天者，阴阳、寒暑、时制也；地者，远近、险易、广狭、死生也；将者，智、信、仁、勇、严也；法者，曲制、官道、主用也。

凡此五者，将莫不闻，知之者胜，不知之者不胜。

故校之以计，而索其情，曰:主孰有道？

将孰有能？

天地孰得？

法令孰行？

兵众孰强？

士卒孰练？

赏罚孰明？

吾以此知胜负矣。

将听吾计，用之必胜，留之；将不听吾计，用之必败，去之。

计利以听，乃为之势，以佐其外。

势者，因利而制权也。

兵者，诡道也。

故能而示之不能，用而示之不用，近而示之远，远而示之近。

利而诱之，乱而取之，实而备之，强而避之，怒而挠之，卑而骄之，佚而劳之，亲而离之，攻其无备，出其不意。

此兵家之胜，不可先传也。

夫未战而庙算胜者，得算多也；未战而庙算不胜者，得算少也。

多算胜少算，而况于无算乎!

吾以此观之，胜负见矣。<br/>
  </div>
 </article>
</section>
<!--End content-->
<div class="F-link">
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
</footer>>
</body>
</html>
