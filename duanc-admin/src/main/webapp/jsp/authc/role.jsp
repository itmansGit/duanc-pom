<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <%@include file="/jsp/common/meta.jsp" %>
  <title>example-page</title>
  <%@include file="/jsp/common/css.jsp" %>
</head>
<body class="skin-3">
	<%@include file="/jsp/common/top.jsp" %>
	<div class="main-container" id="main-container">			
		<div class="main-container-inner">	
			<!-- 菜单开始 -->
			<%@include file="/jsp/common/sidebar.jsp" %>
			<!-- 菜单结束 -->							
			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">						
					<ul class="breadcrumb">
						<li>
							<i class="icon-home home-icon"></i>
							<a href="#">Home</a>
						</li>
					</ul><!-- .breadcrumb -->						
				</div>
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->																				
							
							<div class="table-responsive" style="margin-top:15px;">
								<div class="table-header">
									角色列表
								</div>
								<table id="sample-table-2" class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th>序号</th>
											<th>ID</th>
											<th>角色名</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${roles}" var="item" varStatus="status" begin="0" end="${fn:length(roles)}">
											<tr>
												<td>${status.index + 1}</td>
												<td>${item.id}</td>
												<td>${item.name}</td>
												<td></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
								
							<!-- PAGE CONTENT ENDS -->
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.page-content -->
			</div><!-- /.main-content -->
		</div>	
		
		<%@include file="/jsp/common/toggle.jsp" %>
		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
			<i class="icon-double-angle-up icon-only bigger-110"></i>
		</a>
	</div>
<%@include file="/jsp/common/js.jsp" %>
<!-- page specific plugin scripts start -->

<!-- page specific plugin scripts end -->
<script type="text/javascript">
$(function(){
});
</script>
</body>
</html>