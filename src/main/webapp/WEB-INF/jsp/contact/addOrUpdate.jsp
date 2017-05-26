<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<%@include file="/commons/headConfig.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>我的联系人</title>

<style type="text/css">
</style>

<script type="text/javascript">
	$(function() {
		$("#add").click(function() {
			$('#op').val(1);
			$("#form").submit();
		});

		$("#query").click(function() {
			$('#op').val(2);
			$("#form").submit();
		});

		$("#clear").click(function() {
			$('#op').val(3);
			$("#form").submit();
		});

		$(".del").click(function() {
			return confirm("确定删除该记录？");
		});
	});
</script>

</head>
<body>
	<div class="lp-container">
		<div class="data-container">
			<div class="detail">
				我的联系人
				<div class="area-sub">
					<div id="layout-t" class="tab-product tab-sub-3 ui-style-gradient">
						<div class="tab-bd dom-display" style="min-height: 800px">
							<c:if test="${not empty result['contactList']}">
								<div class="detail-table"
									style="margin-top: 20px; width: 98%; margin-left: 15px;">
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
										<c:forEach items="${result['contactList']}" var="contact">
											<tr>
												<td>${contact.id}</td>
												<td>${contact.name}</td>
												<td>${contact.email}</td>
												<td>${contact.address}</td>
												<td>${contact.telephone}</td>
												<td><a class="del"
													href="${pageContext.request.contextPath}/jsp/globalController.jsp?userId=${userGacha.key }&op=4">编辑</a></td>
												<td><a class="del"
													href="${pageContext.request.contextPath}/jsp/globalController.jsp?userId=${userGacha.key }&op=4">删除</a></td>
											</tr>
										</c:forEach>
									</table>
								</div>
								<span class="detail-right"> 
									<input id="add" type="button" class="btn btn-default btn-sm" value="新增联系人">
								</span>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>