<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" /><base href="<%=basePath%>">
<title>登录</title>
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
 <form action="user/shoplogin.html" id="form1" method="post">
  <table class="login">
  <tr>
  <td width="40%" align="right" class="FontW">账号：</td>
  <td><input type="text" id="phone" name="user_tel" required autofocus placeholder="手机号码"></td>
  </tr>
  <tr>
  <td width="40%" align="right" class="FontW">密码：</td>
  <td><input type="password" id="password" name="user_pwd" required></td>
  </tr>
  <tr>
  <td width="40%" align="right"></td>
  <td><input type="button" name="" value="登 录" class="Submit_b" onClick="but()"></td>
  </tr>
  </table>
 </form>
</section>

</footer>
-->
</body>
</html>
