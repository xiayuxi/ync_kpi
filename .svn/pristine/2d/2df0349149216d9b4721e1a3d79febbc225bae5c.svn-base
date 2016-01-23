<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<title>绩效系统</title>
<script type="text/javascript">
	function js_method_fun(urlInfo, el) {
		clearcss($(el).parent("li"));
		var a = "${ctx}" + urlInfo;
		$("#iframe_id").attr("src", a);
	}
	function clearcss(el) {
		$(".nav").children("li").each(function(index, e) {
			$(e).attr("class", "");
		});
		el.attr("class", "active");
	}
	$(function() {
		windowHeig($("#content"));
		$(".nav").children(".active").children("a").click();
	})
	function windowHeig(elem1) {
		var h = elem1.height();
		if (h < 500) {
			$("#iframe_id", window.parent.document).css("height",
					Number(600) + "px");
		} else {
			$("#iframe_id", window.parent.document).css("height",
					Number(elem1.height() + 100) + "px");
		}
		/* $("#iframe_id",window.parent.document).css("width",Number(elem1.height())+"px"); */
	};
</script>

</head>

<body>
	<div class="container" style="width: auto">
		<div class="container-fluid ">
			<div class="row-fluid">
				<div class="span2">
					<ul class="nav nav-pills nav-stacked">
						<li class="nav-header"></li>
						<!-- <li class="active"><a href="#">首页</a></li> -->
						<li class="active"><a href="javascript:void(0);"
							onclick="js_method_fun('/admin/performanceEvaluation/list',this)">绩效总评管理</a></li>
						<li><a href="javascript:void(0);"
							onclick="js_method_fun('/admin/leaderAssessment/listPage',this)">上级评价管理</a></li>
						<li class="dropdown"><a href="#collapseOne"
							data-toggle="collapse" class="dropdown-toggle">客户满意 <b
								class="caret"></b></a>
							<ul id="collapseOne" class="collapse nav nav-list">
								<li><a href="javascript:void(0);"
									onclick="js_method_fun('/admin/satisfaction/list',this)">客户满意管理</a></li>
								<li><a href="javascript:void(0);"
									onclick="js_method_fun('/admin/satisfaction/resultList',this)">月度客户满意</a></li>
							</ul></li>
						<li class="dropdown"><a href="#collapse3"
							data-toggle="collapse" class="dropdown-toggle">专业管理 <b
								class="caret"></b></a>
							<ul id="collapse3" class="collapse nav nav-list">
								<li><a href="javascript:void(0);"
									onclick="js_method_fun('/admin/specialty/list',this)">专业管理</a></li>
								<li><a href="javascript:void(0);"
									onclick="js_method_fun('/admin/specialty/employeScore',this)">员工专业性得分</a></li>
							</ul></li>

						<li class="dropdown"><a href="#collapseTwo"
							data-toggle="collapse" class="dropdown-toggle">效能管理 <b
								class="caret"></b></a>
							<ul id="collapseTwo" class="collapse  nav nav-list">
								<li><a href="javascript:void(0);"
									onclick="js_method_fun('/admin/efficiencyResult/list',this)">员工月度效能</a></li>
								<li><a href="javascript:void(0);"
									onclick="js_method_fun('/admin/efficiency/list',this)">员工效能</a></li>
								<li><a href="javascript:void(0);"
									onclick="js_method_fun('/admin/project/list',this)">项目效能</a></li>
							</ul></li>
						<li><a href="javascript:void(0);"
							onclick="js_method_fun('/admin/project/projectList',this)">项目管理</a></li>
						<li><a href="javascript:void(0);"
							onclick="js_method_fun('/admin/department/list',this)">部门管理</a></li>
						<li><a href="javascript:void(0);"
							onclick="js_method_fun('/admin/employe/list',this)">员工管理</a></li>
						<li><a href="javascript:void(0);"
							onclick="js_method_fun('/admin/properties',this)">绩效维度满分管理</a></li>
					</ul>
				</div>
				<div class="span10">
					<div class="container-fluid ">
						<div class="row-fluid">
							<iframe id="iframe_id" src="" style="border: 0px; width: 100%;">
							</iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>