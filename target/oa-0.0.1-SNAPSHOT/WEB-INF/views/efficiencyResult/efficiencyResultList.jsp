<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
<!-- 时间控件 css  -->
<link rel="stylesheet" type="text/css" href="${ctx}/static/My97/skin/WdatePicker.css" />
<!-- 时间控件js  -->
<script src="${ctx }/static/My97/WdatePicker.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看员工月度效能</title>
<script type="text/javascript">
	function f(){
		var  myselect=document.getElementById("selectDept");
		var index=myselect.selectedIndex ; 
		var  id=myselect.options[index].value;
		var text=myselect.options[index].text;
		 
		document.getElementById("departmentName").value=text;
		
	}
</script>
</head>
<body>
	<div id="search">
	<form id="form1" class="form-inline">
			<table>
			<tr>
				<td><label class="control-label">姓名</label></td>
				<td><input type="text" name="employeName"></td>
				<td><label class="control-label">时间</label></td>
				<td><input class="Wdate" id="first" type="text" onfocus="new WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM'})" name="createTime"/></td>
			    <td><label class="control-label">实际工时</label></td>
			    <td><input type="text" name="actualHours"></td>
			</tr>
			<tr>
				<!-- <td><label class="control-label">工号</label></td>
				<td><input type="text" name="employeCode"></td> -->
				<td><label class="control-label">部门</label></td>
				<td><input type="hidden" id="departmentName" name="departmentName">
						<select id="selectDept" onclick="f()">
						<option >---请选择---</option>
						<c:forEach items="${dept }" var="dept">
							<option value="${dept.id}" >${dept.name}</option>
						</c:forEach>
					</select>			
				</td>
				<td><label class="control-label">项目数</label></td>
				<td><input type="text" name="projectCount"></td>
			</tr>
		</table>
		<button id="submit_btn" class="btn" type="submit" >搜索</button>
		<button id="clear_btn" class="btn" onclick="resetSearch();">清空</button>
		</br>
		</form>
	</div>
	<div id=data>
	<table class="table table-striped table-bordered table-condensed">
		<thead>
		<tr>
			<td>序号</td>
			<!-- <td>工号</td> -->
			<td>姓名</td>
			<td>部门</td>
			<td>项目数</td>
			<td>计划工时</td>
			<td>实际工时</td>
			<td>产出工时</td>
			<td>标准工时</td>
			<td>负荷率</td>
			<td>效能</td>
			<td>时间</td>
			<td>总分</td>
			<td>操作</td>
		</tr>
		</thead>
		<thead>
			<tbody id="tbody"></tbody>
		</thead>
		<div id="pager"></div>
		<script type="text/x-jquery-tmpl" id="tmplList">
			{{each(i,p) data.content}}
			<tr>
				<td>@{i+1}</td>
				
				<td>@{p.employeName}</td>
				<td>@{p.departmentName}</td>
				<td>@{p.projectCount}</td>
				<td>@{p.planHours}</td>
				<td>@{p.actualHours}</td>
				<td>@{p.outputHours}</td>
				<td>@{p.basicHours}</td>
				<td>@{p.loadRate}%</td>
				<td>@{p.efficiencyPercentage}%</td>
				<td>@{formatDate(p.createTime)}</td>
				<td>@{p.efficiencyTotalScore}</td>
				<td>
					<a href="view/@{p.id}" >查看</a>
				</td>
			<tr>
			{{/each}}
		</script>
	</table>
	<script>
	var pageSize= 10;
	$(function(){
		validate();
		$("#form1").submit();
	});
	function resetSearch() {
		$("input").val('');
		var a = document.getElementById("selectDept");
		a.options[0].selected = true;
	}
	//格式化时间
	function formatDate(times) {
		var date = new Date(times);
		var fm = date.format('yyyy-MM');
		return fm;
	}
	 
	function getData(pageIndex){
		var queryData=$("#form1").serialize();
		pageIndex = pageIndex-1;
		queryData = queryData +"&pageIndex=" +pageIndex +"&pageSize=" +pageSize;
		var sort="totalScore";
		$.ajax({
			type : "POST",
			url : "${ctx}/admin/efficiencyResult/efficiencyResultQuery",
			data : queryData,
			success : function(data) {
				if (data == null || data.records == 0) {
					$("#tbody").html("暂无记录");
				} else {
					$("#tbody").html($("#tmplList").tpl({
						data : data
					}));
				}
				//分页控件
				var pager = new pagination(function() {
					getData($(this).attr("data-index"));
				});
				pager.pageIndex = data.number + 1;//当前页码
				pager.pageSize = data.size;//页大小
				pager.totalCount = data.totalElements;//总条数
				pager.totalPage = data.totalPages;//总页数
				$("#pager").html(pager.creat());
			}
		});
	};
	</script>
	<script type="text/javascript">
	function validate() {
		$("#form1").validate({
			rules:{
				id:{digits:true},
			},
			messages:{
			},
			submitHandler:function(form){
				getData(1);
			}
		});
	}
	</script>
	</div>
</body>
</html>