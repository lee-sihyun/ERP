<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>Color Admin | Managed Tables</title>
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
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/parsley/src/parsley.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/pace/pace.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.2.0/handlebars.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
		
		
		
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">외부 주소록</h1>
			<!-- end page-header -->
			
			<!-- begin row -->
			<div class="panel panel-inverse" data-sortable-id="form-validation-1">
                        
                        <div class="panel-body panel-form">
                            <form id="addressView" class="form-horizontal form-bordered" data-parsley-validate="true" name="demo-form" action="javascript:addressAdd();">
								<div class="form-group">
									<label class="control-label col-md-4 col-sm-4" for="fullname">이름 *  :</label>
									<div class="col-md-6 col-sm-6">
										<label class="control-label col-md-4 col-sm-4" for="fullname">${outaddress.addressName}</label>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-4 col-sm-4" for="email">이메일   :</label>
									<div class="col-md-6 col-sm-6">
										<label class="control-label col-md-4 col-sm-4" for="email">${outaddress.addressEmail}</label>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-4 col-sm-4" for="email">직급   :</label>
									<div class="col-md-6 col-sm-6">
										<label class="control-label col-md-4 col-sm-4" for="email">${outaddress.addressPosition}</label>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-4 col-sm-4" for="website">회사명   :</label>
									<div class="col-md-6 col-sm-6">
										<label class="control-label col-md-4 col-sm-4" for="website">${outaddress.companyName}</label>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-4 col-sm-4" for="message">부서   :</label>
									<div class="col-md-6 col-sm-6">
										<label class="control-label col-md-4 col-sm-4" for="message">${outaddress.deptName}</label>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-4 col-sm-4" for="message">휴대폰   :</label>
									<div class="col-md-6 col-sm-6">
										<label class="control-label col-md-4 col-sm-4" for="message">${outaddress.addressPhone}</label>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-4 col-sm-4" for="message">회사번호   :</label>
									<div class="col-md-6 col-sm-6">
										<label class="control-label col-md-4 col-sm-4" for="message">${outaddress.companyPhone}</label>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-4 col-sm-4" for="message">회사주소    :</label>
									<div class="col-md-6 col-sm-6">
										<label class="control-label col-md-4 col-sm-4" for="message">${outaddress.companyAddress}</label>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-4 col-sm-4" for="message">메모 (최대 200)    : </label>
									<div class="col-md-6 col-sm-6">
										<label class="control-label col-md-4 col-sm-4" for="message">${outaddress.memo} </label>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-4 col-sm-4"></label>
									<div class="col-md-6 col-sm-6">
										<button type="button" class="btn btn-primary" onclick="location.href='${pageContext.servletContext.contextPath}/address/outaddressUpdate?addressNo=${outaddress.addressNo}'">주소록 수정</button>
										<button type="button" class="btn btn-danger" onclick="location.href='${pageContext.servletContext.contextPath}/address/outaddress'">주소록 목록</button>
									</div>
								</div>
								
                            </form>
                        </div>
                    </div>
            <!-- end row -->
		</div>
		<!-- end #content -->
	</div>
	<!-- end page container -->

	<script type="text/javascript">
	/* 
	function addressAdd() {
		if(confirm("주소록 추가 하시겠습니까?")) {
			$("#addressView").attr("method","get");
			$("#addressView").attr("action","${pageContext.servletContext.contextPath }/address/outaddressUpdate");
			$("#addressView").submit;
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
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<!-- <script src="assets/plugins/DataTables/media/js/jquery.dataTables.js"></script> -->
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/js/table-manage-default.demo.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/js/apps.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/parsley/dist/parsley.js"></script>
	
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			TableManageDefault.init();
		});
	</script>
</body>
</html>
