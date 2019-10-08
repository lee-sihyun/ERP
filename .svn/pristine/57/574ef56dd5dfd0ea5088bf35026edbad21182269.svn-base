<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="json.jspf" %>
<!DOCTYPE html>
<html>
<head>
	<%-- alert 디자인 js 파일 --%>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<%-- 부트스트랩 관련 css 파일 --%>
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/animate.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/style.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/theme/default.css" rel="stylesheet" id="theme" />
	
	<%-- 달력 부트스트랩 관련 css 파일 --%>
	<!-- 
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-eonasdan-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
	 -->
	 
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
<script>
$(document).ready(function() {
	App.init();
	FormPlugins.init();
});
</script>
<style type="text/css">
.breadcrumb {
	margin-top: 50px;
}
hr {
	box-sizing: content-box;
	overflow: visible;
	margin-top: 70px;
	margin-bottom: 16px;
	border-top: 1px solid rgba(0, 0, 0, .1);
	border: 0;
	height: 1px;
	background: rgba(0, 0, 0, .1);
}

.registerBtnDiv {
	text-align: center;
}

#regBtn {
	width: 70%;
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

h2 {
	margin-left: 10px;
}

.fc-day:hover {
	background-color: rgba(73,182,214,0.5);
}
#insertCalendar, #updateCalendar {
	background-color: rgba(240,243,244,0.8);
	position: absolute;
	display: none;
	width: 30%;
	padding-top: 15px;
	top: 30%;
	left: 40%;
}
#calendar {
	background-color: white;
	padding: 10px;
	margin-bottom: 40px;
	text-align: center;
	font-size: 14px;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
}
</style>
</head>
<body>
	<!-- begin #content -->
	<div id="content" class="content">
	    <!-- content 의 헤더같은 부분 -->
		<!-- begin breadcrumb -->
		<ol class="breadcrumb pull-right">
			<li><a href="javascript:;">Home</a></li>
			<li class="active">Calendar</li>
		</ol>
		<br>
		<hr>
		<!-- end breadcrumb -->
		
		<!-- content 영역 왼쪽 div -->
		<div style="width: 20%; float: left;">
			<div class="registerBtnDiv">
				<a href="${pageContext.servletContext.contextPath}/calendar/add" id="regBtn" class="btn btn-primary btn-lg">일정 등록</a>
			</div>

			<div class="calendarCheckbox">
				<div class="AllCheckbox">
					<input type="checkbox" id="allCal"> <label class="custom-control-label" for="allCal">전체</label>
				</div>

				<div class="subCheckbox">
					<input type="checkbox" class="check" id="myCal"> <label class="custom-control-label" for="myCal">내 일정</label>
				</div>

				<div class="subCheckbox">
					<input type="checkbox" class="check" id="departmentCal"> <label class="custom-control-label" for="departmentCal">부서 일정</label>
				</div>
				<div class="subDeptCheckbox">
					<input type="checkbox" class="deptCheck" id="personnelCal"> <label class="custom-control-label" for="personnelCal">인사팀 일정</label>
				</div>
				<div class="subDeptCheckbox">
					<input type="checkbox" class="deptCheck" id="businessCal"> <label class="custom-control-label" for="businessCal">영업팀 일정</label>
				</div>
				<div class="subDeptCheckbox">
					<input type="checkbox" class="deptCheck" id="computingCal"> <label class="custom-control-label" for="computingCal">전산팀 일정</label>
				</div>
				<div class="subDeptCheckbox">
					<input type="checkbox" class="deptCheck" id="marketingCal"> <label class="custom-control-label" for="marketingCal">마케팅팀 일정</label>
				</div>
				<div class="subDeptCheckbox">
					<input type="checkbox" class="deptCheck" id="designCal"> <label class="custom-control-label" for="designCal">디자인팀 일정</label>
				</div>

				<div class="subCheckbox">
					<input type="checkbox" class="check" id="companyCal"> <label class="custom-control-label" for="companyCal">전사 일정</label>
				</div>
			</div>
		</div>

		<!-- content 영역 오른쪽 div : 캘린더 들어갈 곳 -->
		<div id='calendar' style="width: 79%; float: right;"></div>
			
	</div>
	<!-- end #content -->
	
	<!-- 일정 생성 modal -->
    <!-- begin col-6 -->
	<div class="col-md-6" id="insertCalendar">
    	<!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="form-plugins-1">
        	<div class="panel-body panel-form">
            	<form class="form-horizontal form-bordered" data-parsley-validate="true" name="calendarForm">
					<div class="form-group">
						<label class="col-md-3 control-label">* 제목</label>
						<div class="col-md-6 col-sm-6">
							<input class="form-control" type="text" name="calTitle" data-parsley-required="true" value="${calendar.calTitle}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">시작</label>
						<div class="col-md-8">
							<div class="row row-space-10">
                       	    	<div class="col-md-5">
                                   	<input type="text" class="form-control" id="datetimepicker3" name="calStartDate" placeholder="시작일" value="${calendar.calStartDate }" />
                                </div>
                                <div class="input-group date" id="datetimepicker2">
                                	<input type="text" class="form-control" />
                                    <span class="input-group-addon">
                                    	<span class="glyphicon glyphicon-time"></span>
                                	</span>
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
						<label class="col-md-3 control-label">종료</label>
						<div class="col-md-8">
							<div class="row row-space-10">
                       	    	<div class="col-md-5">
                                   	<input type="text" class="form-control" id="datetimepicker3" name="calEndDate" placeholder="종료일" value="${calendar.calEndDate }" />
                                </div>
                                <div class="input-group date" id="datetimepicker2">
                                	<input type="text" class="form-control" />
                                    <span class="input-group-addon">
                                    	<span class="glyphicon glyphicon-time"></span>
                                	</span>
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
	        	                            <div class="col-md-5">
	    	                                	<input type="text" class="form-control" id="directInput" name="empNo" value="${calendar.empNo }" />
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
										<input type="button" class="btn btn-info" onclick="submitCheck();" value="저장"/>
										<input type="button" class="btn btn-info" 
											   onclick="location.href='${pageContext.servletContext.contextPath}/calendar/display';" value="취소"/>
							</div>
						</div>
					</form>
            	</div>
            </div>
        	<!-- end panel -->
    	</div>
    	<!-- end col-6 -->
	
	<!-- 일정 수정 modal -->
    <!-- begin col-6 -->
	<div class="col-md-6" id="updateCalendar">
       	<!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="form-plugins-1">
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
										<input type="button" class="btn btn-info" onclick="submitCheck();" value="변경"/>
										<input type="button" class="btn btn-info" 
											   onclick="location.href='${pageContext.servletContext.contextPath}/calendar/display';" value="취소"/>
							</div>
						</div>
					</form>
            	</div>
            </div>
        	<!-- end panel -->            
        </div>
    	<!-- end col-6 -->
	
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
	
	//캘린더의 날짜 td 영역을 클릭했을 때
	function clickDay() {
		$('#insertCalendar').show();
	}
	</script>
	
	<%-- 달력 부트스트랩 관련 js 파일 --%>
	<!-- 
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-daterangepicker/moment.js"></script>
    <script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-eonasdan-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/js/form-plugins.demo.min.js"></script>
	 -->
	 
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
</body>
</html>
