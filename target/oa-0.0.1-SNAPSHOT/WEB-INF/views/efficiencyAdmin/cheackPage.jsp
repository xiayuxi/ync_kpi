<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>员工效能查看</title>
	<script language="javascript">
		function cancle() {
			/* window.history.back(); */
			window.location.href='${ctx}/admin/efficiency/list';
		}
	</script>
</head>

<body>
	<h4>员工效能查看</h4>
	<form id="loginForm" action="" method="" class="form-horizontal">
		<div class="control-group">
			<label  class="control-label">姓名：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiency.employeName}" readonly />
			</div>
		</div>
		<div class="control-group">
			<label  class="control-label">项目名称：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiency.projectName}" readonly />
			</div>
		</div>
		<%-- <div class="control-group">
			<label  class="control-label">工号：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiency.employeCode}" readonly />
			</div>
		</div> --%>
		<div class="control-group">
			<label  class="control-label">项目状态：</label>
			<div class="controls">
				<c:if test="${efficiency.projectState == 0}">
					<input type="text" class="input-large " value="进行中" readonly />
				</c:if>
				<c:if test="${efficiency.projectState == 1}">
					<input type="text" class="input-large " value="已完成" readonly />
				</c:if>
				<c:if test="${efficiency.projectState == null}">
					<input type="text" class="input-large " value="-" readonly />
				</c:if>
			</div>
		</div>
		<div class="control-group">
			<label  class="control-label">项目经理：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiency.pm}" readonly />
			</div>
		</div>
		<div class="control-group">
			<label  class="control-label">周期：</label>
			<div class="controls">
				<input type="text" class="input-large " value="<fmt:formatDate value= '${efficiency.planBeginTime}' pattern='yyyy-MM-dd'/>" readonly />
				-
				<input type="text" class="input-large " value="<fmt:formatDate value= '${efficiency.planEndTime}' pattern='yyyy-MM-dd'/>" readonly />
			</div>
		</div>
		<div class="control-group">
			<label  class="control-label">计划工时：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiency.planHours}" readonly />
			</div>
		</div>
		<div class="control-group">
			<label  class="control-label">实际工时：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiency.actualHours}" readonly />
			</div>
		</div>
		<div class="control-group">
			<label  class="control-label">产出工时：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiency.outputHours}" readonly />
			</div>
		</div>
		<%-- <div class="control-group">
			<label  class="control-label">标准工时：</label>
			<div class="controls">
				<input type="text" class="input-large " value="" readonly />
			</div>
		</div>
		
		<div class="control-group">
			<label  class="control-label">负荷率：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiency.loadRate}" readonly />
			</div>
		</div>
		
		<div class="control-group">
			<label  class="control-label">效率：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiency.efficiencyPercentage}" readonly />
			</div>
		</div> --%>
		
	</form>
	<button class="btn" onclick="cancle()">返回</button>
</body>
</html>
