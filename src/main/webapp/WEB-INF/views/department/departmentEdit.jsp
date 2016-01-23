<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加部门</title>
<style>
	td{
		text-align:center;
	}
</style>
<script type="text/javascript">
$(function(){
	var deptType=	document.getElementById("type").value;
	var obj=document.getElementById('seleteDeptType');
	 for(var i = 0; i < obj.options.length; i++){
		 var tmp = obj.options[i].value;
		 if(tmp == deptType){
			 obj.options[i].selected=true;
		 }
	 }
});

	function selectDeptType(){
		var sel =document.getElementById("seleteDeptType");
		var sel_value=sel.options[sel.selectedIndex].value;
		document.getElementById("type").value=sel_value;
	}
</script>
</head>
<body>
	<form action="${ctx}/admin/department/edit" method="post" id="queryForm">
		<input type="hidden" name="createTime" value="${department.createTime }" />
		<input type="hidden" name="id" value="${department.id }" />
		<table class="table table-striped table-bordered table-condensed">
			<tr>
				<td>部门名称：</td>
				<td><input type="text" name="name" value="${department.name }" /></td>
			</tr>
			<tr>
				<td>部门id：</td>
				<td>${department.id }</td>
			</tr>
			<tr>
				<td>部门人员：</td>
				<td>
					<c:forEach var="list" items="${department.es }">
					<c:if test="${list.isDel == 0 && !list.isMt}">
								${list.name }
					</c:if>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td>MT负责人：</td>
				<td><input type="text" name="mt" value="${department.mt }"/></td>
			</tr>
			
			<tr>
				<td>部门类型：</td>
				<td><input type="hidden" name="type" id="type" value="${department.type }">
					<select id="seleteDeptType" onclick="selectDeptType()">
						<option value="1" >产品</option>
						<option value="2" >开发</option>
						<option value="3" >UED</option>
						<option value="4" >测试</option>
					</select>
				</td>
			</tr>
		</table>
		<div style="padding-left: 600px;">
			</br>
			<button class="btn">提交</button>
		</div>
	</form>
<script>
	$(function(){
		validate();
	})
	function validate() {
		$("#queryForm").validate({
			rules : {
				name : {
					required:true,
					remote: {
					    url: "${ctx}/admin/department/validateName",     //后台处理程序
					    type: "post",               //数据发送方式
					    dataType: "json",           //接受数据格式   
					    data: {                     //要传递的数据
					        name: function() {
					            return $("input[name='name']").val();
					        },
					        id : function() {
					        	return ${department.id }
					        }
					    }
					}
				},
				mt : {
					required:true
				}
			},
			messages : {
				name : {
					required:"必须输入部门名称",
					remote : "部门名称已存在"
				},
				mt : {
					required : "必须输入负责人名称"
				}
			}
		});
	}
</script>
</body>
</html>