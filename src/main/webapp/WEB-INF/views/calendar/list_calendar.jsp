<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-eonasdan-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
	
	<%-- 달력 관련 css,js 파일 --%>
	<link href='${pageContext.servletContext.contextPath }/assets/plugins/fullcalendar/fullcalendar/fullcalendar.css' rel='stylesheet' />
	<link href='${pageContext.servletContext.contextPath }/assets/plugins/fullcalendar/fullcalendar/fullcalendar.print.css' rel='stylesheet' media='print' />
	
	<script src='${pageContext.servletContext.contextPath }/assets/plugins/fullcalendar/lib/jquery.min.js'></script>
	<script src='${pageContext.servletContext.contextPath }/assets/plugins/fullcalendar/lib/jquery-ui.custom.min.js'></script>
	<script src='${pageContext.servletContext.contextPath }/assets/plugins/fullcalendar/fullcalendar/fullcalendar.js'></script>
<script>
	$(document).ready(function() {
		$('#calendar').fullCalendar({
			
		});
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

/* .fc-sat {
	width : 120px;
} */

.fc-day:hover {
	background-color: rgba(73,182,214,0.5);
}

#calendar {
	background-color: white;
	padding: 10px;
	margin-bottom: 40px;
	text-align: center;
	font-size: 14px;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
}

#insertCalendar, #updateCalendar, #insertSimpleCalendar {
	background-color: rgb(240,243,244);
	position: absolute;
	display: none;
	width: 30%;
	padding-top: 15px;
	top: 30%;
	left: 40%;
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
				<a onclick="clickBtn();" id="regBtn" class="btn btn-primary btn-lg">간편 일정 등록</a>
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
	
	<!-- 간편 일정 생성 modal -->
    <!-- begin col-6 -->
	<div class="col-md-6" id="insertSimpleCalendar">
    	<!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="form-plugins-1">
        	<div class="panel-body panel-form">
            	<form class="form-horizontal form-bordered" data-parsley-validate="true" name="simpleCalInsertForm">
            		<input type="text" id="simEmpNo" name="simEmpNo" value="${loginUserinfo.empNo }">
            		<input type="text" id="simDeptNo" name="simDeptNo" value="${loginUserinfo.deptNo }">
            		<div class="form-group">
						<label class="col-md-3 control-label">* 제목</label>
						<div class="col-md-8">
							<input class="form-control" type="text" id="simCalTitle" name="simCalTitle" data-parsley-required="true" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">시작</label>
						<div class="col-md-8">
							<div class="row row-space-10">
                       	    	<div class="col-md-7">
                                   	<input type="text" class="form-control" id="simCalStartDate" name="simCalStartDate" placeholder="ex) 2019-01-01" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
						<label class="col-md-3 control-label">종료</label>
						<div class="col-md-8">
							<div class="row row-space-10">
                       	    	<div class="col-md-7">
                                   	<input type="text" class="form-control" id="simCalEndDate" name="simCalEndDate" placeholder="ex) 2019-01-01" />
                                </div>
                            </div>
                        </div>
                    </div>
								<div class="form-group">
									<label class="col-md-3 control-label">* 캘린더</label>
                                    <div class="col-md-8">
                                        <select class="form-control" id="simCalGroup" name="simCalGroup" >
                                            <option selected="selected">선택</option>
                                            <option>마이캘린더</option>
                                            <option>부서캘린더</option>
                                        </select>
                                    </div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label"></label>
									<div class="col-md-6 col-sm-6">
										<input type="button" class="btn btn-info" onclick="submitSimpleCheck();" value="저장"/>
										<input type="button" class="btn btn-info" 
											   onclick="cancelSimpleInsertForm();" value="취소"/>
							</div>
						</div>
					</form>
            	</div>
            </div>
        	<!-- end panel -->
    	</div>
    	<!-- end col-6 -->
	
	<!-- 일정 생성 modal -->
    <!-- begin col-6 -->
	<div class="col-md-6" id="insertCalendar">
    	<!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="form-plugins-1">
        	<div class="panel-body panel-form">
            	<form class="form-horizontal form-bordered" data-parsley-validate="true" name="calInsertForm">
            		<input type="text" id="empNo" name="empNo" value="${loginUserinfo.empNo }">
            		<input type="text" id="deptNo" name="deptNo" value="${loginUserinfo.deptNo }">
            		<div class="form-group">
						<label class="col-md-3 control-label">* 제목</label>
						<div class="col-md-8">
							<input class="form-control" type="text" id="calTitle" name="calTitle" data-parsley-required="true" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">시작</label>
						<div class="col-md-8">
							<div class="row row-space-10">
                       	    	<div class="col-md-7">
                                   	<input type="text" class="form-control" id="calStartDate" name="calStartDate" placeholder="ex) 2019-01-01" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
						<label class="col-md-3 control-label">종료</label>
						<div class="col-md-8">
							<div class="row row-space-10">
                       	    	<div class="col-md-7">
                                   	<input type="text" class="form-control" id="calEndDate" name="calEndDate" placeholder="ex) 2019-01-01" />
                                </div>
                            </div>
                        </div>
                    </div>
                                <div class="form-group">
									<label class="col-md-3 control-label">일정타입</label>
                                    <div class="col-md-8">
		                            	<select class="form-control" id="calCategory" name="calCategory"> 
		                                	<option selected="selected">선택</option>
		                                    <option>업무</option>
		                                    <option>출장</option>
		                                    <option>휴가</option>		                                            
		                            	</select>
                                    </div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label" >장소</label>
									<div class="col-md-8">
										<input class="form-control" type="text" id="calPlace" name="calPlace" data-parsley-required="true" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">* 캘린더</label>
                                    <div class="col-md-8">
                                        <select class="form-control" id="calGroup" name="calGroup" >
                                            <option selected="selected">선택</option>
                                            <option>마이캘린더</option>
                                            <option>부서캘린더</option>
                                        </select>
                                    </div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label" >내용</label>
									<div class="col-md-8">
										<textarea class="form-control" id="calContent" name="calContent" rows="4" data-parsley-range="[20,200]"></textarea>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label"></label>
									<div class="col-md-6 col-sm-6">
										<input type="button" class="btn btn-info" onclick="submitCheck();" value="저장"/>
										<input type="button" class="btn btn-info" 
											   onclick="cancelInsertForm();" value="취소"/>
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
            	<form class="form-horizontal form-bordered" data-parsley-validate="true" name="calUpdateForm">
            		<input type="hidden" id="upEmpNo" name="upEmpNo" value="${loginUserinfo.empNo }">
            		<input type="hidden" id="upDeptNo" name="upDeptNo" value="${loginUserinfo.deptNo }">
            		<div class="form-group">
						<label class="col-md-3 control-label">* 제목</label>
						<div class="col-md-8">
							<input class="form-control" type="text" id="upCalTitle" name="upCalTitle" data-parsley-required="true" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">시작</label>
						<div class="col-md-8">
							<div class="row row-space-10">
                       	    	<div class="col-md-7">
                                   	<input type="text" class="form-control" id="upCalStartDate" name="upCalStartDate" placeholder="ex) 2019-01-01" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
						<label class="col-md-3 control-label">종료</label>
						<div class="col-md-8">
							<div class="row row-space-10">
                       	    	<div class="col-md-7">
                                   	<input type="text" class="form-control" id="upCalEndDate" name="upCalEndDate" placeholder="ex) 2019-01-01" />
                                </div>
                            </div>
                        </div>
                    </div>
                                <div class="form-group">
									<label class="col-md-3 control-label">일정타입</label>
                                    <div class="col-md-8">
		                            	<select class="form-control" id="upCalCategory" name="upCalCategory"> 
		                                	<option selected="selected">선택</option>
		                                    <option>업무</option>
		                                    <option>출장</option>
		                                    <option>휴가</option>		                                            
		                            	</select>
                                    </div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">장소</label>
									<div class="col-md-8">
										<input class="form-control" type="text" id="upCalPlace" name="upCalPlace" data-parsley-required="true" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">* 캘린더</label>
                                    <div class="col-md-8">
                                        <select class="form-control" id="upCalGroup" name="upCalGroup" >
                                            <option selected="selected">선택</option>
                                            <option>마이캘린더</option>
                                            <option>부서캘린더</option>
                                        </select>
                                    </div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label" >내용</label>
									<div class="col-md-8">
										<textarea class="form-control" id="upCalContent" name="upCalContent" rows="4" data-parsley-range="[20,200]"></textarea>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label"></label>
									<div class="col-md-6 col-sm-6">
										<input type="button" class="btn btn-info" onclick="submitCheck();" value="저장"/>
										<input type="button" class="btn btn-info" 
											   onclick="cancelInsertForm();" value="취소"/>
							</div>
						</div>
					</form>
            	</div>
            </div>
        	<!-- end panel -->
    	</div>
    	<!-- end col-6 -->
	
	<script type="text/javascript">
	//달력에 일정 출력하기
	function resetCalendar() {
		href="${pageContext.servletContext.contextPath }/calendar/display";
		
	}
	
	//상세일정 보기
	function discription() {
		swal("입력","성공","info");
	}
	
	//드랍다운 display none <-> block
	$(".f-s-14").click(function() {
		$(".media-list").toggle();
	});
	
	$(".navbar-user").find(".dropdown-toggle").click(function() {
		$(".fadeInLeft").toggle();
	});
	
	//간편 일정등록 버튼을 클릭했을 때 - 일정등록 폼 모달 open
	function clickBtn() {
		$(".form-control").val('');
		$("#simCalGroup").val('선택');
		$('#insertCalendar').hide();
		$('#updateCalendar').hide();
		$('#insertSimpleCalendar').show();
		simpleCalInsertForm.simCalTitle.focus();
	}
	
	//캘린더의 날짜 td 영역을 클릭했을 때 - 일정등록 폼 모달 open + 클릭한 td의 날짜를 시작날짜로 초기값	
	function clickDay() {
		$(".form-control").val('');
		$("#calGroup").val('선택');
		$("#calCategory").val('선택');
		$('#insertSimpleCalendar').hide();
		$('#updateCalendar').hide();
		$('#insertCalendar').show();
		calInsertForm.calTitle.focus();
	}
 	
	//간편 일정등록 폼의 저장 버튼 클릭했을 때
	function submitSimpleCheck() {
		var empNo=$("#simEmpNo").val();
		var	deptNo=$("#simDeptNo").val();	
		var calTitle=$("#simCalTitle").val();
		var	calStartDate=$("#simCalStartDate").val();		
		var	calEndDate=$("#simCalEndDate").val();	
		var	calGroup=$("#simCalGroup").val();	
		
		if(calTitle=="") {
			swal("Oops!","제목을 입력해 주세요.","error");
			return;
		}
		
		if(calGroup=="선택") {
			swal("Oops!","캘린더를 선택해 주세요.","error");
			return;
		}
		
		$.ajax({
			type: "POST",
			url:"simple_calendar_add",
			headers: {"Content-Type":"application/json"},
			data: JSON.stringify({"username":empNo,"deptNo":deptNo,"title":calTitle,"start":calStartDate,
				"end":calEndDate,"type":calGroup}),
			dateType: "text",
			success: function(text) {
				if(text=="success") {
					$('#insertSimpleCalendar').hide(300);
				}
			},
			error : function(req) {
				swal("응답 에러 코드",req.status,"error");
			}
		});
		resetCalendar();
	}
	
	//일정등록 폼의 저장 버튼 클릭했을 때
	function submitCheck() {
		var empNo=$("#empNo").val();
		var	deptNo=$("#deptNo").val();	
		var calTitle=$("#calTitle").val();
		var	calStartDate=$("#calStartDate").val();	
		var	calEndDate=$("#calEndDate").val();	
		var	calGroup=$("#calGroup").val();	
		var	calCategory=$("#calCategory").val();	
		var	calPlace=$("#calPlace").val();	
		var	calContent=$("#calContent").val();	
		
		if(calTitle=="") {
			swal("Oops!","제목을 입력해 주세요.","error");
			return;
		}
		
		if(calGroup=="선택") {
			swal("Oops!","캘린더를 선택해 주세요.","error");
			return;
		}
		
		$.ajax({
			type: "POST",
			url:"calendar_add",
			headers: {"Content-Type":"application/json"},
			data: JSON.stringify({"username":empNo,"deptNo":deptNo,"title":calTitle,"start":calStartDate,
				"end":calEndDate,"type":calGroup,
				"backgroundColor":calCategory,"textColor":calPlace,"description":calContent}),
			dateType: "text",
			success: function(text) {
				if(text=="success") {
					$('#insertCalendar').hide(300);	
				}
			},
			error : function(req) {
				swal("응답 에러 코드",req.status,"error");
			}
			
		});
	}
	
	//간편 일정등록 폼의 취소 버튼 클릭했을 때
	function cancelSimpleInsertForm() {
		$('#insertSimpleCalendar').hide();
	}
	
	//일정등록 폼의 취소 버튼 클릭했을 때
	function cancelInsertForm() {
		$('#insertCalendar').hide();
	}
	
	//일정변경 폼의 취소 버튼 클릭했을 때
	function cancelUpdateForm() {
		$('#insertUpdateForm').hide();
	}
	
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
</body>
</html>
