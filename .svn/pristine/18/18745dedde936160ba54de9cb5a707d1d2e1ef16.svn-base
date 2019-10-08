<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<title>ITWILL| 결재</title>
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
<style type="text/css">

  td {
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
	<div id="page-container"
		class="fade page-sidebar-fixed page-header-fixed">


		<!-- begin #content -->
		<div id="content" class="content content-full-width">
			<!-- begin vertical-box -->
			<div class="vertical-box">
				<!-- begin vertical-box-column -->
				<div class="vertical-box-column width-250">
					<!-- begin wrapper -->
					<div class="wrapper bg-silver text-center">
						<a href="email_compose.html"
							class="btn btn-success p-l-40 p-r-40 btn-sm"> Compose </a>
					</div>
					<!-- end wrapper -->
					<!-- begin wrapper -->
					<div class="wrapper">
						<p>
							<b>FOLDERS</b>
						</p>
						
						<!-- 결재함 이동 -->
						<ul class="nav nav-pills nav-stacked nav-sm">
							<li><a href="${pageContext.servletContext.contextPath}/draft/display"><i
									class="fa fa-inbox fa-fw m-r-5"></i> 결재함 <span
									class="badge pull-right" >52</span></a></li>
							
							 <li><a href="${pageContext.request.contextPath }/draft/draftapprove"><i class="fa fa-inbox fa-fw m-r-5"></i> 처리결재</a></li>
							<li><a href="${pageContext.servletContext.contextPath}/draft/shyuntest1"><i
									class="fa fa-pencil fa-fw m-r-5"></i> 결재작성</a></li>
							<li><a href="${pageContext.request.contextPath }/draft/draftreject"><i
									class="fa fa-trash fa-fw m-r-5"></i> 반려</a></li>
						</ul>

					</div>
					<!-- end wrapper -->
				</div>
				<!-- end vertical-box-column -->
				<!-- begin vertical-box-column -->
				<div class="vertical-box-column">
					<!-- begin wrapper -->
					<div class="wrapper bg-silver-lighter">
						<!-- begin btn-toolbar -->
						<div class="btn-toolbar">
							<div class="btn-group">
								<a href="inbox_v2.html"
									class="btn btn-white btn-sm p-l-20 p-r-20"><i
									class="fa fa-file"></i></a> <a href="inbox_v2.html"
									class="btn btn-white btn-sm p-l-20 p-r-20"><i
									class="fa fa-trash"></i></a>
							</div>
						</div>
						<!-- end btn-toolbar -->
					</div>
					<!-- end wrapper -->
					<!-- begin wrapper -->
					<!--  <div class="wrapper">-->
					<div class="p-30 bg-white" style="height: 960px; width: 1360px;">



						<div class="panel-body"
							style="overflow: hidden; width: auto; height: 100%;">
						
							


<div class="ehlfk" >

<p style="
    margin-left: 300px;
    font-weight: bold;
    font-size: 40px;
        color: black;
" > 지&nbsp;&nbsp;출&nbsp;&nbsp;결&nbsp;&nbsp;의&nbsp;&nbsp;서</p>
<div style="
    margin-left: 200px;
">
<table style="
    width: 300px;
    height: 150px;
    margin-left: 300px;
     font-weight: bold;
    text-align: center;

">

<tr style="background: rgb(221, 221, 221)">
<td>직급</td>
<td>부장</td>
<td>차장</td>
<td>과장</td>

</tr>

<tr>
<td style="background: rgb(221, 221, 221)" >결재자</td>
<td> ${spending.signerOne }</td>
<td> ${spending.signerTwo }</td>
<td> ${spending.signerThree }</td>

</tr>

<tr>
<td style="background: rgb(221, 221, 221)">승인여부</td>
<td>	 

<c:if 	test="${spending.approve==4}">결재승인</c:if>
<c:if 	test="${spending.approve==0}">반려</c:if>

</td>
<td>

 <c:if 	test="${spending.approve==4}">결재승인</c:if>
<c:if 	test="${spending.approve==3}">결재승인</c:if>
<c:if 	test="${spending.approve==0}">반려</c:if>

</td>
<td>
 <c:if 	test="${spending.approve==4}">결재승인</c:if>
 <c:if 	test="${spending.approve==3}">결재승인</c:if>
<c:if 	test="${spending.approve==2}">결재승인</c:if>
<c:if 	test="${spending.approve==0}">반려</c:if>
																		


</td>

</tr>

</table>
</div>

</div>
 
<table style="width: 800px; border-collapse: collapse !important; color: black; background: white; border: 1px solid black; font-size: 12px; font-family: malgun gothic,dotum,arial,tahoma;"><colgroup> 
   <col style="width: 90px;"> 
   <col style="width: 710px;"> 
  </colgroup> 
  
	<tbody>
		<tr>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">
				
제 &nbsp;&nbsp;&nbsp; 목
			</td>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;">
				<span unselectable="on" contenteditable=
				"false" class="comp_wrap" data-cid="6"
				 data-dsl="{{text:subject}}" data-wrapper=""
				  style="width: 100%; font-family: &quot;malgun gothic&quot;,
				   dotum, arial, tahoma; font-size: 9pt; line-height: normal;
				    margin-top: 0px; margin-bottom: 0px;" data-value="">
				    
				    
				    ${spending.spendingTitle }<span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="6" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
		</tr>
		<tr>
			<td style="padding: 3px; vertical-align: top; border: 0px solid black; " colspan="2" class="dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<br> 
     
<table style="width: 770px; margin : 9px; border-collapse: collapse !important; color: black; background: white; border: 2px solid black; font-size: 12px; font-family: malgun gothic,dotum,arial,tahoma;"><colgroup> 
       <col style="width: 100px;"> 
       <col style="width: 290px;"> 
       <col style="width: 100px;"> 
       <col style="width: 280px;"> 
      </colgroup> 
      
	<tbody>
	
		<tr>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">
				
문서번호
			</td>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="7" data-dsl="{{text}}" 
				data-wrapper="" style="width: 100%; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; 
				font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="">
				
				
				<!-- <input class="ipt_editor" type="text"><span contenteditable="false" class="comp_active" style="display: none; f
				ont-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 
				0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma;
				 font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
				  -->
				   ${spending.draftNo }
				 
				 
				 </span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="7" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">
				
사원번호
			</td>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="10" data-dsl="{{text}}"
				 data-wrapper="" style="width: 100%; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; 
				 font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="">
				 
				   ${spending.empNo }
				<!-- <input class="ipt_editor" type="text"> --> <span contenteditable="false" class="comp_active" style="display: non
				 e; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="10" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
		</tr>
		<tr>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">
				
작성자
			</td>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="8" data-dsl="{{text}}"
				 data-wrapper="" style="width: 100%; font-family: &quot;malgun gothic&quot;, dotum, arial,
				  tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="">
				  
				 	   ${spending.writer }<span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="8" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">
				
작성일
			</td>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;">
				<span unselectable="on" contenteditable="false" class=
				"comp_wrap" data-cid="11" data-dsl="{{text}}" data-wrapper="" 
				style="width: 100%; font-family: &quot;malgun gothic&quot;
				, dotum, arial, tahoma; font-size: 9pt; line-height: normal; 
				margin-top: 0px; margin-bottom: 0px;" data-value="">
				
					   ${spending.writeDate }
				<!--  <input class="ipt_editor" type="text">-->
				
				
				<span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="11" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
		</tr>
		<tr>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">
				
지출일
			</td>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;">
				<span unselectable="on" contenteditable="false" 
				class="comp_wrap" data-cid="9" data-dsl="{{text}}"
				 data-wrapper="" style="width: 100%; font-family: 
				 &quot;malgun gothic&quot;, dotum, arial, tahoma; 
				 font-size: 9pt; line-height: normal; margin-top: 
				 0px; margin-bottom: 0px;" data-value="">
				 
				 
				 	   ${spending.spendingDate }
				 
				 
				 
				 <span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="9" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">
				
지출금액
			</td>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;">
				<span unselectable="on" 
				contenteditable="false" class="comp_wrap"
				 data-cid="12" data-dsl="{{calendar}}" 
				 data-wrapper="" style="font-family:
				  &quot;malgun gothic&quot;, dotum, arial, tahoma; 
				  font-size: 9pt; line-height: normal; margin-top: 
				  0px; margin-bottom: 0px;" data-value="">
				  
				  	   ${spending.spendingPrice } 원
				  
		
				  
				  
				  <span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="12" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
		</tr>
	</tbody>
</table>
 <br> 
     
<table style="width: 770px; margin: 9px; color: black; background: white; border: 2px solid black; font-size: 12px; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; border-collapse: collapse !important; height: 404.545px;"><colgroup> 
       <col width:="" "120px;"=""> 
       <col width:="" "120px;"=""> 
       <col width:="" "100px;"=""> 
       <col width:="" "100px;"=""> 
       <col width:="" "100px;"=""> 
       <col width:="" "230px;"=""> 
      </colgroup> 
      
	<tbody>
		<tr>
			<td style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">
				
지출내역
			</td>

		</tr>
		<tr>
			<td>
			
			${spending.spendingContent }
		
			
			
			</td>
	
		<tr>
			<td style="padding: 3px; height: 40px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;" colspan="6">
				<br>- 비고사항 : 할부금, 개인 물품구입대, 유료 부가서비스 등 제외<br><br>
			</td>
		</tr>
	</tbody>
	<!-- 원래 버튼있던거<tr>
										<td>

											

										</td>
									</tr>   -->
</table>
 <br> 
			</td>
		</tr>
	</tbody>
	
</table>



<div style="
    margin-left: 300px;
    margin-top: 30px;
">

											<button type="button" id="approve"onclick="submitDraft();"
											
											
												class="btn btn-primary p-l-40 p-r-40">결재승인</button>
												
											<button type="button"  id="reject" onclick="rejectDraft();"
											
												class="btn btn-primary p-l-40 p-r-40">결재반려</button>

</div>







						</div>


					</div>
					<!-- </form> -->
				</div>



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
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/email-compose.demo.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
			EmailCompose.init();
		});

	
			
		
		$("#approve").click(function() {
			alert("결재를 승인하시겠습니까?");
			
		});
		
		
		function submitDraft() {
			 var draftNo="${spending.draftNo}";
	
			

			
			$.ajax({
				
				
				type:"PATCH",
				url:"signeroneapprovesp",
				headers: {"Content-Type":"application/json","X-HTTP-Method-override":"PATCH"},
				data: JSON.stringify({"apporve":approve,"draftNo":draftNo}),
				dataType: "text",
	
					
				success: function(result) {
					if(result=="success") 
					{
						alert("결재가 승인되었습니다")
						 location.href="spendingapprove";
					}					
				},error: function(req) {
					alert("응답 에러 코드 = "+req.status);
				}
				
				});
				
		}
	
		
		
		$("#reject").click(function() {
			alert("결재를 반려하시겠습니까?");
			
		});
		
		
		function rejectDraft() {
			 var draftNo="${spending.draftNo}";
			 var signerOneApprove="${spending.signerOneApprove}";
		
		
			$.ajax({
				
				
				type:"PATCH",
				url:"spendingreject",
				headers: {"Content-Type":"application/json","X-HTTP-Method-override":"PATCH"},
				data: JSON.stringify({"apporve":approve,"draftNo":draftNo}),
				dataType: "text",

					
				success: function(result) {
					if(result=="success") 
					{
						alert("결재가 반려되었습니다.")
						 location.href="spendingapprove";
					}					
				},error: function(req) {
					alert("응답 에러 코드 = "+req.status);
				}
				
				});
				
		}
		
		
	
		
		
		
	</script>
</body>
</html>
