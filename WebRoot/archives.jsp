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
    
		<title></title>
		<link rel="stylesheet" />
		<link rel="stylesheet" href="css/Site.css" />
		<link rel="stylesheet" href="css/zy.all.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/admin.css" />
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
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
var msg='${msg}';
if(msg!=""){
    alert(msg);
}
function fenye(page){
	var a_product_name=document.getElementById("a_product_name").value;
	var a_model=document.getElementById("a_model").value;
	var a_factory_name=document.getElementById("a_factory_name").value;
	var url='mm/lista.html?page='+page;
	
	if(a_product_name!=""){
		url+='&a_product_name='+a_product_name;
	}
	if(a_model!=""){
		url+='&a_model='+a_model;
	}
	if(a_factory_name!=""){
		url+='&a_factory_name='+a_factory_name;
	}
	location=url;
}
</script>
  </head>
  
  <body>
    		<div class="dvcontent">

			<div>
				<!--tab start-->
				<div class="tabs">
					<div class="hd">
						<ul>
							<li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">订单管理</li>
						</ul>
					</div>
					<div class="bd">
						<ul style="display: block;padding: 20px;">
							<li>
								<!--分页显示角色信息 start-->
								<div id="dv1">
									<div id="wrapper">


			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">菜单信息</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>序号</th>
									<th>用户姓名</th>
									<th>用户地址</th>
									<th>用户电话</th>
									<th>所定菜品</th>
									<th>菜品金额</th>
									<th>菜品数量</th>
									<th>订单状态</th>
									<th>接受订单</th>
									<th>删除</th>
								</tr>
							</thead>
							<tbody>
							<c:set var="mynum" value="1"/>
								<c:forEach items="${clist}" var="s">
									<tr>
										<td>${mynum}<c:set var="mynum" value="${mynum+1}"></c:set></td>
										<td>${s.user_id.user_name }</td>
										<td>${s.user_id.user_address}</td>
										<td>${s.user_id.user_tel }</td>
										<td>${s.good_name }</td>
										<td>${s.good_price }</td>
										<td>${s.good_sum }</td>		
										<td>${s.good_style }</td>
										<td><a class="btn btn-primary btn-xs"
											href="cart/updatenewcart.html?good_id=${s.good_id}">接受订单</a></td>
											<td>
											 <a
											class="btn btn-danger btn-xs"
											onclick="deleteCustomer(${s.good_style})">删除</a></td>
									</tr>
								</c:forEach>
								
							</tbody>

						</table>
						<div class="col-md-12 text-right">
							<itcast:page
								url="${pageContext.request.contextPath }/archives/lista.action" />
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
	
		<!-- /#page-wrapper -->

	</div>
	</form>
	
	
									
								</div>
								<!--分页显示角色信息 end-->
							</li>
						</ul>
						<ul class="theme-popbod dform" style="display: none;">
								<div class="am-cf admin-main" style="padding-top: 0px;">
		
						</ul>
					</div>
				</div>
				<!--tab end-->

			</div>
<!-- /#wrapper -->
	<!-- jQuery -->
	<script src="<%=basePath%>js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath%>js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=basePath%>js/sb-admin-2.js"></script>

			
			 <script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
              <script src="js/plugs/Jqueryplugs.js" type="text/javascript"></script>
              <script src="js/_layout.js"></script>
             <script src="js/plugs/jquery.SuperSlide.source.js"></script>
			<script>
				var num = 1;
				$(function() {

				 $(".tabs").slide({ trigger: "click" });

				});
				function editCustomer(id) {
					$.getJSON("mm/toupdate.html",{id:id},function(data){			
						$("#edit_cust_id").val(data.id);
						$("#edit_a_product_name").val(data.a_product_name);
						$("#edit_a_model").val(data.a_model);
						$("#edit_a_factory_name").val(data.a_factory_name);
						$("#edit_a_factory_tel").val(data.a_factory_tel);
						$("#edit_a_factory_address").val(data.a_factory_address);
						$("#edit_a_factory_pcode").val(data.a_factory_pcode);
						$("#edit_a_price_1").val(data.a_price_1);
						$("#edit_a_price_2").val(data.a_price_2);
						$("#edit_a_price_3").val(data.a_price_3);
					});
				}
				function updateCustomer() {
					$.post("mm/update.html",$("#edit_customer_form").serialize(),function(data){
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
				function deleteCustomer(id) {
					if(confirm("确定要删除吗")){
						$.post("mm/delete.html",{id:id},function(data){
							var rs=parseInt(data);
							if(rs>0){
								alert("删除成功");
							}else{
								alert("删除失败");
							}
							location.reload();
						});
						
					}
				}
			</script>

		</div>
  </body>
</html>
