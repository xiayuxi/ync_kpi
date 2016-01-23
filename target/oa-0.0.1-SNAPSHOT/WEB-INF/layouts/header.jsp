<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div id="header" class="container">
	<div id="title">
		<h1>
			<a href="${ctx}/login/success">云农场</a><small>绩效系统</small>
			<shiro:user>
				<div class="btn-group pull-right">
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-user"></i> <shiro:principal property="name" /> <span
						class="caret"></span>
					</a>

					<ul class="dropdown-menu">
						<li><a href="${ctx}/logout">退出</a></li>
						<li><a href="${ctx }/profile">修改密码</a></li>
					</ul>
				</div>
			</shiro:user>
		</h1>
	</div>
</div>