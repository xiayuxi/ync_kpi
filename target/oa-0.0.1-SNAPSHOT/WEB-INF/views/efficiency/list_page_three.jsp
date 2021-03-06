<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

	修改记录：<br/>
	<form id="queryForm_t" >
	<input type = "hidden" name= "projectId" value="${project.id}"/>
	
	</form>
	
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
		   <tr>
		   		<td>序号</td>
		   		<td>修改前</td>
		   		<td>修改后</td>
		   		<td>时间</td>
		   		<td>操作者</td>
	   		</tr>
		 </thead>
		<tbody id="tbody_t">
		</tbody>
		 <%--    <c:forEach items="${projectChangeList}" var="project_change" varStatus="s" >
			<tr>
		   		<td></td>
		   		<td>${project_change.changeBefore}</td>
		   		<td>${project_change.changeAfter}</td>
		   		<td>${project_change.createTime}</td>
		   		<td>${project_change.optName}</td>
		   		
	   		</tr>
	   </c:forEach> --%>
	
	</table>
	<div id="pager_t"></div>
	<script type="text/x-jquery-tmpl" id="tmplList_t">
		{{each(i,p) data.content}}
				<tr>
					<td>@{i+1}</td>
					<td>@{p.changeBefore}</td>
					<td>@{p.changeAfter}</td>
					<td>@{formatDate(p.createTime)}</td>
					<td>@{p.optName}</td>
					
				</tr>
		{{/each}}
	</script>
	<script type="text/javascript">
		var pageSize_t = 10;
		$(function() {
			getData_t(1);
			//$("#queryForm").submit();
		})
		
		function getData_t(pageIndex_t) {
			var queryData_t = $("#queryForm_t").serialize();
			pageIndex_t = pageIndex_t - 1;
			queryData_t = queryData_t + "&pageIndex=" + pageIndex_t + "&pageSize="
					+ pageSize_t;
			$.ajax({
				type : "POST",
				url : "${ctx}/projectchange/listAjax",
				data : queryData_t,
				success : function(data) {
					if (data == null || data.records == 0) {
						$("#tbody_t").html("暂无记录");
					} else {
						$("#tbody_t").html($("#tmplList_t").tpl({
							data : data
						}));
					}
					//分页控件
					var pager_t = new pagination(function() {
						getData_t($(this).attr("data-index"));
					});
					pager_t.pageIndex = data.number + 1;//当前页码
					pager_t.pageSize = data.size;//页大小
					pager_t.totalCount = data.totalElements;//总条数
					pager_t.totalPage = data.totalPages;//总页数
					$("#pager_t").html(pager_t.creat());
				}
			});
		};
	</script>
	
	<script type="text/javascript">
		
	</script>

