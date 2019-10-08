<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Color Admin | Form Plugins</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- alert 디자인 js 파일 -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
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
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/ionRangeSlider/css/ion.rangeSlider.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/ionRangeSlider/css/ion.rangeSlider.skinNice.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/password-indicator/css/password-indicator.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-combobox/css/bootstrap-combobox.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/jquery-tag-it/css/jquery.tagit.css" rel="stylesheet" />
    <link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" />
    <link href="${pageContext.servletContext.contextPath }/assets/plugins/select2/dist/css/select2.min.css" rel="stylesheet" />
    <link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-eonasdan-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
		
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li><a href="javascript:;">Home</a></li>
				<li><a href="${pageContext.servletContext.contextPath}/calendar/display">Calendar</a></li>
				<li class="active">register calendar</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">일정 등록</h1>
			<!-- end page-header -->
			
			<!-- begin row -->
			<div class="row">
                <!-- begin col-6 -->
			    <div class="col-md-6">
                    <!-- begin panel -->
                    <div class="panel panel-inverse" data-sortable-id="form-plugins-1">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">&nbsp;</h4>
                        </div>
                        <div class="panel-body panel-form">
                            <form class="form-horizontal form-bordered" data-parsley-validate="true" name="calendarForm">
								<div class="form-group">
									<label class="col-md-3 control-label">* 제목</label>
									<div class="col-md-6 col-sm-6">
										<input class="form-control" type="text" name="calTitle" data-parsley-required="true" value="${calendar.calTitle}" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">일자</label>
									<div class="col-md-8">
									    <div class="row row-space-10">
                                            <div class="col-md-5">
                                                <input type="text" class="form-control" id="datetimepicker3" name="calStartDate" placeholder="시작일" value="${calendar.calStartDate }" />
                                            </div>
                                            <div class="col-md-5">
                                                <input type="text" class="form-control" id="datetimepicker4" name="calEndDate" placeholder="종료일" value="${calendar.calEndDate }" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
									<label class="col-md-3 control-label">일정타입</label>
                                    <div class="col-md-8">
                                    	<div class="row row-space-10">
                                    		<div class="col-md-5">
		                                        <select class="form-control" name="calCategory" value="${calendar.calCategory }"> 
		                                            <option selected="selected">선택</option>
		                                            <option>업무</option>
		                                            <option>출장</option>
		                                            <option>직접입력</option>
		                                        </select>
		                                    </div>
	        	                            <div class="col-md-2">
	    	                                	<input type="text" class="form-control" id="directInput" name="empNo" value="${calendar.empNo }" />
		                                    </div>
		                                    <div class="col-md-2">
	    	                                	<input type="text" class="form-control" id="directInput" name="deptNo" value="${calendar.deptNo }" />
		                                    </div>
		                            	</div>
                                    </div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label" for="calPlace">장소</label>
									<div class="col-md-6 col-sm-6">
										<input class="form-control" type="text" id="calPlace" name="calPlace" data-parsley-required="true" value="${calendar.calPlace }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">* 캘린더</label>
                                    <div class="col-md-6 col-sm-6">
                                        <select class="form-control" name="calGroup"  value="${calendar.calGroup }">
                                            <option selected="selected">선택</option>
                                            <option>마이캘린더</option>
                                            <option>부서캘린더</option>
                                        </select>
                                    </div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label" for="calContent">내용</label>
									<div class="col-md-6 col-sm-6">
										<textarea class="form-control" id="calContent" name="calContent" rows="4" data-parsley-range="[20,200]" value="${calendar.calContent }"></textarea>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label"></label>
									<div class="col-md-6 col-sm-6">
										<input type="button" class="btn btn-primary" onclick="submitCheck();" value="확인"/>
										<input type="button" class="btn btn-primary" 
											   onclick="location.href='${pageContext.servletContext.contextPath}/calendar/display';" value="취소"/>
										
									</div>
								</div>
							</form>
                        </div>
                    </div>
                    <!-- end panel -->
                    
                </div>
                <!-- end col-6 -->
            </div>
            <!-- end row -->
		</div>
		<!-- end #content -->
		
	</div>
	<!-- end page container -->
	
	<script type="text/javascript">
	calendarForm.calTitle.focus();
	
	function submitCheck() {
		
		if(calendarForm.calTitle.value=="") {
			swal("Oops!","제목을 입력해 주세요.","error");
			calendarForm.calTitle.focus();
			return;
		}
		
		if(calendarForm.calGroup.value=="선택") {
			swal("Oops!","캘린더를 선택해 주세요.","error");
			return;
		}
		
		calendarForm.method="POST";
		calendarForm.action="${pageContext.servletContext.contextPath}/calendar/add";
		calendarForm.submit();
	}
	</script>
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="${pageContext.servletContext.contextPath }/assets/crossbrowserjs/html5shiv.js"></script>
		<script src="${pageContext.servletContext.contextPath }/assets/crossbrowserjs/respond.min.js"></script>
		<script src="${pageContext.servletContext.contextPath }/assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/ionRangeSlider/js/ion-rangeSlider/ion.rangeSlider.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/masked-input/masked-input.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/password-indicator/js/password-indicator.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-combobox/js/bootstrap-combobox.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-select/bootstrap-select.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput-typeahead.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/jquery-tag-it/js/tag-it.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-daterangepicker/moment.js"></script>
    <script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script src="${pageContext.servletContext.contextPath }/assets/plugins/select2/dist/js/select2.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-eonasdan-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/js/form-plugins.demo.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			FormPlugins.init();
		});
	</script>
</body>
</html>
