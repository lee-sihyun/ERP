<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%-- 캘린더 리스트 화면 --%>
<title>캘린더 관리</title>
<script src="${pageContext.servletContext.contextPath }/calendar/js/jquery-3.1.1.min.js"></script>
<%-- <script src="${pageContext.servletContext.contextPath }/calendar/js/bootstrap.min.js"></script> --%>
<%-- <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/calendar/css/bootstrap.min.css"> --%>
<%-- <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/calendar/css/bootstrap-theme.min.css"> --%>
<script type="text/javascript" src='${pageContext.servletContext.contextPath }/calendar/js/sweetalert.min.js?ver=1'></script>
<link rel="stylesheet" type="text/css" href='${pageContext.servletContext.contextPath }/calendar/css/sweetalert.css?ver=1.2'>
<script type="text/javascript" src="${pageContext.servletContext.contextPath }/calendar/js/calendarList.js"></script>

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
<!-- ================== END PAGE LEVEL STYLE ================== -->	
	
<!-- ================== BEGIN BASE JS ================== -->
<script src="${pageContext.servletContext.contextPath }/assets/plugins/pace/pace.min.js"></script>
<!-- ================== END BASE JS ================== -->
<style type="text/css">
#content {
	margin-left: 220px;
}
.table-bordered {
	background-color: white;
	margin-top: 200px;
	margin-left: 90px;
	width: 90%;
}
#btnDiv {
	margin-left: 90px;
}
</style>
</head>
<body>
	<form action="${pageContext.servletContext.contextPath }/calendar_remove" method="post" id="frmCalendarRemove">
		<table class="table table-bordered">
			<tr>
				<th><input type='checkbox' onclick='checkAllDel(this.checked)' />전체</th>
				<th>캘린더이름</th>
				<th>캘린더코드</th>
			</tr>
			<c:forEach items="${items}" var="item">
				<tr>
					<td><input type='checkbox' name='chkVal' value="${item.id}" /></td>
					<td><input type="hidden" name='summarys' value="${item.summary}" />
						<a href="${pageContext.servletContext.contextPath }/schdule?calendarId=${item.id}&title=${item.summary}">${item.summary}</a>
					</td>
					<td>${item.id}</td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<div id="btnDiv">
	<input type="button" class='btn btn-sm btn-warning' value="캘린더 생성"
		onclick="calendarAddForm()" />
	<input type="button" class='btn btn-sm btn-warning' value="캘린더 수정"
		onclick="calendarModifyForm()" />
	<input type="button" class='btn btn-sm btn-warning' value="캘린더 삭제"
		onclick="calendarRemove()" />
	</div>
	<!-- 캘린더 생성 modal -->
	<div class="modal fade" id="calendarAddForm" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">캘린더 생성</h4>
				</div>
				<div class="modal-body">
					<!-- 캘린더 생성처리 form -->
					<form action="${pageContext.servletContext.contextPath }/calendar_add" method='post' id='frmCalendarAdd'>
						<div class='form-group'>
							<label>캘린더이름</label><input class='form-control' type="text"
								name='summary' id='summary' />
						</div>
						<div class='modal-footer'>
							<input type="button" class='btn btn-sm btn-warning' value="확인"
								onclick="calendarAdd()" /> <input type="reset"
								class='btn btn-sm btn-warning' value="초기화" /> <input
								type='button' class='btn btn-sm btn-warning'
								data-dismiss='modal' value="취소" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 캘린더 수정 modal -->
	<div class="modal fade" id="calendarModifyForm" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">캘린더 수정</h4>
				</div>
				<div class="modal-body">
					<!-- 캘린더 생성처리 form -->
					<form action="${pageContext.servletContext.contextPath }/calendar_modify" method='post'
						id='frmCalendarModify'>
						<div class='form-group'>
							<label>캘린더이름</label><input class='form-control' type="text"
								name='summary' id='summaryModify' />
						</div>
						<input type="hidden" name="calendarId" id='calendarIdModify' />
						<div class='modal-footer'>
							<input type="button" class='btn btn-sm btn-warning' value="확인"
								onclick="calendarModify()" /> <input type="reset"
								class='btn btn-sm btn-warning' value="초기화" /> <input
								type='button' class='btn btn-sm btn-warning'
								data-dismiss='modal' value="취소" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
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
<!-- ================== END PAGE LEVEL JS ================== -->
</body>
</html>