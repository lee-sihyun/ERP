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
						<a 
							class="btn btn-success p-l-40 p-r-40 btn-sm" style="background: black; border: 1px solid black;"> Draft  </a>
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
						
					
					<!-- 시작 -->
					
	
			
			
							

<span style="font-family: &quot;맑은 고딕&quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
<style>
#approvalTable input {text-align:center}
</style> 
 
<table style="border: 0px solid rgb(0, 0, 0);border-image: none;width: 800px;font-family: malgun gothic, dotum, arial, tahoma;margin-top: 1px;border-collapse: collapse;margin-left: 350px;margin-bottom: 20px;"><!-- Header --> 
  <colgroup> 
   <col width="310"> 
   <col width="490"> 
  </colgroup> 
  
  
  
  
	<tbody>
		<tr>
			<td style="background: white; padding: 0px !important; border: 0px currentColor; border-image: none; height: 65px; text-align: left; color: black; font-size: 28px; font-weight: bold; vertical-align: middle;" class="dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
휴직원
			</td>
			<td style="background: white; padding: 0px !important; border: currentColor; border-image: none; text-align: right; color: black; font-size: 12px; font-weight: normal; vertical-align: top;">
				<!-- 에디터 &nbsp; 버그. 개행과 공백을 최소화 시키자. -->
			</td>
		</tr>
	</tbody>
</table>
 		
<div class="ehlfk" >

<div>
<table style="
  
    width: 300px;
    height: 150px;
    margin-left: 500px;
    font-weight: bold;
    text-align: center;
    margin-bottom: 20px;


">
<tr style="background: rgb(221, 221, 221); background: rgb(221, 221, 221);border: 1px solid;">
<td style="
    border: 1px solid;
">직급</td>
<td style="
    border: 1px solid;
">부장</td>
<td style="
    border: 1px solid;
">차장</td>
<td style="
    border: 1px solid;
">과장</td>

</tr>

<tr>
<td style="background: rgb(221, 221, 221) ;  border: 1px solid;
" >결재자</td>
<td style="
    border: 1px solid;
">		${absence.signerOne}</td>
<td style="
    border: 1px solid;
">${absence.signerTwo}</td>
<td style="
    border: 1px solid;
">${absence.signerThree }</td>

</tr>

<tr>
<td style="background: rgb(221, 221, 221) ;border: 1px solid;">승인여부</td>
<td style="
    border: 1px solid;
">

	
 <c:if 	test="${absence.approve==4}">결재승인</c:if>

<c:if 	test="${absence.approve==0}">반려</c:if>

</td>
<td style="
    border: 1px solid;
">

			
<c:if 	test="${absence.approve==4}">결재승인</c:if>
<c:if 	test="${absence.approve==3}">결재승인</c:if>

<c:if 	test="${absence.approve==0}">반려</c:if>
																					

</td>
<td style="
    border: 1px solid;
">


		


	 <c:if 	test="${absence.approve==4}">결재승인</c:if>
 <c:if 	test="${absence.approve==3}">결재승인</c:if>
 <c:if 	test="${absence.approve==2}">결재승인</c:if>
<c:if 	test="${absence.approve==0}">반려</c:if>

</td>

</tr>


</table>
</div>
</div>

 


<span style="font-family: &quot;맑은 고딕&quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <style>
#approvalTable input {text-align:center}
</style> 
 
<table style="border: 0px solid rgb(0, 0, 0); border-image: none; width: 800px; font-family: malgun gothic, dotum, arial, tahoma; margin-top: 1px; border-collapse: collapse;"><!-- Header --> 
  <colgroup> 
   <col width="310"> 
   <col width="490"> 
  </colgroup> 
  
	
</table>
 
 
<table id="approvalTable" style="border: 0px solid rgb(0, 0, 0); border-image: none; width: 800px; font-family: malgun gothic, dotum, arial, tahoma; margin-top: 10px; border-collapse: collapse;"><colgroup> 
   <col width="120"> 
   <col width="145"> 
   <col width="120"> 
   <col width="145"> 
   <col width="120"> 
   <col width="150"> 
  </colgroup> 
  
	<tbody>
		<tr>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
				
