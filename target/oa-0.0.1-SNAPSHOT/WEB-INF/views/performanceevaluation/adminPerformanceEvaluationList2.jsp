<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>用户管理</title>
</head>
<body>

	<table id="contentTable"
		class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>序号</th>
				<th>绩效总评ID</th>
				<th>被评价者</th>
				<th>部门</th>
				<th>效能</th>
				<th>专业</th>
				<th>上级评价</th>
				<th>客户满意</th>
				<th>总分</th>
				<th>总评分级</th>
				<th>时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${page.getContent()}" var="p">
				<tr>
					<td>${p.id}</td>
					<td>${p.id}</td>
					<td>${p.beEvaluatedName}</td>
					<td>${p.departmentName}</td>
					<td>${p.efficiencyScore}</td>
					<td>${p.specialtyScore}</td>
					<td>${p.leaderAssessmentScore}</td>
					<td>${p.satisfactionScore}</td>
					<td>${p.totalScore}</td>
					<td>${p.totalGrade}</td>
					<td><fmt:formatDate value="${p.createTime}"
							pattern="yyyy-MM" /></td>
					<td><a href="${ctx}/admin/performanceEvaluation/detail/${p.id}">查看</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
