<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	//计算总分
	function countResult() {
		var score1 = $("#score1").val();
		var score2 = $("#score2").val();
		var score3 = $("#score3").val();
		var score4 = $("#score4").val();
		var score5 = $("#score5").val();
		var count = parseInt(score1) + parseInt(score2) + parseInt(score3)
				+ parseInt(score4) + parseInt(score5);
		$("#count").html(count);
	}

	function result() {
		var count = $
		{
			assessment.action1_Score
		}
		+$
		{
			assessment.action2_Score
		}
		+$
		{
			assessment.action3_Score
		}
		+$
		{
			assessment.action4_Score
		}
		+$
		{
			assessment.action5_Score
		}
		;
		$("#count").html(count);
	}
	$(function() {
		result();
	})
</script>
<title>查看评价</title>
<style>
td {
	text-align: center;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">
				<ul class="nav nav-tabs nav-stacked">
					<li class="nav-header"><h4>历史列表</h4></li>
					<c:forEach items="${pe.getContent()}" var="pc">
						<li><a
							href="${ctx }/leaderAssessment/employeeViewPage?date=<fmt:formatDate value="${pc.createTime}" pattern="yyyy-MM"/>">${pc.peDateDepartment.replace('_','') }</a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="span10">
				<h4>
					上级评价ID:${assessment.id } 被评价者:${assessment.beEvaluatedName }
					部门:${assessment.departmentName } 评价者：${assessment.mt }<br />
					评价时间:${assessment.evaluatedTime }
				</h4>
				<table class="table table-striped table-bordered table-condensed">
					<tr>
						<td>行为要项</td>
						<td>行为藐视</td>
						<td>上级评分</td>
					</tr>
					<tr>
						<td>主动承担</td>
						<td>职责范围之内的工作，主动计划，高效推进；职责边界模糊的工作，主动推进积极协作，确保结果落实</td>
						<td>${assessment.action1_Score }</td>
					</tr>
					<tr>
						<td>快速高效</td>
						<td>接到任务马上执行，不推诿，不迟疑，并想法设法高效完成</td>
						<td>${assessment.action2_Score }</td>
					</tr>
					<tr>
						<td>结果意识</td>
						<td>以价值为根本，始终保持对目标的关注，通过不断地监控和排除各种困难，高效率地实施计划，取得高质量的成果</td>
						<td>${assessment.action3_Score }</td>
					</tr>
					<tr>
						<td>沟通协作</td>
						<td>以积极的行动，谦和的态度主动沟通，并与工作上下游良好协作，支持团队总体目标的达成</td>
						<td>${assessment.action4_Score }</td>
					</tr>
					<tr>
						<td>坚韧耐挫</td>
						<td>困难面前不低头，压力面前不弯腰、挑战面前不后退；愈挫愈勇、百折不挠、坚韧不拔、持之以恒</td>
						<td>${assessment.action5_Score }</td>
					</tr>
				</table>
				<div align="right">
					<h4>
						总分: <span id="count">${assessment.totalScore }</span>分
					</h4>
					<h4>评价: ${assessment.comment }</h4>
				</div>
			</div>
		</div>
	</div>
</body>
</html>