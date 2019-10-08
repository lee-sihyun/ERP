<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8" />
<title>Color Admin | Managed Tables</title>
<style type="text/css">
#checkbox {
	width: 10px;
}
.error{
	color: red;
}
</style>


<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
	name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />

<!-- ================== BEGIN BASE CSS STYLE ================== -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<link
	href="${pageContext.servletContext.contextPath }/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.servletContext.contextPath }/assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.servletContext.contextPath }/assets/css/animate.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.servletContext.contextPath }/assets/css/style.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.servletContext.contextPath }/assets/css/style-responsive.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.servletContext.contextPath }/assets/css/theme/default.css"
	rel="stylesheet" id="theme" />
<!-- ================== END BASE CSS STYLE ================== -->

<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
<!-- <link href="assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" /> -->
<link
	href="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.servletContext.contextPath }/assets/plugins/parsley/src/parsley.css"
	rel="stylesheet" />
<!-- ================== END PAGE LEVEL STYLE ================== -->

<!-- ================== BEGIN BASE JS ================== -->
<script
	src="${pageContext.servletContext.contextPath }/assets/plugins/pace/pace.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.2.0/handlebars.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath }/assets/plugins/pace/pace.min.js"></script>
<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-container -->
	<div id="page-container"
		class="fade page-sidebar-fixed page-header-fixed">

		<div id="content" class="content">
			<h1 class="page-header">사원 정보</h1>
			<div class="panel panel-inverse" data-sortable-id="form-validation-1">

				<div class="panel-body panel-form">

					<form:form class="form-horizontal form-bordered" method="post" id="empAdd" modelAttribute="employeeDTO">
						
						
						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4" for="fullname">사원번호	* :</label>
							<div class="col-md-6 col-sm-6">
								<form:input class="form-control" path="empNo" readonly="true"/>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4" for="fullname">이름	* :</label>
							<div class="col-md-6 col-sm-6">
								<form:input class="form-control" path="empName" />
								<form:errors path="empName" class="error" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4" for="email">부서명	* :</label>
							<div class="col-md-6 col-sm-6">
								<form:hidden path="deptName" id="deptNo" />
								<form:select id="deptName" path="deptNo" >
									
									<form:option id="1" value="1" >전산</form:option>
									<form:option id="2" value="2" >인사</form:option>
									<form:option id="3" value="3" >영업</form:option>
									<form:option id="4" value="4" >마케팅</form:option>
									<form:option id="5" value="5" >임원</form:option>
									<form:option id="6" value="6" >디자인</form:option>
													
								</form:select>
								<form:errors path="deptNo" class="error" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4" for="email">직급	* :</label>
							<div class="col-md-6 col-sm-6">
								<form:input class="form-control" path="empPosition" />
								<form:errors path="empPosition" class="error" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4" for="website">비밀번호	* :</label>
							<div class="col-md-6 col-sm-6">
								<form:password class="form-control" path="password"
									placeholder="8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요." />
								<form:errors path="password" class="error" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4" for="message">팀장명  :</label>
							<div class="col-md-6 col-sm-6">
								<form:input class="form-control" path="empManager" />
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4" for="message">이메일  :</label>
							<div class="col-md-6 col-sm-6">
								<form:input class="form-control" path="empEmail" delimiter=" "/>
								<form:errors path="empEmail" class="error" delimiter=" "/>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4" for="message">내선번호 * :</label>
							<div class="col-md-6 col-sm-6">
								<form:input class="form-control" path="extension"
									placeholder="XXX-XXXX-XXX" />
								<form:errors path="extension" class="error" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4" for="message">휴대폰 번호 * :</label>
							<div class="col-md-6 col-sm-6">
								<form:input class="form-control" path="empPhone"
									placeholder="XXX-XXXX-XXX" />
								<form:errors path="empPhone" class="error" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4" for="message">주소 * :</label>
							<div class="col-md-6 col-sm-6">
								<form:input class="form-control" path="empAddress" />
								<form:errors path="empAddress" class="error" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4" for="message">재직상태 * :</label>
							<div class="col-md-6 col-sm-6">
								<form:input class="form-control" path="empState" />
								<form:errors path="empState" class="error" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4" for="message">메모 (최대 200) : </label>
							<div class="col-md-6 col-sm-6">
								<form:textarea class="form-control" path="memo" rows="4" data-parsley-range="[0,200]"/>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4"></label>
							<div class="col-md-6 col-sm-6">
								<button type="button" class="btn btn-primary" onclick="javascript:empAdd();">사원 정보 수정</button>
								&nbsp;&nbsp;&nbsp;
								<button type="button" class="btn btn-danger" onclick="location.href='${pageContext.servletContext.contextPath}/admin/emp'">취소</button>
							</div>

						</div>

					</form:form>
				</div>
			</div>
			<!-- end row -->
		</div>
		<!-- end #content -->
	</div>
	<!-- end page container -->
	
	<script id="template" type="text/x-handlebars-template">
	


	</script>
	
	<script type="text/javascript">
	
	
	selected();
	
	function selected() {
		var deptNo= $("#deptNo").val();
		
		if(deptNo=="전산"){
			$("#1").prop("selected","true");			
		}
		if(deptNo=="인사"){
			$("#2").prop("selected","true");			
		}
		if(deptNo=="영업"){
			$("#3").prop("selected","true");			
		}
		if(deptNo=="마케팅"){
			$("#4").prop("selected","true");			
		}
		if(deptNo=="임원"){
			$("#5").prop("selected","true");			
		}
		if(deptNo=="디자인"){
			$("#6").prop("selected","true");			
		}
		
	}
	
		
	
	
	
		function empAdd() {
			if (confirm("사원 정보 수정하시겠습니까?")) {
				$("#empAdd").attr("method", "POST");
				$("#empAdd").attr("action","${pageContext.servletContext.contextPath }/admin/empUpdate");
				$("#empAdd").submit();
			}
		}
	</script>




	<!-- ================== BEGIN BASE JS ================== -->
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->

	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<!-- <script src="assets/plugins/DataTables/media/js/jquery.dataTables.js"></script> -->
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/table-manage-default.demo.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/apps.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/parsley/dist/parsley.js"></script>

	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
			TableManageDefault.init();
		});
	</script>
</body>
</html>
