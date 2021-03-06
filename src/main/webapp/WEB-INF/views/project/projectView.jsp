<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	

</script>
<title>查看</title>
<style>
	td{
		text-align:center;
	}
</style>
</head>
<body>
	<div id="data1">
	<table class="table table-striped table-bordered table-condensed">
		<tr>
			<td>项目名称</td>
			<td>${project.name }</td>
		</tr>
		<tr>
			<td>项目ID</td>
			<td>${project.id }</td>
		</tr>
		<tr>
			<td>项目人员名单</td>
			<td>${project.projectPersonnel }</td>
		</tr>
		<tr>
			<td>项目经理</td>
			<td>${project.pm }</td>
		</tr>
		<tr>
			<td>时间</td>
			<td><fmt:formatDate value= '${project.projectBeginTime }' pattern='yyyy-MM-dd'/> ~ <fmt:formatDate value= '${project.projectEndTime }' pattern='yyyy-MM-dd'/></td>
		</tr>
		<tr>
			<td>状态</td>
			<td>
				<c:if test="${project.state ==0}">
					进行中
				</c:if>
				<c:if test="${project.state ==1}">
					已完成
				</c:if>
			</td>
		</tr>
	</table>
	</div>
	
	
	项目计划:
	<div id="data2">
		<table class="table table-striped table-bordered table-condensed">
		<tr>
			<td>序号</td>
			<td>部门</td>
			<td>姓名</td>
			<td>计划时间</td>
		</tr>
		
	<c:forEach items="${effs}" var="eff"  varStatus="status">
	   <tr>
			<td>${status.index+1 }</td>
			<td>${eff.departmentName }</td>
			<td>${eff.employeName }</td>
			<td>周期：<fmt:formatDate value= '${eff.planBeginTime}' pattern='yyyy-MM-dd'/>至<fmt:formatDate value= '${eff.planEndTime}' pattern='yyyy-MM-dd'/>;工时：${eff.actualHours}小时</td>
	</c:forEach>
	</table> 
	</div>
</body>

</html>