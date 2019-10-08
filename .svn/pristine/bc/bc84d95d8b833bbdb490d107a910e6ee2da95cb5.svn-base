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
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.2.0/handlebars.min.js"></script> -->
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
	<!-- datepicker -->
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/animate.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/style.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/theme/default.css" rel="stylesheet" id="theme" />
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
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	<!-- end datepicker -->
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
				<li><button type="button" id="btnAnnual" class="btn btn-success">신청</button></li>
				<li><button type="button" id="removeBtn" class="btn btn-danger" onclick="removeAnnual();">삭제</button></li>
				<li><a href="javascript:;">Home</a></li>
				<li><a href="javascript:;">Tables</a></li>
				<li class="active">연차신청 페이지</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">개인 연차</h1>
			<!-- end page-header -->
			
			<div class="panel panel-inverse" data-sortable-id="form-plugins-4">
                        <div class="panel-heading">
                            <h4 class="panel-title">연차 신청</h4>
                        </div>
                        <div class="panel-body panel-form">
                            <form class="form-horizontal form-bordered" style="height: 180px;">
                                <div class="form-group">
                                    <label class="col-md-1 control-label">신청 유형</label>
                                    <div class="col-md-11">
                                        <div class="input-group input-daterange">
                                        	<select id="annualStatus" class="form-control">
                                        		<option value="1">연차</option>
                                        		<option value="2">병가</option>
                                        		<option value="3">반차(오전 반차)</option>
                                        		<option value="4">반차(오후 반차)</option>
                                        	</select>
                                        </div>
                                    </div>
                                    
                                     <label class="col-md-1 control-label">신청 기간</label>
                                    <div class="col-md-11">
                                        <div class="input-group input-daterange">
                                            <input type="text" id="annualStart" class="form-control" name="start" placeholder="Date Start" />
                                            <span class="input-group-addon">to</span>
                                            <input type="text" id="annualEnd" class="form-control" name="end" placeholder="Date End" />
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
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
                                    	<th><input name="annualNo" type="checkbox" value="50" size="5"></th>
                                    	<th>부서명</th>
                                        <th>사원이름</th>
                                        <th>신청유형</th>
                                        <th>신청일자</th>
                                        <th>종료일자</th>
                                        <th>남은 연차갯수</th>
                                    </tr>
                                    
                                </thead>
                                <tbody id="annualList">
                              	<c:forEach var="AnnualVO" items="${userAnnualList}">
                                    <tr class="odd gradeX">
                                        <td><input name="annualNo" type="checkbox" value="${AnnualVO.annualNo}" size="5"></td>
                                        <td>${AnnualVO.deptName}</td>
                                        <td>${AnnualVO.empName}</td>
                                        <c:choose>
                                        	<c:when test="${AnnualVO.annualStatus == '1'}">
                                       		<td>연차</td>
                                       		</c:when>
                                       		<c:when test="${AnnualVO.annualStatus == '2'}">
                                       		<td>병가</td>
                                       		</c:when>
                                       		<c:when test="${AnnualVO.annualStatus == '3'}">
                                       		<td>오전반차</td>
                                       		</c:when>
                                       		<c:when test="${AnnualVO.annualStatus == '4'}">
                                       		<td>오후반차</td>
                                       		</c:when>
                                        </c:choose>
                                        <td><fmt:formatDate value="${AnnualVO.annualStart}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                        <td><fmt:formatDate value="${AnnualVO.annualEnd}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                        <td>${AnnualVO.empBreak}</td>
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
	
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/ionRangeSlider/js/ion-rangeSlider/ion.rangeSlider.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/masked-input/masked-input.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/password-indicator/js/password-indicator.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/bootstrap-combobox/js/bootstrap-combobox.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/bootstrap-select/bootstrap-select.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput-typeahead.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/plugins/jquery-tag-it/js/tag-it.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/assets/plugins/bootstrap-daterangepicker/moment.js"></script>
    <script src="${pageContext.servletContext.contextPath}/assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script src="${pageContext.servletContext.contextPath}/assets/plugins/select2/dist/js/select2.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/assets/plugins/bootstrap-eonasdan-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/form-plugins.demo.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/apps.min.js"></script>
	<script>
		$(document).ready(function() {
			App.init();
			TableManageDefault.init();
			// 시작날짜, 종료날짜 선택 시 캘린더 띄우기
			var annualStart =  $("#annualStart");
			var annualEnd =  $("#annualEnd");
			
			annualStart.datepicker({
				format: "yyyy-mm-dd",
				language: "kr"
			});
			
			annualEnd.datepicker({
				format: "yyyy-mm-dd",
				language: "kr"
			});
		});
		
		function loadAnnualList() {
			location.href = "annual";
		}
		
		//연차 
		$("#btnAnnual").on("click", function(){
			var annualStatus = $("#annualStatus option:selected").val();
			var annualStart = $("#annualStart").val();
			var annualEnd = $("#annualEnd").val();
			alert(annualStatus);
			alert(annualStart);
			alert(annualEnd);

			var data = {"annualStatus" : annualStatus, "annualStart": annualStart, "annualEnd": annualEnd};
			console.log(data);
			
			if(annualStatus == 3 || annualStatus == 4){
				if(annualStart != annualEnd){
					alert("반차 사용 시 시작날짜와 종료날짜가 같아야합니다.");			
					return;
				}
			}
			
			$.ajax({
				url:"ajax/annual_add",
				type:"POST",
				data: JSON.stringify(data),
				dataType:"text",
				contentType:"application/json",
				success: function(text) {
					console.log(text);
					alert("연차 등록에 성공하였습니다.");
					loadAnnualList();
				},
				error: function(req) {
					console.log(req);
					alert("99999999999");
				},
				cache: false
			});
		});
		
		
		/*  //연차 삭제 
		 $("#removeBtn").on("click", function(){
			if($('input[name="annualNo"]:checked').size == 0) {
				alert("선택하신 연차 목록이 없습니다.")
				return;
			} else {
				confirm("정말로 선택하신 연차를 삭제 하시겠습니까?");
				$.ajax({
					type: "POST",
					url: "ajax/annual_delete",
					data: {"annualNo":annualNo},
					dataType: "text",
					success: function(text) {
						if(text == "success") {
							alert("성공");
							alert("회원님의 연차를 삭제하였습니다.")
							loadAnnualList();
						}
					},
					error: function(req) {
							alert("응답코드 = " + req.status);
					}
				});
			};
		});  */
		 
		 
		
		
		function removeAnnual() {
			var annualNo = [];
			$('input[name="annualNo"]:checked').each(function(){
				annualNo.push($(this).val());
			}); 
			
			if($('input[name="annualNo"]:checked').size()==0){
				alert("선택한 연차목록이 없습니다.");
				return;
			} else {
				$('input[name="annualNo"]:checked')
				if(confirm("정말로 선택하신 연차목록을 삭제 하시겠습니까?")) {
					$.ajax({
						type: "POST",
						url: "ajax/annual_delete",
						data: {"annualNo":annualNo},
						contentType : "application/x-www-form-urlencoded; charset=UTF-8",
						dataType: "text",
						//contentType:"application/json",
						success: function(result) {
							if(result=="success") {
								alert("선택하신 연차 목록을 삭제하였습니다.")
								loadAnnualList();
							}					
						},
						error: function(req) {
							alert("응답 에러 코드 = "+req.status);
						}
					});
				}
			}
		}
		
	</script>
</body>
</html>
