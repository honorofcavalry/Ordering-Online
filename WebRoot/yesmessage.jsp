<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" /><base href="<%=basePath%>">
<base href="<%=basePath%>">
<title>已回复留言</title>
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

<!--Start content-->
<section class="Psection MT20">

 <article class="U-article Overflow">
  <!--user order list-->
 
<span>
    <table class="Myorder">
    <tr>
     <th class="Font14 FontW">评论ID</th>
     <th class="Font14 FontW">评论菜品</th>
     <th class="Font14 FontW">评论人</th>
     <th class="Font14 FontW">评论内容</th>
     <th class="Font14 FontW">回复内容</th>
     </tr>   
     <c:forEach items="${rlist}" var="c">
     <tr>
      <td class="FontW">${c.message_id.message_id }</td>
      <td>${c.good_id.good_name }</td>
      <td>${c.user_id.user_name }</td>
      <td>${c.message_id.comment }</td>
      <td>${c.reply_comment }</td>
     </tr>     
       </c:forEach>
    </table>
  </span>
 </article>
</section>
<!--End content-->
<div class="F-link">
 </div>
<footer>


</footer>
</body>
</html>
