<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>用户管理</title>
</head>

<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">
				<ul class="nav nav-tabs nav-stacked">
					<li class="nav-header"><h4>我的历史总评</h4></li>
					<c:forEach items="${pe.getContent()}" var="pc">
						<li><a
							href="${ctx }/performanceEvaluation/detail?date=<fmt:formatDate value="${pc.createTime}" pattern="yyyy-MM"/>">${pc.peDateDepartment.split('_')[1] }月绩效总评</a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="span10">
				<h3>
					<fmt:formatDate value="${date}" pattern="yyyy-MM" />
					月绩效总评
				</h3>
				<table class="table table-bordered">
					<tbody>
						<tr>
							<td rowspan="2">效能</td>
							<td>负荷率</td>
							<td>效率</td>
							<td>得分</td>
						</tr>
						<tr>
							<td>${fuhelv }&nbsp;</td>
							<td>${xiaolv }&nbsp;</td>
							<td>${p.efficiencyScore }</td>
						</tr>
						<tr>
							<td rowspan="2">专业</td>
							<td><c:if test="${specialtyJXBo.specialtyJXList.size() >0 }">${specialtyJXBo.specialtyJXList[0].specialtyName}</c:if>
							</td>
							<td><c:if test="${specialtyJXBo.specialtyJXList.size() >1 }">${specialtyJXBo.specialtyJXList[1].specialtyName}</c:if></td>
							<td>得分</td>
						</tr>
						<tr>
							<td><c:if test="${specialtyJXBo.specialtyJXList.size() >1 }">${specialtyJXBo.specialtyJXList[0].score}&nbsp;</c:if></td>
							<td><c:if test="${specialtyJXBo.specialtyJXList.size() >1 }">${specialtyJXBo.specialtyJXList[1].score}&nbsp;</c:if></td>
							<td>${p.specialtyScore }&nbsp;</td>
						</tr>
						<tr>
							<td rowspan="2">客户满意</td>
							<td>客户满意度</td>
							<td>得分</td>
							<td></td>
						</tr>
						<tr>
							<td>${p.satisfactionScore }&nbsp;</td>
							<td>${p.satisfactionScore }&nbsp;</td>
							<td></td>
						</tr>
						<tr>
							<td rowspan="2">上级评价</td>
							<td>评价总分</td>
							<td>得分</td>
							<td></td>
						</tr>
						<tr>
							<td>${p.leaderAssessmentScore }&nbsp;</td>
							<td>${p.leaderAssessmentScore }&nbsp;</td>
							<td></td>
						</tr>
					</tbody>
				</table>
				<div class="span5">
					<h3>总评得分</h3>
				</div>
				<div class="span5">
					<h3>${p.totalScore }分</h3>
				</div>
				<div class="span5">
					<h3>总评分级</h3>
				</div>
				<div class="span5">
					<h3>${p.totalGrade }</h3>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
