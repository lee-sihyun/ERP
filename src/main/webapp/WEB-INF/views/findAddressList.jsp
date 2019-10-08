<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8" />
<title>ITWILL</title>
<style type="text/css">
#checkbox {
	width: 10px;
}

th {
	text-align: center;
}
</style>


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

<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
<!-- <link href="assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" /> -->
<link
	href="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css"
	rel="stylesheet" />
<!-- ================== END PAGE LEVEL STYLE ================== -->

<!-- ================== BEGIN BASE JS ================== -->
<script
	src="${pageContext.servletContext.contextPath }/assets/plugins/pace/pace.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.2.0/handlebars.min.js"></script>
<!-- ================== END BASE JS ================== -->
</head>
<body>

	<!-- begin page-header -->
	<div style="background: white;">
		<h1 class="page-header"
			style="margin-left: auto; margin-right: auto; text-align: center;">내부
			주소록</h1>
	</div>
	<!-- end page-header -->

	<!-- begin row -->
	<div class="row">
		<!-- begin col-12 -->
		<div class="col-md-12">
			<!-- begin panel -->
			<div class="panel panel-inverse">

				<div id="panel-body" class="panel-body" align="center"></div>

				<div id="pageNumDiv" align="left"></div>
				<div align="center">
					<form action="javascript:addressDisplay();" method="post"
						id="searchForm">
						<select name="search" id="search">
							<option value="emp_name" selected="selected">&nbsp;이름&nbsp;</option>
							<option value="emp_position">&nbsp;직급&nbsp;</option>
							<option value="dept_name">&nbsp;부서명&nbsp;</option>
						</select> <input type="text" name="keyword" id="keyword">
						<button type="submit">검색</button>
					</form>
				</div>
				<hr>


			</div>
			<!-- end panel -->
		</div>
		<!-- end col-12 -->
	</div>
	<!-- end row -->
	</div>
	<!-- end #content -->



	<!-- begin scroll to top btn -->
	<a href="javascript:;"
		class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade"
		data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
	<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->

	<script id="template" type="text/x-handlebars-template">
	<form method="post" action="${pageContext.servletContext.contextPath }/findAddress" onsubmit="selectAction();">
	<table id="data-table" class="table table-striped table-bordered" style="margin-left: auto; margin-right: auto;">
		<thead>
			<tr>
				<th align="center" id="checkbox"><input name="allCheck" id="allCheck" type="checkbox" value="50" size="5"></th>	
				<th align: center;>이름</th>
				<th align: center;>부서명</th>
				<th align: center;>직급</th>
				<th align: center;>재직상태</th>
			</tr>
		</thead>
		<tbody>
			{{#each .}}
			<tr class="odd gradeX">
				<td><input name="empNo" class="check" type="checkbox" value="{{empNo}}" size="5"></td>
				<td align="center">{{empName}}</a></td>
				<td align="center">{{deptName}}</a></td>
				<td align="center">{{empPosition}}</a></td>
				<td align="center">{{empState}}</td></a>
			</tr>
			{{/each}}
 		</tbody>
 	</table>
	<button align="left" type="button" class="btn btn-danger" id="selectBtn" onclick="selectAction();" >선택</button>
	<form>
 	</script>
	<!--
 	컬럼
 	
	필드 	
 	
 	  -->

	<script type="text/javascript">
		var page = 1;
		addressDisplay(page);

		//키워드 검색
		function addressDisplay(pageNum) {
			var page = pageNum;
			var search = $("#search").val();
			var keyword = $("#keyword").val();

			$
					.ajax({
						type : "POST",
						url : "${pageContext.servletContext.contextPath }/findAddressList",
						data : {
							"pageNum" : pageNum,
							"search" : search,
							"keyword" : keyword
						},
						dataType : "json",
						success : function(json) {
							if (json.findAddressList.length == 0) {
								$("#panel-body").html("검색된 주소록이 존재하지 않습니다.")
								return;
							}

							var source = $("#template").html();
							var template = Handlebars.compile(source);
							$("#panel-body").html(
									template(json.findAddressList));

							pageDisplay(json.pager);
						},
						error : function(req) {
							alert("응답 에러 코드 =" + req.status);
						}
					});
		}

		//페이징 처리
		function pageDisplay(pager) {
			var html = "";
			if (pager.startPage > pager.blockSize) {
				html += "<a href='javascript:addressDisplay(1);'>[처음]</a>&nbsp;";
				html += "<a href='javascript:addressDisplay(" + pager.prevPage
						+ ");'>[이전]</a>";
			} else {
				html += "[처음]&nbsp;[이전]&nbsp;";
			}

			for (i = pager.startPage; i <= pager.endPage; i++) {
				if (pager.pageNum != i) {
					html += "<a href='javascript:addressDisplay(" + i + ");'>["
							+ i + "]</a>";
				} else {
					html += "[" + i + "]";
				}
			}

			if (pager.endPage != pager.totalPage) {
				html += "<a href='javascript:addressDisplay(" + pager.nextPage
						+ ");'>[다음]</a>&nbsp;";
				html += "<a href='javascript:addressDisplay(" + pager.totalPage
						+ ");'>[마지막]</a>";
			} else {
				html += "&nbsp;[다음]&nbsp;[마지막]";
			}

			$("#pageNumDiv").html(html);

		}

		//선택한 리스트 보내는 사람으로 입력하기
		function selectAction() {

			var num = [];

			$('input[name="empNo"]:checked').each(function() {
				num.push($(this).val());
			});

			if ($('input[name="empNo"]:checked').size() == 0) {
				alert("선택한 사원이 없습니다.");
				return;
			} else {

				opener.document.getElementById("recvEmpNo").value = num;
				window.close();

				/*
				$.ajax({
					type: "POST",
					url: "${pageContext.servletContext.contextPath }/findAddress",
					data: {"num":num},
					contentType : "application/x-www-form-urlencoded; charset=UTF-8",
					dataType: "text",
					success: function(text) {
						if(text=="success") {
							alert("보내기 성공");
							addressDisplay(1);
						}
						
					},
					
					error: function(req) {
						alert("응답 에러 코드 = "+req.status);
					}
					
				});
				 */
			}

		}

		
	</script>






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
	<!-- <script src="assets/plugins/DataTables/media/js/jquery.dataTables.js"></script> -->
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/table-manage-default.demo.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
			TableManageDefault.init();
		});
	</script>
















</body>
</html>
