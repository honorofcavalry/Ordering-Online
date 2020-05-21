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
<title>购物车</title>
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
<form action="#">
 <div class="gwc" style=" margin:auto;">
  <table cellpadding="0" cellspacing="0" class="gwc_tb1">
    <tr>
      <td class="tb1_td1"><!-- <input id="Checkbox1" type="checkbox"  class="allselect"/> --></td>
      <td class="tb1_td1">全选</td>
      <td class="tb1_td3">商品</td>
     <!--  <td class="tb1_td4">原价</td> -->
      <td class="tb1_td5">数量</td>  
      <td class="tb1_td6">单价</td>
      <td class="tb1_td7">操作</td>
    </tr>
  </table>
  <table cellpadding="0" cellspacing="0" class="gwc_tb2" id="table1">
  <c:forEach items="${clist}" var="c">
    <tr>
     <td colspan="7" class="shopname Font14 FontW">${c.good_shopname }</td>
    </tr>
    <tr>
      <td class="tb2_td1"><!-- <input type="checkbox" value="1" name="newslist" id="newslist-1" /> --></td>
      <td class="tb2_td2"><a href="detailsp.jsp" target="_blank"><img src="${c.good_imgpath }"/></a></td>
      <td class="tb2_td3"><span  >${c.good_name }</span></td>
      <!-- <td class="tb1_td4"><s>￥59.00</s></td> -->
     <!--  <td class="tb1_td5"><input id="min1" name=""  style="width:30px; height:30px;border:1px solid #ccc;" type="button" value="-" />
        <input id="text_box1" name="" type="text" value="1" style=" width:40px;height:28px; text-align:center; border:1px solid #ccc;" />
        <input id="add1" name="" style="width:30px; height:30px;border:1px solid #ccc;" type="button" value="+" />
      </td> -->
      <!-- <td class="tb1_td6"><label id="total1" class="tot" style="color:#ff5500;font-size:14px; font-weight:bold;"></label></td> -->
      <td class="tb2_td5" style="position:relative;left:50px;"><span >${c.good_sum }</span></td>
      <td class="tb2_td6" style="position:relative;left:50px;"><span >${c.good_price }</span></td>
      <td class="tb1_td7" style="position:relative;right:130px;"><a href="cart/delete.html?good_id=${c.good_id }" id="delcart1">删除</a></td>
    </tr>
    </c:forEach>
  </table>
  <table cellpadding="0" cellspacing="0" class="gwc_tb3">
    <tr>
      <td class="tb3_td2 GoBack_Buy Font14"><a href="index.jsp" target="_blank">继续购物</a></td>
      <td class="tb3_td3">合计(不含运费):<span>￥</span><span style=" color:#ff5500;">
        <label id="zong1" style="color:#ff5500;font-size:14px; font-weight:bold;">${total }</label>
        </span></td>
      <td class="tb3_td4"><a href="cart/order.html"   class="jz2" id="jz2">结算</a></td>
    </tr>
  </table>
</div>
</form>
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
