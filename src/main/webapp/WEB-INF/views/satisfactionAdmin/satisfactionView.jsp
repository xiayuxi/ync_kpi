<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
td {
	text-align: center;
}
</style>
<script language="javascript">
function cancle() {
	window.location.href='${ctx}/admin/satisfaction/list';
}
function formate(time){
	alert(time);
}
</script>
</head>
<body>
	<h4>客户满意度查看</h4>
	<form class="form-horizontal" id="inputForm" action="#" method="post">
		<div class="control-group">
			<label  class="control-label">评价者：</label>
			<div class="controls"><input type="text" id="beEvaluatedName" name="beEvaluatedName"
					class="input-large " value="${satisfaction.evaluatedName}" readonly /></div>
		</div>
		<div class="control-group">
			<label  class="control-label">评价者部门：</label>
			<div class="controls"><input type="text" id="beEvaluatedName" name="beEvaluatedName"
					class="input-large " value="${satisfaction.evaluatedDepartmentName}" readonly /></div>
		</div>
		<div class="control-group">
			<label class="control-label">被评者：</label>
			<div class="controls"><input type="text" id="beEvaluatedName" name="beEvaluatedName"
					class="input-large " value="${satisfaction.beEvaluatedName}" readonly /></div>
		</div>
		<div class="control-group">
			<label  class="control-label">被评者部门：</label>
			<div class="controls"><input type="text" id="beEvaluatedName" name="beEvaluatedName"
					class="input-large " value="${satisfaction.beEvaluatedDepartmentName}" readonly /></div>
		</div>
		<div class="control-group">
			<label  class="control-label">时间：</label>
			<div class="controls"><input type="text" id="beEvaluatedName" name="beEvaluatedName"
					class="input-large " value="${satisfaction.evaluatedTimeFormate}" readonly /></div>
		</div>
		<div class="control-group">
			<label  class="control-label">评分：</label>
			<div class="controls"><input type="text" id="beEvaluatedName" name="beEvaluatedName"
					class="input-large " value="${satisfaction.score}" readonly /></div>
		</div>
		<div class="control-group">
			<label  class="control-label">评语：</label>
			<div class="controls"><input type="text" id="beEvaluatedName" name="beEvaluatedName"
					class="input-large " value="${satisfaction.comment}" readonly /></div>
		</div>

	</form>
	<button class="btn" onclick="cancle()">返回</button>
</body>

</html>