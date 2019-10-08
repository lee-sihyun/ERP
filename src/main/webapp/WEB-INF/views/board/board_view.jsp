<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>ITWILL</title>
	<style type="text/css">
	#checkbox {
		width: 10px;
	}

	</style>
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
	<!-- <link href="assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" /> -->
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css" rel="stylesheet">
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/pace/pace.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.2.0/handlebars.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
		
		
		
    <!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb float-xl-right">
				<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">Form Stuff</a></li>
				<li class="breadcrumb-item active">Form Validation</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">Form Validation <small>header small text goes here...</small></h1>
			<!-- end page-header -->
			<!-- begin row -->
			<div class="row">
				<!-- begin col-6 -->
				<div class="col-xl-6 ui-sortable">
					<!-- begin panel -->
					<div class="panel panel-inverse" data-sortable-id="form-validation-1" style="">
						<!-- begin panel-heading -->
						<div class="panel-heading ui-sortable-handle">
							<h4 class="panel-title">Basic Form Validation</h4>
							
						</div>
						<!-- end panel-heading -->
						<!-- begin panel-body -->
						<div class="panel-body">
							<form class="form-horizontal" data-parsley-validate="true" name="demo-form" novalidate="">
								<div class="form-group row m-b-15">
									<label class="col-md-4 col-sm-4 col-form-label" for="fullname">제목 :</label>
									<div class="col-md-8 col-sm-8">
										<div class="form-control" id="message" data-parsley-range="[20,200]">${board.title }</div>
									</div>
								</div>
								<div class="form-group row m-b-15">
									<label class="col-md-4 col-sm-4 col-form-label" for="email">작성자 :</label>
									<div class="col-md-8 col-sm-8">
										<label class="col-md-4 col-sm-4 col-form-label" for="fullname">${board.writer }</label>
									</div>
								</div>
								
								<div class="form-group row m-b-15">
									<label class="col-md-4 col-sm-4 col-form-label" for="message">내용 (20 chars min, 200 max) :</label>
									<div class="col-md-8 col-sm-8">
										<div class="form-control" id="message" data-parsley-range="[20,200]"  style="height: 515.988636px;">${board.bcontent }</div>
									</div>
								</div>
								
								
								<div class="form-group row m-b-0">
									<label class="col-md-4 col-sm-4 col-form-label">&nbsp;</label>
									<div class="col-md-8 col-sm-8">
										<button type="submit" class="btn btn-primary">Submit</button>
									</div>
								</div>
							</form>
						</div>
						<!-- end panel-body -->
						
						
						
					</div>
					<!-- end panel -->
				</div>
				
				
				
				
			</div>
			<!-- end row -->
		</div>
            <!-- end row -->
		</div>
		<!-- end #content -->
		
        
		
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	<!-- end page container -->

	<script type="text/javascript">
	/*
	function boardAdd() {
		if(confirm("게시글을 저장하시겠습니까?")) {
			$("#boardAdd").attr("method","POST");
			$("#boardAdd").attr("action","${pageContext.servletContext.contextPath }/boardAdd");
			$("#boardAdd").submit();
		}
	}
	*/
	</script>
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<!-- <script src="assets/plugins/DataTables/media/js/jquery.dataTables.js"></script> -->
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/js/table-manage-default.demo.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
	$(document).ready(function() {
		App.init();
		FormWysihtml5.init();
	});
	</script>
</body>
</html>
