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
<script>
function editCustomer(id) {
	$.getJSON("mm/toupdate.html",{id:id},function(data){			
		$("#edit_message_id").val(data.id);
	});
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
							<li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">未回复评论列表</li>
						</ul>
					</div>
					<div class="bd">
						<ul style="display: block;padding: 20px;">
							<li>
								<!--分页显示角色信息 start-->
								<div id="dv1">
									<div id="wrapper">
</nav>

		
			
			<!-- /.row -->
			
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">未回复评论</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>序号</th>
									<th>评论菜品</th>
									<th>评论内容</th>
									<th>评论人</th>
									<th>回复评论</th>
								</tr>
							</thead>
							<tbody>
							<c:set var="mynum" value="1"/>
								<c:forEach items="${glist}" var="s">
									<tr>
										<td>${mynum}<c:set var="mynum" value="${mynum+1}"></c:set></td>
										<td>${s.good_id.good_name }</td>
										<td>${s.comment}</td>
										<td>${s.user_id.user_name }</td>								
										<td><a class="btn btn-primary btn-xs" data-toggle="modal"
											data-target="#customerEditDialog"
											>回复</a></td>
									</tr>
								</c:forEach>
								
							</tbody>

						</table>
						<%-- <div class="col-md-12 text-right">
							<itcast:page
								url="${pageContext.request.contextPath }/archives/lista.action" />
						</div> --%>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
	
		<!-- /#page-wrapper -->

	</div>
	</form>
	<!-- 客户编辑对话框 -->
	<div class="modal fade" id="customerEditDialog" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">回复评论</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" action="good/addreply.html" method="post">
						<div class="form-group">
							<div class="col-sm-10">
								<input type="text" class="form-control" id="reply_comment"
									placeholder="回复内容" name="reply_comment">
							</div>
						</div>	
						<div class="form-group">
							<div class="col-sm-10">
								<input type="submit" align="right" class="form-control" id="reply_comment"
									placeholder="回复" name="">
							</div>
						</div>		
					</form>
				</div>
			</div>
		</div>
	</div>
	
									
								</div>
								<!--分页显示角色信息 end-->
							</li>
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
/* 				function updateCustomer() {
					$.post("good/addreply.html",$("#edit_customer_form").serialize(),function(data){
						var rs=parseInt(data);
						console.log(data);
						if(rs>0){
							alert("回复成功");
						}else{
							alert("回复失败");
						}
						location.reload();
					});
	
				} */

			</script>

		</div>
  </body>
</html>

