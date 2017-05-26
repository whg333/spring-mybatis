<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<%@include file="/commons/headConfig.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>联系人列表</title>

<style type="text/css">
</style>

<script type="text/javascript">
	$(function() {
		$(".delete").click(function() {
			var id = $(this).attr("id");
			return confirm("确定删除id="+id+"的联系人？");
		});
		
		$("#newContact").click(function(){
			window.location.href = "${pageContext.request.contextPath}/contactController/newContact.do"; 
		});
	});
</script>

</head>
<body>
	<div class="lp-container">
		<div class="data-container">
			<div class="detail">
				联系人列表
				<div class="area-sub">
					<div id="layout-t" class="tab-product tab-sub-3 ui-style-gradient">
						<div class="tab-bd dom-display" style="min-height: 800px">
							<c:if test="${not empty contactList}">
								<div class="detail-table" style="margin-top: 20px; width: 98%; margin-left: 15px;">
									<table class="table table-striped">
										<tr>
											<td>id</td>
											<td>名称</td>
											<td>邮箱</td>
											<td>地址</td>
											<td>电话</td>
											<td>编辑</td>
											<td>删除</td>
										</tr>
										<c:forEach items="${contactList}" var="contact">
											<tr>
												<td>${contact.id}</td>
												<td>${contact.name}</td>
												<td>${contact.email}</td>
												<td>${contact.address}</td>
												<td>${contact.telephone}</td>
												<td><a class="edit" href="${pageContext.request.contextPath}/contactController/editContact.do?id=${contact.id}"><img src="${pageContext.request.contextPath}/static/images/edit.png"></a></td>
												<td><a class="delete" id="${contact.id}" href="${pageContext.request.contextPath}/contactController/deleteContact.do?id=${contact.id}"><img src="${pageContext.request.contextPath}/static/images/delete.png"></a></td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</c:if>
							<span id="newContact" class="detail-right" style="width:90%;padding-right: 5px;">
								<a href="#"><img src="${pageContext.request.contextPath}/static/images/add.png"></a>
								<input style="font-size:15px;" type="button" class="btn btn-default btn-sm" value="新增联系人">
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>