<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Color Admin | Managed Tables</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.2.0/handlebars.min.js"></script>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/animate.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/style.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="${pageContext.servletContext.contextPath}/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath}/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/pace/pace.min.js"></script>
	<!-- <script src="${pageContext.servletContext.contextPath }/commute/commute.js" ></script> -->
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
	<!-- ====================================================================================== -->
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li><button type="button" id="btnGotime" class="btn btn-success" onclick="gotime()">출근</button></li>
				<li><button type="button" id="btnOuttime" class="btn btn-danger" onclick="outtime()">퇴근</button></li>
				<li><a href="javascript:;">Home</a></li>
				<li><a href="javascript:;">Tables</a></li>
				<li class="active">출퇴근 페이지</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">출근/퇴근 목록</h1>
			<!-- end page-header -->
			
			<!-- begin row -->
			<div class="row">
			    <!-- begin col-12 -->
			    <div class="col-md-12">
			        <!-- begin panel -->
                    <div class="panel panel-inverse">
                        <div class="panel-body">
                            <table id="data-table" class="table table-striped table-bordered">
                               <thead>
                                    <tr>
                                    	<th>부서명</th>
                                        <th>사원이름</th>
                                        <th>출근시간</th>
                                        <th>퇴근시간</th>
                                    </tr>
                                    
                                </thead>
                                <tbody id="commuteList">
                              	<c:forEach var="CommuteVO" items="${userCommuteList}">
                                    <tr class="odd gradeX">
                                        <td>${CommuteVO.deptName}</td>
                                       	<td>${CommuteVO.empName}</td>
                                        <td><fmt:formatDate value="${CommuteVO.commuteGotime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                        <td><fmt:formatDate value="${CommuteVO.commuteOuttime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end col-12 -->
            </div>
            <!-- end row -->
		</div>
		<!-- end #content -->
		
        
		
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/table-manage-default.demo.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			TableManageDefault.init();
			var isCommuted = ${isCommuted};
			if(isCommuted){
				$("#btnGotime").attr("disabled", true);
			} else {
				$("#btnGotime").attr("disabled", false);
			}
			
			//alert(typeof ${isCommuted});
		});
		
		/* var commuteList = $("#commuteList"); */
		
		function loadCommuteList() {
			//alert("loadddd");
			location.href = "commute";
			/* $.ajax({
				url:"ajax/commute_list",
				type:"POST",
				dataType:"text",
				contentType:"application/json",
				success: function(text) {
					alert("3333");
					loadCommuteList();
				},
				error: function(req) {
					alert("4444");
					console.log(req);
				},
				cache: false
			}); */
			
		}
		
		function gotime() {
			alert("gotime");
			$.ajax({
				url:"ajax/commute_add",
				type:"POST",
				dataType:"text",
				contentType:"application/json",
				success: function(text) {
					if(text == "success"){
						alert("출근완료 되었습니다.");
						loadCommuteList();
					}else{
						alert("이미 출근 등록이 되었습니다.");
					}
				},
				error: function(req) {
					console.log(req);
				},
				cache: false
			});
			
		}
		
		function outtime() {
			alert("outtime")
			$.ajax({
				url: "ajax/commute_out",
				type: "post",
				dataType: "text",
				contentType:"application/json",
				success: function(text) {
					if(text == "outerror") {
						alert("이미 퇴근 처리가 완료 되었습니다.")
					} else if(text == "false") {
						alert("출근 등록 후 퇴근 처리가 가능합니다.")
					} else {
						alert("퇴근완료 되었습니다.");
						loadCommuteList();
					} 
						$("#btnOuttime").attr("disabled", true);
					
					/* if(text == "success") {
						alert("퇴근완료 되었습니다.");
						loadCommuteList();
					} else {
						alert("출근 등록이 안되어있거나 이미 퇴근 처리가 완료 되었습니다.");
						$("#btnOuttime").attr("disabled", false);
					}  */
				},
				error: function(req) {
					console.log(req);
				},
				cache: false
			});
		}
	</script>
</body>
</html>
