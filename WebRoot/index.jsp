<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" /><base href="<%=basePath%>"><base href="<%=basePath%>">
<title>首页</title>
<meta name="keywords" content="DeathGhost,DeathGhost.cn,web前端设,移动WebApp开发" />
<meta name="description" content="DeathGhost.cn::H5 WEB前端设计开发!" />
<meta name="author" content="DeathGhost"/>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jqpublic.js"></script>

<script>

</script>
</head>

<body>
<header>
 <section class="Topmenubg">
  <div class="Topnav">
   <div class="LeftNav">
    北二国际大酒楼欢迎您的到来！
   </div>
   <div class="RightNav">
    <a href="user_center.jsp">用户中心</a> <a href="order/list.html" target="_blank" title="我的订单">我的订单</a> <a href="cart/list.html">购物车</a> <a href="user/listshop.html?user_id=${sessionScope.user.user_id }" target="_blank" title="我的收藏">我的收藏</a> <a href="#">商家入驻</a> 
   </div>
  </div>
 </section>
 <div class="Logo_search">
  <div class="Logo"><a href="index.jsp" >
   <img src="images/gannan.jpg" title="DeathGhost" alt="模板"></a>
   <i></i>
   
  </div>
  <div class="Search"> 
   <form method="post" id="main_a_serach" action="good/querygood.html">
   <div class="Search_nav" id="selectsearch">
    <a href="javascript:;" onClick="selectsearch(this,'restaurant_name')" class="choose">食物名</a>
   </div>
   <div class="Search_area"> 
   <input type="search" id="good_name" name="good_name" placeholder="请输入您所需查找的食物名称..." class="searchbox" />
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
<section class="Cfn">
 <aside class="C-left">
  <!-- <div class="S-time">服务时间：周一~周六<time>09:00</time>-<time>23:00</time></div> -->
  <div class="C-time">
   <img src="upload/dc.jpg"/>
  </div>
  <!-- <a href="list.jsp" target="_blank"><img src="images/by_button.png"></a>
  <a href="list.jsp" target="_blank"><img src="images/dc_button.png"></a> -->
 </aside>
 <div class="F-middle">
 <ul class="rslides f426x240">
        <li><a href="good/list.html?good_id=4"><img src="upload/01.jpg"/></a></li>
        <li><a href="good/list.html?good_id=2"><img src="upload/02.jpg" /></a></li>
        <li><a href="good/list.html?good_id=6"><img src="upload/03.jpg"/></a></li>
    </ul>
 </div>
 <aside class="N-right">
 <div class="N-title" style="color:#d3d3d3"></div>
  <div class="C-time">
   <img src="upload/dc.jpg"/>
  </div>
  <script>
	var msg='${msg}';
	if(msg!=""){
	    alert(msg);
	}


   var UpRoll = document.getElementById('UpRoll');
   var lis = UpRoll.getElementsByTagName('li');
   var ml = 0;
   var timer1 = setInterval(function(){
    var liHeight = lis[0].offsetHeight;
    var timer2 = setInterval(function(){
     UpRoll.scrollTop = (++ml);
     if(ml ==1){
        clearInterval(timer2);
        UpRoll.scrollTop = 0;
        ml = 0;
        lis[0].parentNode.appendChild(lis[0]);
    }
    },10); 
    },5000);
   function shop(shop_id)
   {//验证验证码输入是否正确
       alert(shop_id);
       var form = document.getElementById('form');
       form.submit(shop_id);  
	   }
   
  </script>
 </aside>
