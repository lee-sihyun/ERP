<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Color Admin | Calendar</title>
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
	<%-- <link href="${pageContext.servletContext.contextPath }/assets/plugins/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" /> --%>
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
<style type="text/css">
.registerBtnDiv {
    text-align: center;	
}
#regBtn {
	width: 230px;
	color: #fff;
    background-color: #00acac;
    border-color: #00acac;
}
.calendarCheckbox {
	margin-top: 20px;
	padding-left: 20px;
}
.AllCheckbox {
	margin-top: 10px;	
}
.subCheckbox {
	padding-left: 20px;
}
.subDeptCheckbox {
	padding-left: 40px;
}
</style>
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
				<li class="active">Calendar</li>
			</ol>
			<!-- end breadcrumb -->
			
			<!-- begin page-header -->
			<h1 class="page-header">일정</h1>
			<!-- end page-header -->
			<!-- begin panel -->
			<div class="panel panel-inverse">
			    <div class="panel-heading">
			        <div class="panel-heading-btn">
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
			        </div>
			        <h4 class="panel-title">&nbsp;</h4>
			    </div>
			    
			    <!-- 달력 내부 시작 -->
			    <div class="panel-body p-0">
			        <div class="vertical-box">
			            <div class="vertical-box-column p-15 bg-silver width-sm">
                            <div id="external-events" class="calendar-event">
                                <div class="registerBtnDiv">
                                	<a href="${pageContext.servletContext.contextPath}/calendar/add" id="regBtn" class="btn btn-primary btn-lg">일정 등록</a>
                                </div>
								
								<div class="calendarCheckbox">
									<div class="AllCheckbox">
	  									<input type="checkbox" id="allCal">
	 									<label class="custom-control-label" for="allCal">전체</label>
									</div>
									
									<div class="subCheckbox">
										<input type="checkbox" class="check" id="myCal">
	 									<label class="custom-control-label" for="myCal">내 일정</label>
									</div>
									
									<div class="subCheckbox">
										<input type="checkbox" class="check" id="departmentCal">
	 									<label class="custom-control-label" for="departmentCal">부서 일정</label>
									</div>
										<div class="subDeptCheckbox">
											<input type="checkbox" class="deptCheck" id="personnelCal">
		 									<label class="custom-control-label" for="personnelCal">인사팀 일정</label>
										</div>
										<div class="subDeptCheckbox">
											<input type="checkbox" class="deptCheck" id="businessCal">
		 									<label class="custom-control-label" for="businessCal">영업팀 일정</label>
										</div>
										<div class="subDeptCheckbox">
											<input type="checkbox" class="deptCheck" id="computingCal">
		 									<label class="custom-control-label" for="computingCal">전산팀 일정</label>
										</div>
										<div class="subDeptCheckbox">
											<input type="checkbox" class="deptCheck" id="marketingCal">
		 									<label class="custom-control-label" for="marketingCal">마케팅팀 일정</label>
										</div>
										<div class="subDeptCheckbox">
											<input type="checkbox" class="deptCheck" id="designCal">
		 									<label class="custom-control-label" for="designCal">디자인팀 일정</label>
										</div>
									
									<div class="subCheckbox">
										<input type="checkbox" class="check" id="companyCal">
	 									<label class="custom-control-label" for="companyCal">전사 일정</label>
									</div>
								</div>
								
                                <!-- 
                                <div class="external-event bg-green" data-bg="bg-green" data-title="department calendar" data-media="<i class='fa fa-lightbulb-o'></i>" data-desc="Mauris tristique massa eu venenatis semper. Phasellus a nibh nisi.">
									<h5><i class="fa fa-tasks fa-lg fa-fw"></i> Performance Rating</h5>
                                    <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra.</p>
                                </div>
                                <div class="external-event bg-orange" data-bg="bg-orange" data-title="company calendar" data-media="<i class='fa fa-tasks'></i>" data-desc="Class aptent taciti sociosqu ad litora torquent per conubia nostra.">
                                     <h5><i class="fa fa-tasks fa-lg fa-fw"></i> Performance Rating</h5>
                                    <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra.</p>
                                </div>
                                <div class="external-event bg-red" data-bg="bg-red" data-title="Video Shooting" data-media="<i class='fa fa-video-camera'></i>" data-desc="Donec ligula nisi, tempus eu egestas id, auctor sit amet velit.">
                                    <h5><i class="fa fa-video-camera fa-lg fa-fw"></i> Video Shooting</h5>
                                    <p>Donec ligula nisi, tempus eu egestas id, auctor sit amet velit.</p>
                                </div>
                                
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" id="drop-remove" />
                                        remove after drop
                                    </label>
                                </div>
                                 -->
                                 
                            </div>
                        </div>
                        <!-- <div id="calendar" class="vertical-box-column p-15 calendar"></div> -->
			        </div>
			    </div>
			</div>
			<!-- end panel -->
		</div>
		<!-- end #content -->
	</div>
	<!-- end page container -->
	
	<script type="text/javascript">
	//전체 체크박스 클릭했을 때
	$("#allCal").change(function() {
		if($(this).is(":checked")) {
			$(".check").prop("checked",true);
			$(".deptCheck").prop("checked",true);
	
		} else {
			$(".check").prop("checked",false);
			$(".deptCheck").prop("checked",false);
	
		}
	});
	
	//전체 체크박스 클릭된 상태에서 아무 체크박스 하나가 해제됐을 때
	$(".check").change(function() {
		if($("#allCal").is(":checked")) {
			$("#allCal").prop("checked",false);
		}
		
	});
	
	$(".deptCheck").change(function() {
		if($("#allCal").is(":checked")) {
			$("#allCal").prop("checked",false);
		}
		
	});
	
	//부서 체크박스 클릭했을 때
	$("#departmentCal").change(function() {
		if($(this).is(":checked")) {
			$(".deptCheck").prop("checked",true);
	
		} else {
			$(".deptCheck").prop("checked",false);
	
		}
	});
	
	//부서 체크박스 클릭된 상태에서 아무 체크박스 하나가 해제됐을 때
	$(".deptCheck").change(function() {
		if($("#departmentCal").is(":checked")) {
			$("#departmentCal").prop("checked",false);
		}
		
	});
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
	<%-- <script src="${pageContext.servletContext.contextPath }/assets/plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/js/calendar.demo.min.js"></script> --%>
	<script src="${pageContext.servletContext.contextPath }/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
</body>
</html>
