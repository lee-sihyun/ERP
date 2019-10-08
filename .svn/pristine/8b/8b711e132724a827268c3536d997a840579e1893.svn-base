<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>ITWILL</title>

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
	<!-- <link href="assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" /> -->
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/pace/pace.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.2.0/handlebars.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
		
		
		
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">게시판</h1>
			<!-- end page-header -->
			
			<!-- begin row -->
			<div class="row">
			    <!-- begin col-12 -->
			    <div class="col-md-12">
			        <!-- begin panel -->
                    <div class="panel panel-inverse">
						<%-- 게시글 목록을 출력하는 영역 --%>	
                        <div id="panel-body" class="panel-body" align="center" ></div>
                        
						<div id="btnDiv">
						<button type="button" onclick="location.href='/controller/board_add';" class="btn btn-default pull-right">글쓰려면 누르세요.</button>
						</div>
						<%-- 페이지 번호를 출력하는 영역 --%>	
                        <div id="pageNumDiv" align="left"></div>
                        <div align="center">
                            	<form action="javascript:boardDisplay();" method="post" id="searchForm">
									<select name="search" id="search">
										<option value="writer" selected="selected">&nbsp;이름&nbsp;</option>
										<option value="title">&nbsp;제목&nbsp;</option>
									</select>
									<input type="text" name="keyword" id="keyword">
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
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->
	
	<script id="template" type="text/x-handlebars-template">
	<table border="2" cellspacing="2" cellpadding="3" class="panel">
		<tr style="text-align: center;">
			<th width="100" style="text-align: center;" >번호</th>
			<th width="400" style="text-align: center;" >제목</th>
			<th width="150" style="text-align: center;" >글쓴이</th>
			<th width="250" style="text-align: center;" >조회수</th>
			<th width="250" style="text-align: center;" >작성일자</th>
			<th width="150" style="text-align: center;" >비고</th>
		</tr>
		{{#each .}}
		<tr>
			<td align="center">{{bno}}</td>
			<td align="center"><a href="${pageContext.servletContext.contextPath }/boardView?bno={{bno}}">{{title}}</a></td>
			<td align="center">{{writer}}</td>
			<td align="center">{{viewcnt}}</td>
			<td align="center">{{regdate}}</td>
			<td align="center" ><button type="button" onclick="location.href='${pageContext.servletContext.contextPath }/board_update?bno={{bno}}';" class="btn updateBtn" writer="{{writer}}">변경</button>
			
		</tr>
		{{/each}}
	</table>
 	</script>
 	<!--
 	컬럼
 	
	필드 	
 	
 	  -->
 	  
	<script type="text/javascript">
	var page=1;
	boardDisplay(page);

	function boardDisplay(pageNum){
		var page = pageNum;
		var search=$("#search").val();
		var keyword=$("#keyword").val();
		
		
		$.ajax({
			type: "POST",
			url: "${pageContext.servletContext.contextPath }/board_list",
			data: {"pageNum":pageNum, "search":search, "keyword":keyword},
			dataType: "json",
			success: function(json){
				if(json.boardList.length==0) {
					$("#panel-body").html("검색하신 게시글이 존재하지 않습니다.")
					return;
				}
				
				var source=$("#template").html();
				var template=Handlebars.compile(source);
				$("#panel-body").html(template(json.boardList));
				
				pageDisplay(json.pager);
				
				var name="${loginUserinfo.empName}";
				
				$(".updateBtn").each(function() {
					var writer=$(this).attr("writer");
					if(writer!=name) {
						$(this).hide();
					}
				});
				
			},
			error: function(req){
				alert("응답 에러 코드 ="+req.status);
			}
		});
	}
	
	function pageDisplay(pager) {
		var html="";
		if(pager.startPage>pager.blockSize) {
			html+="<a href='javascript:boardDisplay(1);'>[처음]</a>&nbsp;";
			html+="<a href='javascript:boardDisplay("+pager.prevPage+");'>[이전]</a>";
		} else {
			html+="[처음]&nbsp;[이전]&nbsp;";
		}
		
		for(i=pager.startPage;i<=pager.endPage;i++) {
			if(pager.pageNum!=i) {
				html+="<a href='javascript:boardDisplay("+i+");'>["+i+"]</a>";
			} else {
				html+="["+i+"]";
			}
		}
		
		if(pager.endPage!=pager.totalPage) {
			html+="<a href='javascript:boardDisplay("+pager.nextPage+");'>[다음]</a>&nbsp;";
			html+="<a href='javascript:boardDisplay("+pager.totalPage+");'>[마지막]</a>";
		} else {
			html+="&nbsp;[다음]&nbsp;[마지막]";
		}
		
		$("#pageNumDiv").html(html);
	}
	
	//삭제
	function deleteAction() {
		var num = [];
		
		$('input[name="bno"]:checked').each(function(){
			num.push($(this).val());
		});
		
		if($('input[name="bno"]:checked').size()==0){
			alert("선택한 게시글이 없습니다.");
			return;
		} else {
			if(confirm("정말로 삭제 하시겠습니까?")) {
				$.ajax({
					type: "POST",
					url: "${pageContext.servletContext.contextPath }/board/boardDel",
					data: {"num":num},
					contentType : "application/x-www-form-urlencoded; charset=UTF-8",
					dataType: "text",
					success: function(result) {
						if(result=="success") {
							boardDisplay(1);
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
	<!-- <script src="assets/plugins/DataTables/media/js/jquery.dataTables.js"></script> -->
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/js/table-manage-default.demo.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			TableManageDefault.init();
		});
	</script>
</body>
</html>
