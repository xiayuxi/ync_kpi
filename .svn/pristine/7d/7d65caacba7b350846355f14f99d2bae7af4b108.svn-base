<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page
	import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>登录页</title>
</head>

<body>
	<div class="container">
		<form id="loginForm" action="${ctx}/login" method="post"
			class="form-horizontal container">
			<%
			    String error = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
						if (error != null) {
			%>
			<div class="alert alert-error input-medium controls">
				<button class="close" data-dismiss="alert">×</button>
				登录失败，请重试.
			</div>
			<%
			    }
			%>
			<div class="control-group">
				<label for="username" class="control-label">用户名:</label>
				<div class="controls">
					<input type="text" id="username" name="username"
						value="<%-- ${username} --%>" class="input-medium required" />
					<c:if
						test="${shiroLoginFailure == 'org.apache.shiro.authc.UnknownAccountException' }">
						<span class="error" for="username">用户名不存在</span>
					</c:if>
				</div>
			</div>
			<div class="control-group">
				<label for="password" class="control-label">密码:</label>
				<div class="controls">
					<input type="password" id="password" name="password"
						class="input-medium required" />
					<c:if
						test="${shiroLoginFailure == 'org.apache.shiro.authc.IncorrectCredentialsException' }">
						<span class="error" for="password">密码错误</span>
					</c:if>
				</div>
			</div>

			<div class="control-group">
				<div class="controls">
					<!-- <label class="checkbox" for="rememberMe"><input
						type="checkbox" id="rememberMe" name="rememberMe" /> 记住我</label> -->
					<input id="submit_btn" class="btn btn-primary" type="submit"
						value="登录" />
				</div>
			</div>
		</form>
	</div>

	<script>
		$(document).ready(function() {
			$("#loginForm").validate();
		});
	</script>
</body>
</html>
