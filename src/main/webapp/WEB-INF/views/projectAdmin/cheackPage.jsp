<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>项目效能查看</title>
	<script language="javascript">
		function cancle() {
			/* window.history.back(); */
			window.location.href='${ctx}/admin/project/list';
		}
	</script>
</head>

<body>
	<h4>项目效能查看</h4>
	<form id="loginForm" action="" method="" class="form-horizontal">
		<div class="control-group">
			<label  class="control-label">项目名称：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiencyProject.name}" readonly />
			</div>
		</div>
		<div class="control-group">
			<label  class="control-label">项目ID：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiencyProject.proId}" readonly />
			</div>
		</div>
		<div class="control-group">
			<label  class="control-label">项目经理：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiencyProject.pm}" readonly />
			</div>
		</div>
		<div class="control-group">
			<label  class="control-label">项目人员：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiencyProject.projectPersonnel}" readonly />
			</div>
		</div>
		<div class="control-group">
			<label  class="control-label">计划工时：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiencyProject.planHoursAll}" readonly />
			</div>
		</div>
		<div class="control-group">
			<label  class="control-label">实际工时：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiencyProject.actualHoursAll}" readonly />
			</div>
		</div>
		<div class="control-group">
			<label  class="control-label">产出工时：</label>
			<div class="controls">
				<input type="text" class="input-large " value="${efficiencyProject.outputHoursAll}" readonly />
			</div>
		</div>
		<div class="control-group">
			<label  class="control-label">项目状态：</label>
			<div class="controls">
				<c:if test="${efficiencyProject.state == 0}">
					<input type="text" class="input-large " value="进行中" readonly />
				</c:if>
				<c:if test="${efficiencyProject.state == 1}">
					<input type="text" class="input-large " value="已完成" readonly />
				</c:if>
				<c:if test="${efficiencyProject.state == null}">
					<input type="text" class="input-large " value="-" readonly />
				</c:if>
			</div>
		</div>
		
	</form>
	<button class="btn" onclick="cancle()">返回</button>
</body>
</html>
