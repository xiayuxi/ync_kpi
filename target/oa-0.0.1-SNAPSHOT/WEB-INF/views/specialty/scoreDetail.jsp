<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="staticCtx" value="${pageContext.request.contextPath}/static" />
<html>
<head>
<title>员工专业性得分--查看</title>
<style type="text/css">
	.comment {
	width:25%;/*自动适应父布局宽度*/
	overflow:auto;
	word-break:break-all;
	resize : none;
	border-width:0;
	} 
	
</style> 
<script type="text/javascript">
	
</script>
</head>
<body>
<div >			
		<div id="specialty">	
			<h4>员工专业---查看</h4>				
			<span><font size="4">姓名：${employeScoreDetail.beEvaluatedName }</font></span><br/><br/>	
			<span><font size="4">部门：${employeScoreDetail.departmentName }</font></span><br/><br/>
			<span><font size="4">MT负责人：${employeScoreDetail.mt }</font></span>&nbsp;&nbsp;&nbsp;&nbsp;
			<span><font size="4">时间：<fmt:formatDate value="${employeScoreDetail.evaluateTime }" pattern="yyyy-MM-dd HH:mm:ss" /></font> </span><br/>			
		</div>
		<div>-----------------------------------------------------------------------------------------</div>
		<!-- <hr color="#000000" width="50%" style=""/> -->
		<div>
			<c:forEach var="specialtyJX" items="${employeScoreDetail.specialtyJXList }" >
			<font size="4">
				<span>${specialtyJX.specialtyName }：
					<c:if test="${specialtyJX.score!=null }">	
							${specialtyJX.score }分							
					</c:if> 				
				</span></font><br/><br/>			
			</c:forEach>		
			<font size="4">总分：<span>
			<c:if test="${employeScoreDetail.totalScore!=0.0 }">	
					${employeScoreDetail.totalScore }分							
			</c:if> 
			</span></font><br/><br/>
			<font size="4">评语：<textarea id="comment"  disabled="disabled" rows="3" name="comment" class="comment">${employeScoreDetail.comment }</textarea></font><br/>
		</div>
</div>
</body>
</html>
