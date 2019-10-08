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
	<title>Color Admin | Inbox v2 (10)</title>
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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.2.0/handlebars.min.js"></script>
	<!-- ================== END BASE JS ================== -->
<style type="text/css">
th {
	text-align: center;
	border: 1px solid;
}

tr {
	border: 1px solid;
	text-align: center;
}

td{
	border: 1px solid;
	text-align: center;
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
                            <li class="active"><a href="${pageContext.servletContext.contextPath }/recvMessageBox"><i class="fa fa-inbox fa-fw m-r-5"></i> 받은쪽지함 <span class="badge pull-right">10</span></a></li>
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
		        <div class="vertical-box-column">
		            <!-- begin wrapper -->
                    <div class="wrapper bg-silver-lighter">
                        <!-- begin btn-toolbar -->
                        <div class="btn-toolbar">
                            <!-- begin btn-group -->
                            <div class="btn-group pull-right">
                                <button class="btn btn-white btn-sm">
                                    <i class="fa fa-chevron-left"></i>
                                </button>
                                <button class="btn btn-white btn-sm">
                                    <i class="fa fa-chevron-right"></i>
                                </button>
                            </div>
                            <!-- end btn-group -->
                            <!-- begin btn-group -->
                            <div class="btn-group dropdown">
                                <button class="btn btn-white btn-sm dropdown-toggle" data-toggle="dropdown">
                                    전체쪽지 <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu text-left text-sm">
                                    <li class="active"><a href="#"><i class="fa fa-circle f-s-10 fa-fw m-r-5"></i> 전체쪽지</a></li>
                                    <li><a href="javascript:;"><i class="fa f-s-10 fa-fw m-r-5"></i> 인사팀</a></li>
                                    <li><a href="javascript:;"><i class="fa f-s-10 fa-fw m-r-5"></i> 영업팀</a></li>
                                    <li><a href="javascript:;"><i class="fa f-s-10 fa-fw m-r-5"></i> 마케팅팀</a></li>
                                    <li><a href="javascript:;"><i class="fa f-s-10 fa-fw m-r-5"></i> 전산팀</a></li>
                                    <li><a href="javascript:;"><i class="fa f-s-10 fa-fw m-r-5"></i> 디자인팀</a></li>
                                </ul>
                            </div>
                            <!-- end btn-group -->
                            <!-- begin btn-group -->
                            <div class="btn-group">
                                <button id="newBtn" class="btn btn-sm btn-white" data-toggle="tooltip" data-placement="top" data-title="Refresh" data-original-title="" title=""><i class="fa fa-refresh fa-fw m-r-5"></i>새로고침</button>
                                <button id="deleteBtn" class="btn btn-sm btn-white" onclick="deleteAction();"><i class="fa fa-trash m-r-3"></i> <span>삭제</span></button>
                                <button id="moveMyboxBtn" class="btn btn-sm btn-white" ><i class="fa fa-folder m-r-3"></i> <span>보관</span></button>
                                <button id="replyBtn" class="btn btn-sm btn-white" ><i class="fa fa-reply m-r-3"></i> <span>답장</span></button>
                            </div>
                            <!-- end btn-group -->
                        </div>
                        <!-- end btn-toolbar -->
                    </div>
		            <!-- end wrapper -->
		           
		           
		           	<!-- 이메일리스트 -->
		            <!-- begin list-email -->
                    <form method="post" action="${pageContext.servletContext.contextPath }/recvMessageBox" onsubmit="deleteAction();">
		            <div id="recvBoardListDiv"></div>
		            <div id="pageNumDiv" align="left"></div>
		            </form>
		            <!-- end list-email -->
		            
		            
		        </div>
		        <!-- end vertical-box-column -->
		    </div>
		    <!-- end vertical-box -->
		</div>
		<!-- end #content -->
		
	</div>
	<!-- end page container -->
	
	<script id="template" type="text/x-handlebars-template">
	<table style=" border : 1px soild red;  width: 950px; height: 130px; text-align: center; margin-left: 10px; ">
		<thead>
			<tr>
				<th align="center" id="checkbox"><input name="allCheck" id="allCheck" type="checkbox" value="50" size="5"></th>
				<th align="center">부서</th>
				<th align="center">보낸사람</th>
				<th align="center">작성일자</th>
				<th align="center">쪽지제목</th>
				<th align="center">쪽지내용</th>
			</tr>
		</thead>
		<tbody>
			{{#each .}}
			<tr>
				<td><input name="msgNo" class="check" type="checkbox" value="{{msgNo}}" } size="5"></td>
                <td>{{sendDeptName}}({{sendDeptNo}}) </td>
                <td>{{sendEmpName}}({{sendEmpPosition}}) </td>
                <td>{{sendDate}}</td>
                <td><a href="${pageContext.servletContext.contextPath }/recvMessageView?msgNo={{msgNo}}">{{title}}</a></td>
                <td><a href="${pageContext.servletContext.contextPath }/recvMessageView?msgNo={{msgNo}}">{{content}}</a></td> 
        	</tr>
			{{/each}}
		</tbody>
	</table>	
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
	<script src="${pageContext.servletContext.contextPath }/assets/js/email-inbox-v2.demo.min.js"></script>
	<script src="${pageContext.servletContext.contextPath }/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	<script type="text/javascript">
	//삭제버튼
	$("#deleteBtn").click( function() {
		
		
				
		var num = [];
		
		$('input[name="msgNo"]:checked').each(function(){
			num.push($(this).val());
		});
		
		if($('input[name="msgNo"]:checked').size()==0){
			alert("선택한 메세지가 없습니다.");
			return;
		} else {
			if(confirm("정말로 삭제 하시겠습니까?")) {
				$.ajax({
					type: "POST",
					url: "${pageContext.servletContext.contextPath }/MessageDel",
					data: {"num":num},
					contentType : "application/x-www-form-urlencoded; charset=UTF-8",
					dataType: "text",
					success: function(text) {
						if(text=="success") {
							location.href="recvMessageBox";
						}					
					},
					error: function(req) {
						alert("응답 에러 코드 = "+req.status);
					}
				});
			}
		}
	});
	
	
	/////페이징처리///////
	var page=1;
	boardDisplay(page);
	
	//게시글 목록을 요청하여 출력하는 함수
	function boardDisplay(pageNum) {
		var page=pageNum;
		
		$.ajax({
			type:"post",
			url: "recvBoardList",
			data: {"pageNum":pageNum},
			dataType: "json",
			success: function(json) {
				if(json.recvBoardList.length==0) {
					$("#recvBoardListDiv").html("받은 쪽지가 존재하지 않습니다.")
					return;
				}
				
				var source=$("#template").html();
				var template=Handlebars.compile(source);
				$("#recvBoardListDiv").html(template(json.recvBoardList));
				
				pageDisplay(json.pager);
			},
			error: function(req) {
				alert("응답 에러 코드 ="+req.status);
			}
		});
	}
	
	//페이지 번호를 출력하기 위한 함수
	function pageDisplay(pager) {
		var html="";
		if(pager.startPage>pager.blockSize) {
			html+="<a href='javascript:boardDisplay(1);'>[처음]</a>";
			html+="<a href='javascript:boardDisplay("+pager.prevPage+");'>[이전]</a>";
		} else {
			html+="[처음][이전]";
		}
		
		for(i=pager.startPage;i<=pager.endPage;i++) {
			if(pager.pageNum!=i) {
				html+="<a href='javascript:boardDisplay("+i+");'>["+i+"]</a>";
			} else {
				html+="["+i+"]";
			}
		}
		
		if(pager.endPage!=pager.totalPage) {
			html+="<a href='javascript:boardDisplay("+pager.nextPage+");'>[다음]</a>";
			html+="<a href='javascript:boardDisplay("+pager.totalPage+");'>[마지막]</a>";
		} else {
			html+="[다음][마지막]";
		}
		
		$("#pageNumDiv").html(html);
	}
	
	//보관버튼 => 쪽지보관함으로 이동
	$("#moveMyboxBtn").click( function() {
		
		
				
		var num = [];
		
		$('input[name="msgNo"]:checked').each(function(){
			num.push($(this).val());
		});
		
		if($('input[name="msgNo"]:checked').size()==0){
			alert("선택한 메세지가 없습니다.");
			return;
		} else {
			if(confirm("쪽지보관함으로 하시겠습니까?")) {
				$.ajax({
					type: "POST",
					url: "${pageContext.servletContext.contextPath }/recvMessageMove",
					data: {"num":num},
					contentType : "application/x-www-form-urlencoded; charset=UTF-8",
					dataType: "text",
					success: function(text) {
						if(text=="success") {
							location.href="recvMessageBox";
						}					
					},
					error: function(req) {
						alert("응답 에러 코드 = "+req.status);
					}
				});
			}
		}
	});
	
	</script>
	
	<script>
	$('#newBtn').click(function() {
		location.reload();
		});
	
	
		$(document).ready(function() {
			App.init();
			InboxV2.init();
		});
	</script>
</body>
</html>
