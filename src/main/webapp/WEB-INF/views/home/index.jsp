<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
</head>
<body>
	<div class="container">
		<h3 class="text-center">请选择岗位属性</h3>
		<br /> <br /> <br />
		<div class="row">
			<div class="span2 offset3">
				<a href="${ctx }/home/myhome"
					class="btn btn-large btn-block btn-primary" type="button">技术中心人员</a>
			</div>
			<div class="span2"></div>
			<div class="span2">
				<shiro:lacksRole name="pm">
					<shiro:lacksRole name="mt">
						<a href="javascript:feijishu()"
							class="btn btn-large btn-block btn-primary" type="button">非技术中心人员</a>
					</shiro:lacksRole>
				</shiro:lacksRole>
				<shiro:hasAnyRoles name="pm,mt">
					<a href="http://jx.ync365.com/Admin/index.php/Login/index"
						class="btn btn-large btn-block btn-primary" type="button">非技术中心人员</a>
				</shiro:hasAnyRoles>
			</div>
		</div>
		<br /> <br /> <br />
		<h4>技术中心人员：包括，平台研发MT、测试、产品、ued 等项目技术中心部门人员。</h4>
		<h4>非技术中心人员：没有项目计划和项目参与的部门人员，包括运维、人事、行政、以及各MT负责人</h4>
	</div>
	<script type="text/javascript">
		function feijishu() {
			alert("点击错误");
		}
	</script>
</body>
</html>