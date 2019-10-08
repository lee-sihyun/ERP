<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	
	
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/animate.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/theme/default.css" rel="stylesheet" id="theme" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/style.min.css" rel="stylesheet" />
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/pace/pace.min.js"></script>
		
	<!-- 
	<link href='${pageContext.servletContext.contextPath }/assets/plugins/fullcalendar/fullcalendar/fullcalendar.css' rel='stylesheet' />
	<link href='${pageContext.servletContext.contextPath }/assets/plugins/fullcalendar/fullcalendar/fullcalendar.print.css' rel='stylesheet' media='print' />
	<script src='${pageContext.servletContext.contextPath }/assets/plugins/fullcalendar/lib/jquery.min.js'></script>
	 -->
	<script src='${pageContext.servletContext.contextPath }/assets/plugins/fullcalendar/fullcalendar/fullcalendar.js'></script>
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<%-- 
	<script src='${pageContext.servletContext.contextPath }/assets/plugins/fullcalendar/lib/jquery-ui.custom.min.js'></script>
	 
	--%>
	<!-- ================== END BASE CSS STYLE ================== -->
<script>

	$(document).ready(function() {
	
		App.init();
		$('#calendar').fullCalendar({
			
			eventClick: function(event) {
				// opens events in a popup window
				window.open(event.url, 'gcalevent', 'width=700,height=600');
				return false;
			},
			
			loading: function(bool) {
				if (bool) {
					$('#loading').show();
				}else{
					$('#loading').hide();
				}
			}
			
		});
	});

</script>
<script type="text/javascript">
function clickDay() {
	alert("test");
}
</script>
<style>
body {
	margin-top: 40px;
	text-align: center;
	font-size: 14px;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
}
hr {
	box-sizing: content-box;
	overflow: visible;
	margin-top: 16px;
	margin-bottom: 16px;
	border-top: 1px solid rgba(0, 0, 0, .1);
	border: 0;
	height: 1px;
	background: rgba(0, 0, 0, .1);
}
#calendar {
	width: 900px;
	margin: 0 auto;
}

.fc-day:hover {
	background-color: #ddd;
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
			<hr style="margin-top: 40px;">
			
			<div id='calendar'></div>
						
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
		<script src="${pageContext.servletContext.contextPath }/assets/crossbrowserjs/html5shiv.js"></script>
		<script src="${pageContext.servletContext.contextPath }/assets/crossbrowserjs/respond.min.js"></script>
		<script src="${pageContext.servletContext.contextPath }/assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${pageContext.servletContext.contextPath }/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
</body>
</html>





























