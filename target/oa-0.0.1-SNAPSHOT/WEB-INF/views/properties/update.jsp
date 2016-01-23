<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>绩效维度满分管理</title>
</head>

<body>
	<h3>绩效维度满分管理</h3>
	<form action="properties" method="post">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>效能</th>
					<th>客户满意</th>
					<th>专业</th>
					<th>上级</th>
					<th>总分</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input class="input-small" type="text"
						name="efficiency.value" value="${efficiency.value }" /></td>
					<td><input class="input-small" type="text"
						name="satisfaction.value" value="${satisfaction.value }" /></td>
					<td><input class="input-small" type="text"
						name="specialty.value" value="${specialty.value }" /></td>
					<td><input class="input-small" type="text"
						name="leader_assessment.value" value="${leader_assessment.value }" /></td>
					<td><label id="total">0</label></td>
					<td><input  class="btn" type="submit" value="修改" /></td>
				</tr>
			</tbody>
		</table>
		<input type="hidden" name="efficiency.id" value="${efficiency.id }" />
		<input type="hidden" name="leader_assessment.id"
			value="${leader_assessment.id }" /> <input type="hidden"
			name="satisfaction.id" value="${satisfaction.id }" /> <input
			type="hidden" name="specialty.id" value="${specialty.id}" />
	</form>
	<script type="text/javascript">
	var message="${info}"
		$(function() {
			$("form").validate({
				rules:{
					'efficiency.value':{digits:true},
					'satisfaction.value':{digits:true},
					'specialty.value':{digits:true},
					'leader_assessment.value':{digits:true}
				},
				submitHandler:function(form){
					if(parseInt($("#total").html())==100){
						form.submit();
					}else{
						alert("请保持总分为100");
						return false;
					}
				}
			})
			$("input[type='text']").each(function(index,el){
				$(el).change(function(){
					var sum=0;
					$("input[type='text']").each(function(index,el){
						sum +=parseInt($(el).val());
					});
					$("#total").html(sum);
				})
			});
			$("input[type='text']:first").change();
			if (message =="success") {
				alert("修改成功");
			}
		})
	</script>
</body>
</html>
