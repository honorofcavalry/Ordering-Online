<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
<link href="css/Site.css" rel="stylesheet" type="text/css" />
		<link href="css/zy.layout.css" rel="stylesheet" />
		<link href="css/zy.form.css" rel="stylesheet" />
		<link href="css/font-awesome.min.css" rel="stylesheet" />
		

		  	<link rel="stylesheet" />   
	 	<link rel="stylesheet" href="css/Site.css" />    
	  <link rel="stylesheet" href="css/zy.all.css" />    
		
		<link rel="stylesheet" href="css/font-awesome.min.css" />  
		
	<!--	 <link rel="stylesheet" href="css/amazeui.min.css" />   样式冲突   -->
		
		
 	<!--	<link rel="stylesheet" href="css/admin.css" />  样式冲突   -->
		
		 <link href="css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="css/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="css/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/boot-crm.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/my97/WdatePicker.js"></script>
		
		
		
		<style type="text/css">
	

.dropbtn:hover, .dropbtn:focus {
    background-color: ;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #ffffff;
    min-width: 160px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: #000000;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown a:hover {background-color: #f1f1f1}
	



	
.show {display:block;}
			
			
			.headerlitooleulsubitem_gray {
				background-Color: White;
				position: absolute;
				border-left: 1px solid #BCD4E5;
				border-right: 1px solid #BCD4E5;
				border-bottom: 1px solid #BCD4E5;
				box-shadow: 0px 0px 5px #BCD4E5;
				width: 230px;
				margin-left: -170px;
				color: Black;
				display: none;
			}
			
			.headerlitooleulsubitem_red {
				background-Color: White;
				position: absolute;
				border-left: 1px solid #E5BCD4;
				border-right: 1px solid #E5BCD4;
				border-bottom: 1px solid #E5BCD4;
				box-shadow: 0px 0px 5px #E5BCD4;
				width: 230px;
				margin-left: -170px;
				color: Black;
				display: none;
			}
			
			.headerlitooleulsubitem_gray>li,
			.headerlitooleulsubitem_red>li {
				height: 45px;
				background-color: White;
				padding: 0px 10px;
				border-bottom: 1px solid #E4ECF3;
				font-size: 14px;
				line-height: 26px;
			}
			
			.headerlitoolelisubitemtitle_gray {
				height: 35px !important;
				line-height: 35px !important;
				background-color: #ECF2F7 !important;
				margin: 0px !important;
				color: #8090A0 !important;
				font-size: 14px;
				font-weight: bold;
				border-bottom: 1px solid #BCD4E5 !important;
			}
			
			.headerlitoolelisubitemtitle_red {
				height: 35px !important;
				line-height: 35px !important;
				background-color: #F7ECF2 !important;
				margin: 0px !important;
				color: #B471A0 !important;
				font-size: 14px;
				font-weight: bold;
				border-bottom: 1px solid #E5BCD4 !important;
			}
			
			.headerlitooleulsubitem_gray>li:hover {
				background-Color: #F4F9FC;
			}
			
			.headerlitooleulsubitem_red>li:hover {
				background-color: #FCF4F9;
			}
			
			.ulsubitemitems>li {
				float: left;
				height: 20px;
				font-size: 13px;
				font-weight: normal !important;
				color: #555 !important;
			}
			
			.ulsubitemitems>li:last-child {
				clear: both;
				width: 100%;
				height: 10px;
				margin-top: 8px;
				background-color: #DADADA;
			}
			
			.headerlitools_info {
				background-color: #0a318d;
				height: 45px;
				padding: 0px 10px;
				width: 135px;
			}
			
			.headeruserface {
				background-image: url('/content/resources/images/logo.png');
				width: 40px;
				height: 40px;
				background-color: white;
				margin: 2px 10px 2px 2px;
				border-radius: 20px;
				float: left;
			}
			
			.headerlitools_ulinfo {
				background-Color: white;
				border-left: 1px solid #D1D1D1;
				border-right: 1px solid #D1D1D1;
				border-bottom: 1px solid #D1D1D1;
				box-shadow: 0px 0px 5px #D1D1D1;
				width: 160px;
				margin-left: -20px;
				color: Black;
				display: none;
			}
			
			.headerlitools_ulinfo>li {
				height: 35px;
				background-color: White;
				padding: 0px 10px;
				font-size: 14px;
				line-height: 36px;
			}
			
			.headerlitools_ulinfo>li:hover {
				background-Color: #FEE188;
			}
			
			.dvcontent {
				padding: 0px 20px;
				margin: 45px auto 0px auto;
				overflow: auto;
			}
			
			.dvpagerecord {
				padding: 6px 12px;
				background-color: #EAEFF2;
				color: #2283C5;
				float: left;
				border: 1px solid #D9D9D9;
				text-decoration: underline;
				font-size: 14px;
				cursor: pointer;
			}
			
			.dvpagerecord:hover {
				cursor: pointer;
			}
			
			.dvpagerecord:hover i {
				text-decoration: underline;
			}
			
			.ulpageRecord {
				max-width: 165px;
				float: left;
				white-space: nowrap;
				overflow: hidden;
				margin: 0px;
				padding: 0px;
			}
			
			.ulpageRecord li {
				margin: 0px;
				padding: 6px 12px;
				background-color: #EAEFF2;
				color: #2283C5;
				display: inline-block;
				font-size: 14px;
				border: 1px solid #D9D9D9;
			}
			
			.ulpageRecord li:hover {
				text-decoration: underline;
				cursor: pointer;
			}
			
			.currentPage {
				background-color: #2468a9 !important;
				color: white !important;
			}
			
			#warn {
				width: 300px;
			}
			
			#warn tr {
				width: 300px;
				height: 20px;
			}
			
			#warn tr td {
				width: 90px;
				height: 20px;
				text-align: center;
			}
			
			iframe {
				border: none;
			}
		</style>
		<link href="css/zy.menu.css" rel="stylesheet" />

  <script type="text/javascript">
   var msg='${msg}';
   if(msg!=""){
       alert(msg);
   }
  function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
  }