</section>
<section class="Sfainfor">
 <article class="Sflist">
  <div id="Indexouter">
   <ul id="Indextab">
    <!-- <li class="current">点菜</li>
    <li>餐馆</li>
    <p class="class_B">
    <a href="#">中餐</a>
    <a href="#">西餐</a>
    <a href="#">甜点</a>
    <a href="#">日韩料理</a>
    <span><a href="#" target="_blank">more ></a></span>
    </p> -->
   </ul>
  <div id="Indexcontent">
   <ul style="display:block;">
    <li>

     <div class="SCcontent">
     <a href="good/list.html?good_id=1" target="_blank" title="菜品名称">
      <figure>
       <img src="upload/tds.jpg">
       <figcaption>
       <span class="title">酸辣土豆丝</span>
       <span class="price"><i>￥</i>13.00</span>
       </figcaption>
      </figure>
      </a>
     <a href="good/list.html?good_id=21" target="_blank" title="菜品名称">
      <figure>
       <img src="upload/06.jpg">
       <figcaption>
       <span class="title">外婆菜回锅肉</span>
       <span class="price"><i>￥</i>13.00</span>
       </figcaption>
      </figure>
      </a>
     <a href="good/list.html?good_id=3" target="_blank" title="菜品名称">
      <figure>
       <img src="upload/05.jpg">
       <figcaption>
       <span class="title">干煸肥肠</span>
       <span class="price"><i>￥</i>22.00</span>
       </figcaption>
      </figure>
      </a>
     </div>
     <div class="bestshop">
     <form action="shop/list.html" id="form" method="post"></form>
      <a href="shop/list.html?shop_id=1" title="店铺名称">
      <figure>
       <img src="photo/lianaixiaozhan.jpg">
      </figure>
      </a>
      <a href="shop/list.html?shop_id=2" title="店铺名称">
      <figure>
       <img src="photo/burulaiwan.jpg">
      </figure>
      </a>
      <a  title="店铺名称" href="shop/list.html?shop_id=3">
      <figure>
       <img src="photo/weiduomei.jpg">
      </figure>
      </a>
      <a href="shop/list.html?shop_id=4" title="店铺名称">
      <figure>
       <img src="upload/weijia.jpg">
      </figure>
      </a>
      <a href="shop/list.html?shop_id=5" title="店铺名称">
      <figure>
       <img src="upload/wpjnewlogo.jpg">
      </figure>
      </a>
     
     </div>
    </li>
   </ul>
   <ul>
  <li>
     <div class="DCcontent">
       <a href="shop.jsp" target="_blank" title="TITLE:店名">
       <figure>
       <img src="upload/cc.jpg">
       <figcaption>
       <span class="title">老重庆川菜馆</span>
       <span class="price">预定折扣：<i>8.9折</i></span>
       </figcaption>
       <p class="p1"><q>仅售169元！价值289元的4-5人餐，提供免费WiFi。</q></p>
       <p class="p2">
       店铺评分：
       <img src="images/star-on.png">
       <img src="images/star-on.png">
       <img src="images/star-on.png">
       <img src="images/star-on.png">
       <img src="images/star-off.png">
       </p>
       <p class="p3">店铺地址：西安市雁塔区丈八路***老重庆川菜馆...</p>
       </figure>
      </a>
       <a href="shop.jsp" target="_blank" title="TITLE:店名">
       <figure>
       <img src="upload/cc.jpg">
       <figcaption>
       <span class="title">老重庆川菜馆</span>
       <span class="price">预定折扣：<i>8.9折</i></span>
       </figcaption>
       <p class="p1"><q>仅售169元！价值289元的4-5人餐，提供免费WiFi。</q></p>
       <p class="p2">
       店铺评分：
       <img src="images/star-on.png">
       <img src="images/star-on.png">
       <img src="images/star-on.png">
       <img src="images/star-on.png">
       <img src="images/star-off.png">
       </p>
       <p class="p3">店铺地址：西安市雁塔区丈八路***老重庆川菜馆...</p>
       </figure>
      </a>
       <a href="shop.jsp" target="_blank" title="TITLE:店名">
       <figure>
       <img src="upload/cc.jpg">
       <figcaption>
       <span class="title">老重庆川菜馆</span>
       <span class="price">预定折扣：<i>8.9折</i></span>
       </figcaption>
       <p class="p1"><q>仅售169元！价值289元的4-5人餐，提供免费WiFi。</q></p>
       <p class="p2">
       店铺评分：
       <img src="images/star-on.png">
       <img src="images/star-on.png">
       <img src="images/star-on.png">
       <img src="images/star-on.png">
       <img src="images/star-off.png">
       </p>
       <p class="p3">店铺地址：西安市雁塔区丈八路***老重庆川菜馆...</p>
       </figure>
      </a>
     </div>
  </li>
  </ul>
 </div>
 </div>
 </article>
 <aside class="A-infor">
  <img src="upload/2014911.jpg">
  <div class="usercomment">
   <!--<span>用户菜品点评</span>
    <ul>
    <li>
     <img src="upload/01.jpg">
     用户“DeathGhost”对[ 老李川菜馆 ]“酸辣土豆丝”评说：味道挺不错，送餐速度挺快...
    </li>
    <li>
     <img src="upload/02.jpg">
     用户“DeathGhost”对[ 魏家凉皮 ]“酸辣土豆丝”评说：味道挺不错，送餐速度挺快...
    </li>
   </ul> -->
   <img src="images/meishi.jpg">
  </div>
 </aside>
</section>
<!--End content-->
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
    <p><time>07：00</time>~<time>22:00</time></p>
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
