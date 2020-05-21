<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" /><base href="<%=basePath%>">
<title>DeathGhost-提前订餐</title>
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
  
   
   
   
  </ul>
 </nav>
</header>
<!--Start content-->
<section class="Psection MT20">
 <div class="Reserve Overflow">
 <form action="#">
  <table>
  <th>菜品</th>
  <th>数量</th>
  <th>单价</th>
  <th>小计</th>
  <tr>
   <td><a href="detailsp.jsp" title="酸辣土豆丝" target="_blank">酸辣土豆丝</a></td>
   <td><b>1</b></td>
   <td>￥5.90</td>
   <td><b>￥5.90</b></td>
  </tr>
  <tr>
   <td><a href="detailsp.jsp" title="鱼香肉丝" target="_blank">鱼香肉丝</a></td>
   <td><b>2</b></td>
   <td>￥6.00</td>
   <td><b>￥12.00</b></td>
  </tr>
   <tr>
     <td colspan="4">
      <table>
       <tr>
        <td bgcolor="#f8f8f8" class="FontW">餐桌数：</td>
        <td bgcolor="#f8f8f8"><input type="number" name="" class="Number" required></td>
        <td bgcolor="#f8f8f8" class="FontW">就餐人数：</td>
        <td bgcolor="#f8f8f8"><input type="number" name="" class="Number" required></td>
       </tr>
       <tr>
       <td bgcolor="#f8f8f8" class="FontW">就餐时间：</td>
       <td bgcolor="#f8f8f8"><input type="datetime-local" class="Datetime" required>~<input type="datetime-local" class="Datetime" required></td>
       <td bgcolor="#f8f8f8" class="FontW">备注信息：</td>
       <td bgcolor="#f8f8f8"><input type="text" name="" class="input_mark" placeholder="添加备注信息..."></td>
      </tr>
      </table>
     </td>
     </tr>
   <tr>
    <td colspan="4" class="FontW CorRed Font14">共计费用：￥17.90</td>
    </tr>
   <tr>
     <td colspan="4"><input type="submit" name="" value="确认提交订单" class="Submit"></td>
   </tr>
  </table>
  </form>
 </div>
</section>
<!--提交成功之后，将显示如下信息-->
<section class="Psection MT20 Textcenter"  >
  <!-- 订单提交成功后则显示如下 -->
  <p class="Font14 Lineheight35 FontW">恭喜你！订单提交成功！</p>
  <p class="Font14 Lineheight35 FontW">您的订单编号为：<span class="CorRed">201409205134</span></p>
  <p class="Font14 Lineheight35 FontW">请在2014-09-24 11:30 ~ 2014-09-24 14:30进店[ <a href="shop.jsp" target="_blank">好味来快餐店</a> ]就餐</p>
  <p class="Font14 Lineheight35 FontW">地址：陕西省西安市雁塔区丈八北路</p>
  <p class="Font14 Lineheight35 FontW">共计金额：<span class="CorRed">￥17.90</span></p>
  <p><button type="button" class="Submit"><a href="user_center.jsp">进入用户中心</button></p>
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