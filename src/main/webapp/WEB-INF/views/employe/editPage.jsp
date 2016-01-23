<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>编辑员工</title>
<script src="${ctx }/static/My97/WdatePicker.js"></script>

<script type="text/javascript">
	function f(){
		var  myselect=document.getElementById("selectDept");
		var index=myselect.selectedIndex ; 
		var  id=myselect.options[index].value;
		var text=myselect.options[index].text;
		 
		document.getElementById("departmentId").value=id;
		document.getElementById("departmentName").value=text;
		
	}
	$(function(){
		var deptId=	document.getElementById("departmentId").value;
		var deptName=document.getElementById("departmentName").value;
		var obj=document.getElementById('selectDept');
		 for(var i = 0; i < obj.options.length; i++){
			 var tmp = obj.options[i].value;
			 if(tmp == deptId){
				 obj.options[i].selected=true;
			 }
		 }
	});
</script>
</head>
<body>
	<form id="inputForm" action="${ctx }/admin/employe/edit/${employe.id}" method="post" class="form-horizontal">
		<input type="hidden" name="id" value="${employe.id}"/>
		<fieldset>
			<legend><small>编辑员工</small></legend>
			<div class="control-group">
				<label for="task_title" class="control-label">姓名:</label>
				<div class="controls">
					<input type="text" id="name" name="name"  value="${employe.name}" class="input-large required" minlength="3"/>
				</div>
			</div>	
			<%-- <div class="control-group">
				<label for="description" class="control-label">工号:</label>
				<div class="controls">
					<input id="code" name="code" class="input-large" value="${employe.code}"></textarea>
				</div>
			</div> --%>
			<div class="control-group">
				<label for="description" class="control-label">邮箱:</label>
				<div class="controls">
					<input id="email" name="email" class="input-large" value="${employe.email}"></textarea>
				</div>
			</div>
			<div class="control-group">
				<label for="description" class="control-label">手机:</label>
				<div class="controls">
					<input id="mobile" name="mobile" class="input-large" value="${employe.mobile}"></textarea>
				</div>
			</div>
			<div class="control-group">
				<label for="description" class="control-label">部门:</label>
				<div class="controls">
					<input type="hidden" id="departmentName" name="departmentName" class="input-large required" value="${employe.departmentName}"/>
					<input type="hidden" id="departmentId" name="departmentId" class="input-large required" value="${employe.departmentId}">  
					<select id="selectDept" onclick="f()">
						<c:if test="${employe.departmentId == -1}">
							<option value="${employe.departmentId}" selected="selected">${employe.departmentName}</option>
						</c:if>
						<c:forEach items="${dept }" var="dept">
							<option value="${dept.id}" >${dept.name}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="control-group">
				<label for="departmentName" class="control-label">是否为MT负责人:</label>
				<div class="controls">
					<c:choose>
						<c:when test="${employe.isMt==true}">
							<input type="radio" value="1" id="isMt" name="isMt" checked="checked">是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" value="0" id="isMt" name="isMt"  >否 
						</c:when>
						<c:otherwise>
							<input type="radio" value="1" id="isMt" name="isMt" >是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" value="0" id="isMt" name="isMt" checked="checked">否 
						</c:otherwise>
					</c:choose>
				</div>
			</div>
					<div class="control-group">
				<label for="departmentName" class="control-label">是否为项目负责人:</label>
				<div class="controls">
					<c:choose>
						<c:when test="${employe.isPm==true}">
							<input type="radio" value="1" id="isPm" name="isPm" checked="checked">是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 		<input type="radio" value="0" id="isPm" name="isPm">否 
						</c:when>
						<c:otherwise>
							<input type="radio" value="1" id="isPm" name="isPm" >是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 		<input type="radio" value="0" id="isPm" name="isPm" checked="checked">否 
						</c:otherwise>
					</c:choose>
				</div>
			</div> 
			<%-- <div class="control-group">
				<label for="createTime" class="control-label">入职时间:</label>
				<div class="controls">
					<input type="text" id="createTime" name="employmentDate" value="${employe.employmentDate }" class="Wdate"  onfocus="new WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd'})"/>
				</div>
			</div>	 --%>
			<div class="form-actions">
				<input id="submit_btn" class="btn" type="submit" value="提交"/>&nbsp;	
				<input id="cancel_btn" class="btn" type="button" value="返回" onclick="history.back()"/>
			</div>
		</fieldset>
	</form>
</body>
</html>