<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" /><base href="<%=basePath%>">
<title>评价商品</title>
<meta name="keywords" content="DeathGhost,DeathGhost.cn,web前端设,移动WebApp开发" />
<meta name="description" content="DeathGhost.cn::H5 WEB前端设计开发!" />
<meta name="author" content="DeathGhost"/>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jqpublic.js"></script>
<script language="javascript">
function but()
{//验证验证码输入是否正确
     var phone=document.getElementById("phone").value;
     var password=document.getElementById("password").value;
     if(phone==''){
    	 alert("手机号码不能为空!");
     }
     else if(password==''){
    	 alert("密码不能为空!");
     }
     else{
    	 document.getElementById('form1').submit();
     }
    }
</script>
</head>
<body>
<!--Start content-->
<section class="Psection MT20">
 <form action="order/yipingjia.html" id="form1" method="post">
  <table class="login">
  <tr>
  <td width="40%" align="right" class="FontW">内容：</td>
  <td><input type="text" id="phone" name="message_comment" required autofocus placeholder="评价内容"></td>
  </tr>
  <tr>
  <td width="40%" align="right" class="FontW">分数：</td>
  <td><select
			class="form-control" id="a_model" name="message_point">
			<option value="">--请打分--</option>
			<option value="5">5分（非常满意）</option>
			<option value="4">4分（比较满意）</option>
			<option value="3">3分（基本满意）</option>
			<option value="2">2分（不满意）</option>
			<option value="1">1分（非常不满意）</option>		
		</select></td>
  </tr>
  <tr>
  <td width="40%" align="right"></td>
  <td><input type="submit" name="" value="提交评价" class="Submit_b"></td>
  </tr>
  </table>
 </form>
</section>

</footer>

</body>
</html>
