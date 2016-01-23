<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>效能-项目页面</title>
	
	<script type="text/javascript">
		
	</script>
</head>

<body>
	<shiro:hasAnyRoles name="pm">
		<%-- <a href="${ctx}/efficiency/addPage">新建项目</a>	 --%>
		<a href="${ctx}/efficiency/editPage?proId=${project.id}">修改项目</a>
		<br/>
	</shiro:hasAnyRoles>
	
	<%@ include file="list_page_one.jsp"%>
	
	<%@ include file="list_page_two.jsp"%>
	<%@ include file="list_page_three.jsp"%> 
	
</body>
</html>