문서번호
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
				<span unselectable="on" contenteditable="false" class="comp_
				wrap" data-cid="11" data-dsl="{{label:docNo}}" data-wrapper="" style="font-family:
				 &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal;
				  margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype="">
				  <span class="comp_item" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; 
				  font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
				  
				  
				 <!-- draftNo -->${absence.draftNo }	  
				  
				  
				  </span><span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="11" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
				
사원번호
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data
				-cid="13" data-dsl="{{label:securityLevel}}" data-wrapper="" style="font-family: &quot;malgun
				 gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; ma
				 rgin-bottom: 0px;" data-value="" data-autotype=""><span class="comp_item" style="font-family:
				  &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top:
				   0px; margin-bottom: 0px;">
				   
				   ${absence.empNo }	
				   
				   <!-- empNo -->
				   
				   </span><span contenteditable="false" class="comp_active" 
				   style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 
				   11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="13" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
				
작성자
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; 
			text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="15" data-dsl="{{label:draftDate}}" 
				data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; 
				line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype="">
				<span class="comp_item" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; 
				font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
				 ${absence.writer }	
			
				</span><span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="15" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
		</tr>

	</tbody>
</table>
 <span style="font-size: 10pt; font-family: &quot;맑은 고딕&quot;; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> </span> 
 
<table style="border: 0px solid rgb(0, 0, 0); border-image: none; width: 800px; font-family: malgun gothic,dotum,arial,tahoma; margin-top: 10px; border-collapse: collapse;"><!-- Data1 --> 
  <colgroup> 
   <col width="120"> 
   <col width="120"> 
   <col width="220"> 
   <col width="120"> 
   <col width="220"> 
  </colgroup> 
  
	<tbody>
		<tr>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
				
 휴직기간 
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;" colspan="4">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="6" data-dsl="{{period}}" data-wrapper="" \
				style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; 
				line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="">
				
				
				
				
				${absence.absenceStartDate }	~
				${absence.absenceEndDate }	
				
				
				
				
				
				
				<span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun
				 gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
				 <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size
				 : 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="f
				 ont-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-t
				 op: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot
				 ;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
				 <span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 1
				 1pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> 
				 <span contenteditable="false" class="comp_hover" data-content-protect-cover="true"
				  data-origin="6" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma;
				   font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
				   <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" 
				   data-component-delete-button="true"></a> </span> </span>&nbsp; <span unselectable="on" contenteditable="false" 
				   class="comp_wrap" data-cid="7" data-dsl="{{currency_0}}" data-wrapper="" style="font-family: &quot;malgun gothic&quot;, 
				   dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="">
				   
				  <span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="7" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 70px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
				
 휴직사유 
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: top;" colspan="4">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="8" 
				data-dsl="{{textarea}}" data-wrapper="" style="width: 100%; font-family: &quot;malgun 
				gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 
				0px; margin-bottom: 0px;" data-value="">
				
				
				
				
				${absence.absenceReason}
				
				<span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="8" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
		</tr>
		<tr>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
				
&nbsp;기타사항 
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;" colspan="4">
				<span style="font-family: &quot;malgun gothic&quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">-개인질병으로 인한 휴직의 경우에는 해당기간은 무급으로 처리됩니다.</span><br> <span style="font-family: &quot;malgun gothic&quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">-휴직지속여부에 대해 의사의 진단서를 첨부하여 확인합니다.</span> 
			</td>
		</tr>

	</tbody>
</table>
 <br><span style="font-family: &quot;malgun gothic&quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <br> </span>
<p style="font-family: &quot;맑은 고딕&quot;; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;"><br></p>










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
		
		
	

	
	
	
		
		

		
		
		
	</script>
</body>
</html>
