<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<title>Color Admin | Inbox (10)</title>
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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

<style type="text/css">
th {
	text-align: center;
}

tr {
	border: 1px solid;
}
</style>

</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in">
		<span class="spinner"></span>
	</div>
	<!-- end #page-loader -->

	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">




		<!-- begin #content -->
		<div id="content" class="content content-full-width">
			<div class="p-20">
				<!-- begin row -->
				<div class="row">
					<!-- begin col-2 -->
					<div class="col-md-2">
						
						<div class="hidden-sm hidden-xs">
							<h5 class="m-t-20">결재</h5>
							<ul class="nav nav-pills nav-stacked nav-inbox">
								<li ><a href="${pageContext.request.contextPath }/draft/display"> 
								<i class="fa fa-inbox fa-fw m-r-5"></i> 결재함
								</a></li>
								 <li class="active"><a href="${pageContext.request.contextPath }/draft/draftapprove"><i class="fa fa-inbox fa-fw m-r-5"></i> 처리결재</a></li>
								<li><a href="${pageContext.request.contextPath }/draft/shyuntest1"><i class="fa fa-pencil fa-fw m-r-5"></i> 결재작성</a></li>
								<li><a href="#"><i class="fa fa-trash-o fa-fw m-r-5"></i> 반려</a></li>
								<!--  <li><a href="#"><i class="fa fa-star fa-fw m-r-5"></i> Archive</a></li>-->
							</ul>
</div>
				</div>
					<!-- end col-2 -->
					<!-- begin col-10 -->
					<div class="col-md-10">
				

	  <div class="col-md-6">
			        <!-- begin panel -->
                    <div class="panel panel-inverse" style="width: 1300px;">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" ><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" ><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" ><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger"><i class="fa fa-times"></i></a>
                            </div>
    <!--  --> <h4 class="panel-title">목록</h4>
    </div>
						<div class="panel-body" style="height: 1050px;padding-left: 45px;padding-top: 50px;">
<!-- 탭 -->
   <div class="panel-heading p-0">
                            <div class="panel-heading-btn m-r-10 m-t-10">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success"><i class="fa fa-expand"></i></a>
                            </div>
                            <!-- begin nav-tabs -->
                            <div class="tab-overflow">
                                <ul class="nav nav-tabs nav-tabs-inverse" style="text-align: center;">
                                    <li class="prev-button"><a href="javascript:;" class="text-success"><i class="fa fa-arrow-left"></i></a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/draftapprove" style="width: 150px;" >기안서</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/spendingapprove"  style="width: 150px;" >지출결의서</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/productapprove"style="width: 150px;" >비품구입</a></li>
                                    <li class="active"><a href="${pageContext.servletContext.contextPath}/draft/purchaseapprove"  style="width: 150px;" >구매품의서</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/confapprove"  style="width: 150px;" >회의록</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/abapprove"  style="width: 150px;" >휴직</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/resapprove"  style="width: 150px;" >퇴직</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/rtapprove"  style="width: 100px;" >복직</a></li>
                              
                              		
                              		
                                
                                  
                                </ul>
                            </div>
                        </div>

<table class="table table-striped">
								<tr >
									<th style="text-align: center; color: black;" >문서번호</th>
									<th style="text-align: center; color: black;">작성자</th>
									<th style="text-align: center; color: black;">제목</th>
									<th style="text-align: center; color: black;">작성일</th>
									 <th style="text-align: center; color: black;">승인상태</th>
								</tr>




								<c:forEach var="purchase" items="${purchaseList1 }">


									<tr style="text-align: center;">
										<td style="text-align: center;">


											<a href="${pageContext.request.contextPath }/draft/approve1pr?draftNo=${purchase.draftNo}" class="purchase"> ${purchase.draftNo } </a>
										</td>




										<td style="text-align: center;">${purchase.writer }</td>

										<td style="text-align: center;">${purchase.purchaseTitle }</td>

										<td style="text-align: center;">${purchase.writeDate }</td>




										<td style="text-align: center;">
										
											 <c:if 	test="${purchase.approve==1}">미확인</c:if>
											 <c:if 	test="${purchase.approve==2}">결재중</c:if>
											 <c:if 	test="${purchase.approve==3}">결재중</c:if>
							
										
										</td>
										
									</tr>


								</c:forEach>


							</table>


							<!-- div class="email-footer clearfix">
								737 messages
								<ul class="pagination pagination-sm m-t-0 m-b-0 pull-right">
									<li class="disabled"><a href="javascript:;"><i class="fa fa-angle-double-left"></i></a></li>
									<li class="disabled"><a href="javascript:;"><i class="fa fa-angle-left"></i></a></li>
									<li><a href="javascript:;"><i class="fa fa-angle-right"></i></a></li>
									<li><a href="javascript:;"><i class="fa fa-angle-double-right"></i></a></li>
								</ul>
							</div> -->
						</div>
					</div>
					<!-- end col-10 -->
				</div>
				<!-- end row -->
			</div>




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
	<script src="${pageContext.servletContext.contextPath }/assets/js/inbox.demo.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
			Inbox.init();
		});
	</script>
</body>
</html>
