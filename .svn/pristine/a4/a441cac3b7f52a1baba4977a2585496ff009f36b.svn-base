<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Color Admin | Detail</title>
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
		<div id="content" class="content content-full-width">
		    <!-- begin vertical-box -->
		    <div class="vertical-box">
		        <!-- begin vertical-box-column -->
		        <div class="vertical-box-column width-250">
		          
		          
		           <!-- 메세지 위 상단 바  공통으로 사용하는 부분 = 시작 -->
		            <!-- begin wrapper -->
                    <div class="wrapper bg-silver text-center">
                        <a href="${pageContext.servletContext.contextPath }/sendMessageDetail" class="btn btn-success p-l-40 p-r-40 btn-sm">
                            <i class="fa fa-pencil fa-fw m-r-5"></i>쪽지쓰기
                        </a>
                    </div>
		            <!-- end wrapper -->
		            <!-- 메세지 위 상단 바  공통으로 사용하는 부분 = 끝 -->
		            
		            
		            <!-- 메세지 사이드 바 공통으로 사용하는 부분 = 시작 -->
		            <!-- begin wrapper -->
                    <div class="wrapper">
                        <p><b>FOLDERS</b></p>
                        <ul class="nav nav-pills nav-stacked nav-sm">
                            <li><a href="${pageContext.servletContext.contextPath }/recvMessageBox"><i class="fa fa-inbox fa-fw m-r-5"></i> 받은쪽지함 <span class="badge pull-right">10</span></a></li>
                            <li><a href="${pageContext.servletContext.contextPath }/myMessageBox"><i class="fa fa-folder-open fa-fw m-r-5"></i> 쪽지보관함</a></li>
                            <li><a href="${pageContext.servletContext.contextPath }/sendMessageBox"><i class="fa fa-send fa-fw m-r-5"></i> 보낸쪽지함</a></li>
                           
                            
                        </ul>
                        <p><b>LABEL</b></p>
                        <ul class="nav nav-pills nav-stacked nav-sm m-b-0">
                            <li><a href="javascript:;"><i class="fa fa-fw m-r-5 fa-circle text-inverse"></i> 인사팀</a></li>
                            <li><a href="javascript:;"><i class="fa fa-fw m-r-5 fa-circle text-primary"></i> 영업팀</a></li>
                            <li><a href="javascript:;"><i class="fa fa-fw m-r-5 fa-circle text-success"></i> 마케팅팀</a></li>
                            <li><a href="javascript:;"><i class="fa fa-fw m-r-5 fa-circle text-warning"></i> 전산팀</a></li>
                            <li><a href="javascript:;"><i class="fa fa-fw m-r-5 fa-circle text-danger"></i> 디자인팀</a></li>
                        </ul>
                    </div>
		            <!-- end wrapper -->
		            <!-- 메세지 사이드 바 공통으로 사용하는 부분 = 끝 -->
		       
		       
		       
		       
		        </div>
		        <!-- end vertical-box-column -->
		        <!-- begin vertical-box-column -->
		        <div class="vertical-box-column bg-white">
		            <!-- begin wrapper -->
                    <div class="wrapper bg-silver-lighter clearfix">
                        <div class="btn-group m-r-5">
                            <a href="#" class="btn btn-white btn-sm"><i class="fa fa-reply fa-fw m-r-5"></i>답장</a>
                        </div>
                        <div class="btn-group m-r-5">
                            <a href="#" class="btn btn-white btn-sm p-l-20 p-r-20"><i class="fa fa-trash fa-fw m-r-5"></i>삭제</a>
                            <a href="#" class="btn btn-white btn-sm p-l-20 p-r-20"><i class="fa fa-folder-open fa-fw m-r-5"></i>보관</a>
                        </div>
                        <div class="pull-right">
                            <div class="btn-group btn-toolbar">
                                <a href="inbox_v2.html" class="btn btn-white btn-sm disabled"><i class="fa fa-chevron-left"></i></a>
                                <a href="inbox_v2.html" class="btn btn-white btn-sm"><i class="fa fa-chevron-right"></i></a>
                            </div>
                            <div class="btn-group m-l-5">
                                <a href="javascript:window.history.back();" class="btn btn-white btn-sm"><i class="fa fa-list-ul fa-fw m-r-5"></i>목록</a>
                            </div>
                        </div>
                    </div>
		            <!-- end wrapper -->
		            
		            <!-- 쪽지상세내용 -->
		            <!-- begin wrapper -->
                    <div class="wrapper">
                     
                     
                       <!-- 받는사람과 보내는 사람 = 시작 -->
                        <ul class="media-list underline m-b-20 p-b-15">
                            <li class="media media-sm clearfix">
                                <a href="javascript:;" class="pull-left">
                                    <img class="media-object rounded-corner" alt="" src="assets/img/user-14.jpg" />
                                </a>
                               
                               
                                <div class="media-body">
                                    <span class="email-to">
                       				 <h3 class="m-b-15 m-t-0 p-b-10 underline">${recvmessageView.title}</h3>
                                    
                                    </span>
                                    <span class="email-from text-inverse f-w-600">
                                      
                                   	보낸사람 : ${recvmessageView.sendEmpName}
                                    
                                    </span>
                                    
                                    <span class="text-muted m-l-5"><i class="fa fa-clock-o fa-fw"></i>${recvmessageView.sendDate}</span>
                                    
                                    <br />
                                    
                                    
                                </div>
                                
                                
                            </li>
						</ul>
						 <!-- 받는사람과 보내는 사람 = 끝-->
                       
                     
                       
                        <p class="f-s-12 text-inverse"> 
                         ${recvmessageView.content}
                        </p>
                        <br />
                        <br />
                        <p class="f-s-12 text-inverse">
                            ${recvmessageView.sendDeptName}팀<br />
                            ${recvmessageView.sendEmpName}&nbsp;${recvmessageView.sendEmpPosition} 보냄
                           
                        </p>
                    </div>
		            <!-- end wrapper -->
		            <!-- 쪽지상세내용끝 -->
		            
		            
		            <!-- begin wrapper -->
                    <div class="wrapper bg-silver-lighter text-right clearfix">
                        <div class="btn-group btn-toolbar">
                            <a href="inbox_v2.html" class="btn btn-white btn-sm disabled"><i class="fa fa-chevron-left"></i></a>
                                <a href="inbox_v2.html" class="btn btn-white btn-sm"><i class="fa fa-chevron-right"></i></a>
                        </div>
                        <div class="btn-group m-l-5">
                             <a href="javascript:window.history.back();" class="btn btn-white btn-sm"><i class="fa fa-list-ul fa-fw m-r-5"></i>목록</a>
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
	<script src="${pageContext.servletContext.contextPath }/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
</body>
</html>