// 点击下拉菜单意外区域隐藏
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }

}
function f(str){
	var sub_mun = document.getElementById(str);
	var dis_v = sub_mun.style.display;
	
	if(dis_v == "block"){
		sub_mun.style.display = "none";
	}else{
		sub_mun.style.display = "block";
	}
}

</script>

  </head>
  
  <body>
  	<div class="dvcontent">
    <div class="dvheader">
			<div class="dvheadertools">
				<span class="headerspantitle">后台管理系统</span>
				<ul class="headerultools">
					<li class="headerlitools_info headerlitools" style="background-color: #075597">
						<div class="dropdown">
							<div class="dropbtn" onclick="myFunction()">
								<div class="headeruserface" style="text-align: center;">
								<i class="icon-user" style="color: black;font-size: 19px;">
								</i></div>
								${user.user_name }<i style="margin-left: 8px;" class="icon-caret-down"></i>
							</div>
							<div id="myDropdown" class="dropdown-content">
								 <a data-toggle="modal"
											data-target="#updatePassword"
											onclick="editCustomer()">修改密码</a>  
								<a href="#exit">退出系统</a>
						</div>
						</div>
					</li>				
				</ul>
			</div>
		</div>
		<div class="dvcontent">
			<ul class="ulleftmenu" style="border-right: 1px solid #ddd; " >
			<div class="dropdown2">
				<c:forEach items="${mlist }" var="pmenu" >
				<li class="limenuitem"  >
						<i class="icon-cog menuicon"></i>
						<a href="${pmenu.m_link }" target="right" onclick="f('${pmenu.m_name }')" >${pmenu.m_name }</a>
						<b class="arrow icon-angle-down arrow-down"></b>				
						<%-- <ul class="ulleftsubitems" style="display: none;" id="${pmenu.m_name }" >
						<c:forEach items="${menumap[pmenu.id] }" var="menu" >
							<a href="${menu.m_link }" target="right">
								<li>${menu.m_name }</li>
							</a>
						</c:forEach>
						</ul> --%>
					
				</li>
				</c:forEach>
				</div>
			</ul>
			<div style="position: absolute; left: 191px; right: 20px; ">
				<iframe src="cart/querylist.html" scrolling="no"  width="100%" height="1200" name="right" border="none"></iframe>
			</div>
		</div>
		
		<!--class="modal fade"   
		class="modal-dialog"  class="modal-content"   	<div class="modal-header">  
		class="close" 
		class="modal-title"
		class="modal-body"
		class="form-horizontal"
		class="form-group"
		class="col-sm-2
		class="form-control"
		class="btn btn-default"
		class="btn btn-primary"
		-->
		
		
	<div class="modal fade" id="updatePassword" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改员工密码</h4>
				</div>
				
				<div class="modal-body">
					<form class="form-horizontal" id="edit_customer_form">
						<input type="hidden" id="edit_cust_id" name="uid" />
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">
								员工编号 </label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="employeeid"
									 value="${employee.e_number}" name="uname" readonly="readonly">
							</div>
						</div>
						
						<div class="form-group">
							<label for="edit_linkMan" class="col-sm-2 control-label">
								旧密码 </label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="oldPwd"
									 value="" name="shouji" placeholder="请输入旧密码" onblur="judge(this.value)"/>
							</div>
						</div>
						
					    <div class="form-group">
							<label for="edit_linkMan" class="col-sm-2 control-label">
								新密码 </label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="newPwd"
									 value="" name="shouji" placeholder="请输入新密码"/>
							</div>
						</div>
						
					</form>
					
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						关闭</button>
					<button type="button" class="btn btn-primary"
						onclick="updatePassword()">保存修改</button>
				</div>
				</div>
				</div>
				</div>
			</div>
		
	
	</div>
		<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
		<script src="js/plugs/Jqueryplugs.js" type="text/javascript"></script>
		<script src="js/_layout.js"></script>
		<script src="js/plugs/jquery.SuperSlide.source.js"></script>

        <script src="<%=basePath%>js/jquery.min.js"></script>
		<script src="<%=basePath%>js/bootstrap.min.js"></script>
		<script src="<%=basePath%>js/metisMenu.min.js"></script>
		<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
		<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
		<script src="<%=basePath%>js/sb-admin-2.js"></script>	
		
		<script>		
	    		function editCustomer() {
						$.getJSON("password.jsp",function(data){			
							$("#edit_cust_id").val(data.id);
						});
					}					
					function updateCustomer() {
						$.post("employee/updatepwd.html",$("#edit_customer_form").serialize(),function(data){
							var rs=parseInt(data);
							console.log(data);
							if(rs>0){
								alert("修改成功");
							}else{
								alert("修改失败");
							}
							location.reload();
						});
		
					}	
					
			   function judge(oldpwd){
				   var pwd=${employee.e_password};
				   if(pwd!=oldpwd){
					   document.getElementById('oldPwd').value="";
					   alert("未输入旧密码或旧密码不一致");
				   }
			   }
			   
			   function updatePassword(){
				   var employee=document.getElementById('employeeid').value;
				   
				   var newPwd=document.getElementById('newPwd').value;
				   console.log(newPwd+"-----"+employee);
				   var url = 'employee/updatepwd.html?employeeid='+ employee+'&&pwd='+newPwd;
					$.getJSON(url,function(data) {
						var rs=parseInt(data);
						if(rs>0){
							alert("修改密码成功");
						}else{
							alert("修改密码失败");
						}
						location.reload();
					});
			   }							
						var num = 1;
						$(function() {
						 $(".tabs").slide({ trigger: "click" });

						});		
			</script>
  </body>
</html>

