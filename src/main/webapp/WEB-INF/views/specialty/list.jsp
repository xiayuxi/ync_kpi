<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="staticCtx" value="${pageContext.request.contextPath}/static" />
<html>
<head>
<title>专业管理</title>
<!-- artDialog -->
<script type="text/javascript"
	src="${staticCtx}/artdialog/artDialog.js?skin=brief"></script>
<script type="text/javascript"
	src="${staticCtx}/artdialog/plugins/iframeTools.js"></script>

<script type="text/javascript">
	//添加专业性弹窗
	function toAdd() {
		art.dialog.open("${ctx}/admin/specialty/addPage", {
			id : 'add_dialog',
			resize : true,
			width : 400,
			height : 300
		});
	}
	//删除专业性弹窗
	function toDelete(specialtyId) {
		art.dialog.open("${ctx}/admin/specialty/deletePage?specialtyId="
				+ specialtyId, {
			id : 'add_dialog',
			resize : true,
			width : 400,
			height : 300
		});
	}
	//清空搜索条件
	function resetSearch() {
		$("input").val('');
		$("#departmentId").val('----');
	}
</script>
</head>
<body>
	<form action="query" method="post">
		<table>
			<tr>
				<td>专业性：</td>
				<td><input type="text" name="name" value="${specialty.name }" /></td>
				<td>部门负责人：</td>
				<td><input type="text" name="mt" value="${specialty.mt }"/></td>
			</tr>
			<tr>
				<td>部&nbsp;&nbsp;&nbsp;&nbsp;门：</td>
				<td><select id="departmentId" name="departmentId">
						<option value="">----</option>
						<c:forEach var="department" items="${departmentList }">
							<option value="${department.id }"
								<c:if test="${department.id==departmentId }">selected="selected"</c:if>>${department.name }</option>

						</c:forEach>
				</select></td>
				<td></td>
				<td></td>
			</tr>
		</table>		
		<button class="btn" type="submit">搜索</button>		
		<button class="btn" type="button" onclick="toAdd();">添加专业性</button>
		<button class="btn" type="button" onclick="resetSearch();" /> 清空 </button>
	</form>	
	<table class="table  table-striped table-bordered table-condensed">
		<tr align="center">
			<th>序号</th>
			<th>专业性</th>
			<th>部门</th>
			<th>MT负责人</th>
			<th>操作</th>
		</tr>
		<c:forEach var="specialty" items="${specialtyList }"
			varStatus="status">
			<tr align="center">
				<td>${status.index+1 }</td>
				<td>${specialty.name }</td>
				<td>${specialty.departmentName }</td>
				<td>${specialty.mt}</td>
				<td><a href="javascript:void(0)"
					onclick="toDelete('${specialty.id }')">删除</a></td>
			</tr>
		</c:forEach>
	</table>
</body>

</html>
