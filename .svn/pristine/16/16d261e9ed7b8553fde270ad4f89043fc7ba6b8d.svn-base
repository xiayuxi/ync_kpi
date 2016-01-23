<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
<script src="${ctx }/static/My97/WdatePicker.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目列表</title>
<style>
	td{
		text-align: center
	}
</style>
</head>
<body>
	<form action="${ctx }/admin/project/projectList" method="get" >
		<table align="center">
			<tr>
				<td>项目名称：</td>
				<td><input type="text" name="name" value="${searchParames.name }"/></td>
			</tr>
			<tr>
				<td>项目经理：</td>
				<td><input type="text" name="pm" value="${searchParames.pm }"/></td>
			</tr>
			<tr>
				<td>项目id:</td>
				<td><input type="text" name="id" value="${searchParames.id }" /></td>
			</tr>
			<tr>
				<td>项目人员：</td>
				<td><input type="text" name="projectPersonnel" value="${searchParames.projectPersonnel }" /></td>
			</tr>
			<tr>
				<td>项目时间：</td>
				<td>
					<input type="text" name="projectBeginTime"  type="text" onfocus="new WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd'})" value="${projectBeginTime }"/> ~ 
					<input type="text" name="projectEndTime"  type="text" onfocus="new WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd'})" value="${projectEndTime }"/>
				</td>
			</tr>
			<tr>
				<td>状态：</td>
				<td>
					<select name="state" id="searchSelector">
						<option value="">选择..</option>
						<option value="0">进行中</option>
						<option value="1">已完成</option>
					</select>
				</td>
			</tr>
		</table>
		<div style="padding-left: 600px;">
			<button class="btn">查询</button>
			<button class="btn" type="button" onclick="resetSearch();">清空</button>
		</div>
	</form>
	
	<br />
	<br />
	<br />
	<table class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<td>序号</td>
				<td>项目ID</td>
				<td>项目名称</td>
				<td>项目人员名单</td>
				<td>项目经理</td>
				<td>时间</td>
				<td>状态</td>
				<td>操作</td>
			</tr>
		</thead>
		<c:forEach items="${list }" var="list" varStatus="status">
			<tr>
				<td>${status.index+1 }</td>
				<td>${list.id }</td>
				<td>${list.name }</td>
				<td>${list.projectPersonnel }</td>
				<td>${list.pm }</td>
				<td>${list.projectBeginTime } ~ ${list.projectEndTime }</td>
				<td>
					<c:if test="${list.state ==0}">
						进行中
					</c:if>
					<c:if test="${list.state ==1}">
						已完成
					</c:if>
				</td>
				<td><a href="viewPage/${list.id}">查看</a></td>
			</tr>
		</c:forEach>
	</table>
	<script>
		$(function(){
			selector();
		});
		function resetSearch() {
			$("input").val('');
			$("#searchSelector").val("");
		}
		
		//选中
		function selector() {
			var state = '${state}';
			$("#searchSelector").find("option[text='+state+']").attr("selected",true);
			$("#searchSelector").val(state);
		}
		
		
		
	</script>
</body>

</html>