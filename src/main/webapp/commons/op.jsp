<%@ page language="java" pageEncoding="UTF-8"%>

	<h2 class="tab-hd">
    <span class="tab-hd-con" view="users" id="userstab"><a></a>用户操作</span>
    <span class="tab-hd-con" view="friends" id="friendstab"><a></a>好友操作</span>
	<span class="tab-hd-con" view="addItem" id="addItemtab"><a></a>道具操作</span>
	<span class="tab-hd-con" view="addAnimals" id="addAnimalstab"><a></a>动物操作</span>
	<span class="tab-hd-con" view="announce" id="announcetab"><a></a>公告</span>
	<span class="tab-hd-con" view="globalController" id="globalControllertab"><a></a>全局控制器</span>
	<!-- 
	<span class="tab-hd-con" view="addPerfume" id="addPerfumetab"><a></a>香水道具操作</span>
	<span class="tab-hd-con" view="softMission" id="softMissiontab"><a></a>软性引导任务</span>
	<span class="tab-hd-con" view="buchang" id="buchangtab"><a></a>补偿</span>
	<span class="tab-hd-con" view="payment" id="paymenttab"><a></a>查询付费</span>

	<span class="tab-hd-con" view="controlActivities" id="controlActivitiestab"><a></a>控制线上活动</span>
	<span class="tab-hd-con" view="control252Activities" id="control252Activitiestab"><a></a>控制252活动</span>
	
	<span class="tab-hd-con" view="yellowDiamond" id="yellowDiamondtab"><a></a>黄钻贵族活动</span>
	<span class="tab-hd-con" view="activityController" id="activity"><a></a>活动管理</span>
	 -->
</h2>
<input type="hidden" id="tab_page" name="tab_page" value="${param.tab_page }" >

<script type="text/javascript">
$(function(){
	$("#layout-t span").click(function(){
		var view = $(this).attr("view");
		if(view == 'addAnimals'){
			window.location.href='<%=request.getContextPath()%>/jsp/addAnimals.jsp';
		}else if(view == 'addItem'){
			window.location.href='<%=request.getContextPath()%>/jsp/addOp.jsp';
		}else if(view == 'users'){
			window.location.href='<%=request.getContextPath()%>/jsp/users.jsp';
		}else if(view == 'friends'){
			window.location.href='<%=request.getContextPath()%>/jsp/friendOp.jsp';
		}else if(view == 'addPerfume'){
			window.location.href='<%=request.getContextPath()%>/jsp/addPerfumeOp.jsp';
		}else if(view == 'softMission'){
			window.location.href='<%=request.getContextPath()%>/jsp/softMissionOp.jsp';
		}else if(view == 'announce'){
			window.location.href='<%=request.getContextPath()%>/jsp/announce.jsp';
		}else if(view == 'buchang'){
			window.location.href='<%=request.getContextPath()%>/jsp/buchang.jsp';
		}else if(view == 'payment'){
			window.location.href='<%=request.getContextPath()%>/jsp/payment.jsp';
		}else if(view == 'controlActivities'){
			window.location.href='<%=request.getContextPath()%>/jsp/controlActivities.jsp';
		}else if(view == 'control252Activities'){
			window.location.href='<%=request.getContextPath()%>/jsp/control252Activities.jsp';
		}else if(view == 'yellowDiamond'){
			window.location.href='<%=request.getContextPath()%>/jsp/yellowDiamond.jsp';
		}else if(view == 'globalController'){
			window.location.href='<%=request.getContextPath()%>/jsp/globalController.jsp';
		}
		else if(view == 'activityController'){
			window.location.href='<%=request.getContextPath()%>/jsp/activityController.jsp';
		}
	});
	
	$(".tab-hd span").each(function(i,n){
		$(n).removeClass("current");
	});
	
	$("#"+$("#tab_page").val()+"").addClass("current");
	 
});
</script>