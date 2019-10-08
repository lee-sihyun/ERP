<%@page import="site.itwill.dto.EmployeeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>





<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<head>
<meta charset="utf-8" />
<title>Color Admin | Compose</title>
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

<!-- ================== BEGIN PAGE CSS STYLE ================== -->
<link
	href="${pageContext.servletContext.contextPath }/assets/plugins/jquery-tag-it/css/jquery.tagit.css"
	rel="stylesheet" />
<link
	href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css"
	rel="stylesheet" />
<!-- ================== END PAGE CSS STYLE ================== -->

<!-- ================== BEGIN BASE JS ================== -->
<script
	src="${pageContext.servletContext.contextPath }/assets/plugins/pace/pace.min.js"></script>
<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in">
		<span class="spinner"></span>
	</div>
	<!-- end #page-loader -->

	<!-- begin #page-container -->
	<div id="page-container"
		class="fade page-sidebar-fixed page-header-fixed">

		<!-- begin #content -->
		<div id="content" class="content content-full-width">
			<!-- begin vertical-box -->
			<div class="vertical-box">
				<!-- begin vertical-box-column -->
				<div class="vertical-box-column width-250">

					<!-- 메세지 위 상단 바  공통으로 사용하는 부분 = 시작 -->
					<!-- begin wrapper -->
					<div class="wrapper bg-silver text-center">
						<a
							href="${pageContext.servletContext.contextPath }/sendMessageDetail"
							class="btn btn-success p-l-40 p-r-40 btn-sm"> <i
							class="fa fa-pencil fa-fw m-r-5"></i>쪽지쓰기
						</a>
					</div>
					<!-- end wrapper -->
					<!-- 메세지 위 상단 바  공통으로 사용하는 부분 = 끝 -->


					<!-- 메세지 사이드 바 공통으로 사용하는 부분 = 시작 -->
					<!-- begin wrapper -->
					<div class="wrapper">
						<p>
							<b>FOLDERS</b>
						</p>
						<ul class="nav nav-pills nav-stacked nav-sm">
							<li><a
								href="${pageContext.servletContext.contextPath }/recvMessageBox"><i
									class="fa fa-inbox fa-fw m-r-5"></i> 받은쪽지함 <span
									class="badge pull-right">10</span></a></li>
							<li><a
								href="${pageContext.servletContext.contextPath }/myMessageBox"><i
									class="fa fa-folder-open fa-fw m-r-5"></i> 쪽지보관함</a></li>
							<li><a
								href="${pageContext.servletContext.contextPath }/sendMessageBox"><i
									class="fa fa-send fa-fw m-r-5"></i> 보낸쪽지함</a></li>


						</ul>
						<p>
							<b>LABEL</b>
						</p>
						<ul class="nav nav-pills nav-stacked nav-sm m-b-0">
							<li><a href="javascript:;"><i
									class="fa fa-fw m-r-5 fa-circle text-inverse"></i> 인사팀</a></li>
							<li><a href="javascript:;"><i
									class="fa fa-fw m-r-5 fa-circle text-primary"></i> 영업팀</a></li>
							<li><a href="javascript:;"><i
									class="fa fa-fw m-r-5 fa-circle text-success"></i> 마케팅팀</a></li>
							<li><a href="javascript:;"><i
									class="fa fa-fw m-r-5 fa-circle text-warning"></i> 전산팀</a></li>
							<li><a href="javascript:;"><i
									class="fa fa-fw m-r-5 fa-circle text-danger"></i> 디자인팀</a></li>
						</ul>
					</div>
					<!-- end wrapper -->
					<!-- 메세지 사이드 바 공통으로 사용하는 부분 = 끝 -->




				</div>
				<!-- end vertical-box-column -->
				<!-- begin vertical-box-column -->
				<div class="vertical-box-column">
					<!-- begin wrapper -->
					<div class="wrapper bg-silver-lighter">

						<!-- 상단바 위에 쪽지쓰기 옆에 지우기 이모티콘 = 시작 -->
						<!-- begin btn-toolbar -->
						<div class="btn-toolbar">
							<div class="btn-group">
								<button id="sendBtn" class="btn btn-white btn-sm p-l-20 p-r-20">
									<i class="fa fa-send fa-fw m-r-5"></i> 보내기
								</button>
								<a
									onclick="window.open('${pageContext.servletContext.contextPath }/findAddress','find_Address','width=900,height=900,location=no,status=no,scrollbars=yes');"
									class="btn btn-white btn-sm p-l-20 p-r-20"><i
									class="fa fa-user-plus fa-fw m-r-5"></i>주소록</a>
							</div>
						</div>
						<!-- end btn-toolbar -->
						<!-- 상단바 위에 쪽지쓰기 옆에 지우기 이모티콘 = 끝 -->



					</div>
					<!-- end wrapper -->
					<!-- begin wrapper -->
					<div class="wrapper">
						<div class="p-30 bg-white">

							<!-- form ======================================================== -->
							<!-- begin email form -->


							<!-- begin email to -->
							<label class="control-label">받는사원번호 :</label>

							<div class="m-b-15">


								<input id="recvEmpNo" class="form-control"
									placeholder="사원번호를 입력해주세요. " />


								<!-- <ul name="input" id="email-to" class="inverse"  placeholder="사원번호로 입력해주세요." > 
                                      
                                       
                                        <li>bootstrap@gmail.com</li>
                                        <li>google@gmail.com</li>
                                       
                               </ul> -->


							</div>

							<!-- end email to  ${loginUserinfo.empNo }22 -->


							<!-- begin email subject -->
							<label class="control-label">제목 : </label>
							<div class="m-b-15">
								<input id="title" name="title" type="text" class="form-control"
									placeholder="제목을 입력해주세요." onkeyup="titleword(this, 16)"/>
							</div>
							<!-- end email subject -->
							<!-- begin email content -->
							<label class="control-label">내용:</label>
							<div class="m-b-15">
								<textarea id="cont" class="textarea form-control"
									placeholder="내용을 입력해주세요." rows="12"  onkeyup="contentword(this, 1000)"></textarea>
							</div>
							<!-- end email content -->
							<button id="sendBtn" class="btn btn-primary p-l-40 p-r-40">보내기</button>

							<!-- end email form -->
						</div>
					</div>
					<!-- end wrapper -->
				</div>
				<!-- end vertical-box-column -->
			</div>
			<!-- end vertical-box -->
		</div>
		<!-- end #content -->



	</div>
	<!-- end page container -->

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
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/jquery-tag-it/js/tag-it.min.js"></script>
	<!-- <script src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script> -->
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/email-compose.demo.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->



	<script type="text/javascript">
	$("#sendBtn").click(function() {
		

		var recvEmpNo=$("#recvEmpNo").val();
		var sendEmpNo=$("session.loginUserinfo").val();
		var title=$("#title").val();
		var content=$("#cont").val(); 

		
		if(recvEmpNo==""){
			alert("사원번호를 입력하세요.");
			document.email_to_form.recvEmpNo.focus();
			return;
		}

		if(content==""){
			alert("내용 입력하세요.");
			document.email_to_form.content.focus();
			return;
		}
		
		var recvEmpNolist=recvEmpNo.split(',');
		for(var i=0; i < recvEmpNolist.length; i++) {
		
			alert(recvEmpNolist[i])	;
			
			$.ajax({
				type:"POST",
				url:"${pageContext.servletContext.contextPath }/sendMessageDetail",
				data:{"recvEmpNo":recvEmpNolist[i],"title":title, "content":content},
				dateType:"text",
				success: function(text) {
					if(text=="success") {
							alert("쪽지보내기 성공!!");
							location.href="recvMessageBox";
						}
				}, 
				error : function(req) {
					alert("응답 에러 코드 ="+req.status);
					
				}	
			
			
			});
	
		}
		
	});
	
	//내용 글자수제한
	 function contentword(obj, maxByte) {
		 
	        var strValue = obj.value;
	        var strLen = strValue.length;
	        var totalByte = 0;
	        var len = 0;
	        var oneChar = "";
	        var str2 = "";
	 
	        for (var i = 0; i < strLen; i++) {
	            oneChar = strValue.charAt(i);
	            if (escape(oneChar).length > 9) {
	                totalByte += 2;
	            } else {
	                totalByte++;
	            }
	 
	            // 입력한 문자 길이보다 넘치면 잘라내기 위해 저장
	            if (totalByte <= maxByte) {
	                len = i + 1;
	            }
	        }
	 
	        // 넘어가는 글자는 자른다.
	        if (totalByte > maxByte) {
	            alert(maxByte + "자를 초과 입력 할 수 없습니다.");
	            str2 = strValue.substr(0, len);
	            obj.value = str2;
	            chkword(obj, 4000);
	        }
	    }
	
	//제목 글자수제한
	 function titleword(obj, maxByte) {
		 
	        var strValue = obj.value;
	        var strLen = strValue.length;
	        var totalByte = 0;
	        var len = 0;
	        var oneChar = "";
	        var str2 = "";
	 
	        for (var i = 0; i < strLen; i++) {
	            oneChar = strValue.charAt(i);
	            if (escape(oneChar).length > 9) {
	                totalByte += 2;
	            } else {
	                totalByte++;
	            }
	 
	            // 입력한 문자 길이보다 넘치면 잘라내기 위해 저장
	            if (totalByte <= maxByte) {
	                len = i + 1;
	            }
	        }
	 
	        // 넘어가는 글자는 자른다.
	        if (totalByte > maxByte) {
	            alert(maxByte + "자를 초과 입력 할 수 없습니다.");
	            str2 = strValue.substr(0, len);
	            obj.value = str2;
	            chkword(obj, 4000);
	        }
	    }


	
	</script>

	<script>
		$(document).ready(function() {
			App.init();
			EmailCompose.init();
		});
	</script>
</body>
</html>
