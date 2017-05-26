<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<%@include file="/commons/headConfig.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>${isEdit?"编辑":"新增"}联系人</title>

<style type="text/css">
</style>

<script type="text/javascript">
	$(function() {
		$("#return").click(function(){
			window.location.href="${pageContext.request.contextPath}/contactController/findAllContacts.do"; 
		});

		$("#addOrUpdate").click(function() {
			var id = $("#id").val();
			var isEdit = ${isEdit};
			if(confirm("确认"+(isEdit?"编辑id="+id+"的":"新增")+"联系人？")){
				if($("#name").val() == ""){
					alert($("#name").attr("name")+"不能为空！");
					$("#name").focus();
					return;
				}
				if($("#telephone").val() == ""){
					alert($("#telephone").attr("name")+"不能为空！");
					$("#telephone").focus();
					return;
				}
				
				var action = "${pageContext.request.contextPath}/contactController/";
				action += "${isEdit?'saveContact.do':'addContact.do'}";
				$("#form").attr("action", action);
				$("#form").submit();
			}
		});
	});
</script>

</head>
<body>
	<div class="lp-container">
		<div class="data-container">
			<div class="detail">
				${isEdit?"编辑":"新增"}联系人 <c:if test="${isEdit}"><font color="red">(id=${contact.id})</font></c:if>
				<form id="form" method="post" action="">
					<div class="area-sub">
						<div id="layout-t" class="tab-product tab-sub-3 ui-style-gradient">
							<div class="tab-bd dom-display" style="min-height: 800px">
								<div id="addItemDiv" class="tab-bd-con current">
									<div class="detail-info" style="margin-top: 20px; height: 80px; width: 98%; margin-left: 15px;">
										<input type="hidden" id="id" name="id" value="${contact.id}" />
										<ul class="detail-ul">
											<li class="detail-li">
												<span class="detail-left">
													<label>名称：</label> 
													<input type="text" class="b-radius5 p-input-width" id="name" name="name" value="${contact.name}" />
													<label style="margin-left: 50px;">邮箱：</label> 
													<input type="text" class="b-radius5 p-input-width" id="email" name="email" value="${contact.email}" />
												</span> 
												<span class="detail-left"> 
													<label>地址：</label> 
													<input type="text" class="b-radius5 p-input-width" id="address" name="address" value="${contact.address}" />
													<label style="margin-left: 50px;">电话：</label> 
													<input type="text" class="b-radius5 p-input-width" id="telephone" name="telephone" value="${contact.telephone}" />
												</span>
											</li>
										</ul>
									</div>
								</div>
								<span class="detail-right" style="width:20%">
				    				<input id="return" type="button" class="btn btn-default btn-sm" value="返回联系人列表">
				    				<input style="margin-left: 10px;" id="addOrUpdate" type="button" class="btn btn-default btn-sm" value="确认${isEdit?'编辑':'新增'}联系人">
				    			</span>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>