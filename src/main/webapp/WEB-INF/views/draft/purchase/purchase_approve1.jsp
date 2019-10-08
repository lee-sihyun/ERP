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
							style="overflow: hidden;width: auto;height: 100%;border: 1px solid;">
						
					
					<!-- 시작 -->
					<div id="titleSection" style="malgun gothic, dotum, arial, tahoma;font-size: 19pt;line-height: normal;margin-top: 0px;margin-bottom: 50px;margin-left: 350px;font-weight: bold;">구 매 신 청 서</div>
					<div class="ehlfk" >


<div>
<table style="
    
    width: 300px;
    height: 150px;
    margin-left: 500px;
    font-weight: bold;
    text-align: center;


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
">${purchase.signerOne}</td>
<td style="
    border: 1px solid;
">${purchase.signerTwo}</td>
<td style="
    border: 1px solid;
">${purchase.signerThree}</td>

</tr>

<tr>
<td style="background: rgb(221, 221, 221) ;border: 1px solid;">승인여부</td>
<td style="
    border: 1px solid;
">
	
 <c:if 	test="${purchase.approve==4}">결재승인</c:if>

<c:if 	test="${purchase.approve==0}">반려</c:if>




</td>
<td style="
    border: 1px solid;
">

	
<c:if 	test="${purchase.approve==4}">결재승인</c:if>
<c:if 	test="${purchase.approve==3}">결재승인</c:if>
<c:if 	test="${purchase.approve==0}">반려</c:if>
													



</td>
<td style="
    border: 1px solid;
">
	 <c:if 	test="${purchase.approve==4}">결재승인</c:if>
 <c:if 	test="${purchase.approve==3}">결재승인</c:if>
 <c:if 	test="${purchase.approve==2}">결재승인</c:if>
<c:if 	test="${purchase.approve==0}">반려</c:if>



</td>

</tr>

</table>
</div>
</div>
					
					

<div id="divCustomWrapper" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; 
font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; border: 1px solid;">  <!-- Embededd Style이 적용받는 범위 입니다. 상단의 스타일은 이 요소 안에서만 동작합니다. --> 
<!-- 1. Title Section (start) : 문서제목이 작성되는 영역입니다.-->
<!-- 1. Title Section (end) --><!-- 2. Draft Section (Start) : 결재정보가 작성되는 영역입니다. -->
<div class="partition" id="draftSection" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><!-- 2.1 Drafter Information (Start) -->
<div class="left" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
<table style="width:250px;height: 120px;margin-bottom: 10px;"><colgroup><col width="80"><col width="170"></colgroup>
	<tbody>
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
문서번호
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="0" data-dsl="{{label:draftUser}}" 
				data-wrapper="" style="" data-value="" data-autotype=""><span class="comp_item">

		${purchase.draftNo }

	</span><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="0"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
사원번호
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="1" data-dsl="{{label:draftDept}}" 
				data-wrapper="" style="" data-value="" data-autotype=""><span class="comp_item">
					${purchase.empNo}
				
				
				</span><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="1"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
기 안 일
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="2" data-dsl="{{label:draftDate}}"
				 data-wrapper="" style="" data-value="" data-autotype=""><span class="comp_item">
					${purchase.writeDate }
				 
				 
				 </span><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="2"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
납품요청기한
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="3" data-dsl="{{label:docNo}}"
				 data-wrapper="" style="" data-value="" data-autotype=""><span class="comp_item">
		
				 		${purchase.purchaseLimit }
				 
				 
				 </span><span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="3"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>
			</td>
		</tr>
	</tbody>
</table>
</div><!-- 2.1 Drafter Information (end) --><!-- 2.2 Draft Line (start) -->
<div class="inaRowRight" style="width: 800px; font-family: &quot;malgun gothic&quot;, 
dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
<!-- 결재선 1 Start-->







<table id="dynamic_table" class="detailSection"><colgroup><!-- ### 테이블의 컬럼 너비는 colGroup을 통해 지정합니다. td에 지정 X ### -->
<col width="200"><col width="80"><col width="60"><col width="100"><col width="100"><col width="260"></colgroup>
 
	<tbody>
<!--기본 행 추가/삭제 + 자동 연산-->
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
구매 요청 부서  
			</td>
			<td colspan="3" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: 1
				8px; margin-top: 0px; margin-bottom: 0px;"><span unselectable="on" contenteditable="false" class="comp_wrap"
				 data-cid="4" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype="">
				 
			
				 	${purchase.deptRequest }
				 
				 <span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="4"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br></p>
			</td>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
작 성 자
			</td>
			<td colspan="1" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; 
				font-size: 9pt; line-height: 18px; margin-top: 0px; margin-bottom: 0px;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="5" data-dsl="{{t
				ext}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype="">
				
				
					 	${purchase.writer }
				
				
				<span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="5"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br></p>
			</td>
		</tr>
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
제 목
			</td>
			<td colspan="5" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; fon
				t-size: 9pt; line-height: 18px; margin-top: 0px; margin-bottom: 0px;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-c
				id="6" data-dsl="{{text:subject}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype="">
				
				

				
					${purchase.purchaseTitle }
				
				<span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="6"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br></p>
			</td>
		</tr>
		<tr>
			<td colspan="6" style="border:none !important;" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: 18px; margin-top: 0px; margin-bottom: 0px;"><br></p>
			</td>
		</tr>
	
		<tr>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
품 명
			</td>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
규 격
			</td>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
수 량
			</td>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
단 가
			</td>
			<td class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l" style="">
				
금 액
			</td>
			<td colspan="1" class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
대금지불방법
			</td>
		</tr>
		<tr class="copyRow">
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: 
				18px; margin-top: 0px; margin-bottom: 0px;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="7" data-dsl="{{text}}" data-wrapper="" style=
				"width: 100%;" data-value="" data-autotype="">
				
					${purchase.purchaseItem }
			
				
				
				<span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="7"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br></p>
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: 
				18px; margin-top: 0px; margin-bottom: 0px;"><span unselectable="on" contenteditable="false"
				 class="comp_wrap" data-cid="8" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" 
				 data-value="" data-autotype="">

				 	${purchase.purchaseSize }
				 
				 <span contenteditable="false" class="comp_active" style="display: none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="8"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br></p>
			</td>
			<td class="detailColumn amount rightCol dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l" style="">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: 18px; margin-top: 0px; 
				margin-bottom: 0px;"><span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="9" 
				data-dsl="{{currency_0$width:49$}}" data-wrapper="" style="width: 49px;" data-value="" data-autotype="">
				
			
			${purchase.purchaseVolume }
				
				<span contenteditable="false" class="comp_active" "="" style="display: none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="9"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br></p>
			</td>
			<td class="detailColumn price rightCol dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l" style="">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: 18px; margin-top: 0px
				; margin-bottom: 0px; text-align: right;"><span unselectable="on" 
				contenteditable="false" class="comp_wrap" data-cid="10" data-dsl="{{currency_0$width:89$}}" data-wrapper="" 
				style="width: 89px;" data-value="" data-autotype="">
				
				
				${purchase.purchaseCost }
				<span contenteditable="false" class="comp_active" "="" style="display: none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="10"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br></p>
			</td>
			
			
				<td class="detailColumn price rightCol dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l" style="">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: 18px; margin-top: 0px
				; margin-bottom: 0px; text-align: right;"><span unselectable="on" 
				contenteditable="false" class="comp_wrap" data-cid="10" data-dsl="{{currency_0$width:89$}}" data-wrapper="" 
				style="width: 89px;" data-value="" data-autotype="">
				
			
					${purchase.purchasePrice }
				<span contenteditable="false" class="comp_active" "="" style="display: none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="10"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br></p>
			</td>
			
			
			<td colspan="1" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size
				9pt; line-height: 18px; margin-top: 0px; margin-bottom: 0px;"><span unselectable="on" contenteditable=
 					"false" class="comp_wrap" data-cid="11" data-dsl="{{text}}" data-wrapper="" style="width: 100%;" data-value=""
  				data-autotype="">
  				
  				
  				
  							${purchase.payMethod }
  				
  						<span contenteditable="false" class="comp_active" style="display:none;"> 
  						<span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3">
  						</span><span class="Active_dot4"></span> </span> 
  						<span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="11"> 
  						<a contenteditable="false" class="ic_prototype ic_prototype_trash" 
  						data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br></p>
			</td>
		</tr>
		
			<tr>
			<td colspan="5" style="text-align:center; font-weight:bold !important;" class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
합 계
			</td>
			<td class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
					
						 	${purchase.purchaseAll}
			</td>
			
		</tr>
			
	
		<tr>
			<td style="text-align:center; font-weight:bold !important;" class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
특이사항
			</td>
			<td colspan="5" class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				<p style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: 18px;
				 margin-top: 0px; margin-bottom: 0px;">
				 <span unselectable="on" contenteditable="false" class="comp_wrap" 
				 data-cid="12" data-dsl="{{textarea}}" data-wrapper="" style="width: 100%;" data-value="" data-autotype="">
			
			
			
			
				 
				 ${purchase.purchaseMemo}
				 
				 
				 
				 <span contenteditable="false" class="comp_active" style="display:none;"> <span class="Active_dot1"></span><span class="Active_dot2"></span> <span class="Active_dot3"></span><span class="Active_dot4"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="12"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br></p>
			</td>
		</tr><!-- 합계 행 End-->
	</tbody><!-- 3. Detail Section (end) --><!-- Page Wrapping (end) --><!--Style Start----------------------------------------><!-- Common style (Don't modify) --><style type="text/css">
/* 1. Essential style : 반드시 적용되어야 하는 스타일입니다. 문서작성 시, Sample에서 제거불가 한 스타일 */
#divCustomWrapper { word-break: break-all;  font-family: malgun gothic, dotum, arial, tahoma; font-size: 9pt; width:800px !important; }
#divCustomWrapper * { max-width: 800px !important; }
/* (1) Section(제목, 결재선, 내용) */
#divCustomWrapper #titleSection,
#divCustomWrapper #draftSection,
#divCustomWrapper .detailSection { width:800px !important; clear:both; margin-top: 20px !important; vertical-align: middle; }
#divCustomWrapper #titleSection { text-align: center; font-size: 25px; font-weight: bold; margin-bottom: 30px !important; margin-top: 20px !important; }
#divCustomWrapper #draftSection { display: inline-block; }
#divCustomWrapper .detailSection > * { margin-bottom: 10px; }
/* (2) Table */
#divCustomWrapper table { border-collapse: collapse; word-break:break-all; }
</style><style type="text/css">
/* 2. Option style : 용도에 따라 적용합니다.*/
/* (1) Table option : 2Type(subject / detail), Affacted elements(td), Range('divCustomWrapper' 하단요소) */
#divCustomWrapper td.subjectColumn { border: 1px solid black !important; font-size: 9pt !important; height:22px; padding: 3px 1px 3px 1px;/*top right bottom left*/}
#divCustomWrapper td.detailColumn { border: 1px solid black !important; font-size: 9pt !important; height:22px; padding: 3px 5px 3px 5px; vertical-align: middle;/*top right bottom left*/ }
#divCustomWrapper td.detailColumn { text-align: left; }
#divCustomWrapper td.subjectColumn { background: rgb(221, 221, 221); font-weight: bold; text-align: center; vertical-align: middle; }
/* (2) detailColumn :  3Type(center / right / high), Affacted elements(All), Range('detailColumn' 하단요소) */
/* 설명 : detailColumn 커스텀 시 사용 */
/* 사용방법 : 번호와 중앙정렬 텍스트 작성 시 'centerCol' CLASS 적용, 숫자와 금액 작성 시 'rightCol' CLASS 적용,
   editor 작성 시 'editorCol' CLASS 적용, textarea 작성 시 'areaCol' CLASS 적용 */
#divCustomWrapper td.detailColumn.centerCol { text-align: center; }
#divCustomWrapper td.detailColumn.rightCol { text-align: right; }
#divCustomWrapper td.detailColumn.editorCol { height: 300px; vertical-align: top;}
#divCustomWrapper td.detailColumn.areaCol { height: 120px; vertical-align: top; }
/* (3) Partition option : 2Type (left / right), Affacted elements(div), Range('partition'div영역 하단요소) */
/* 설명 : 좌,우로 분할되는 레이아웃 작성시 사용, 1라인에 1개 요소만 배치(줄바뀜 동반) */
/* 사용방법 : 분할할 영역에 partition CLASS를 적용 -> 분할배치하고자하는 하위요소에 'left, right' CLASS 적용 */
#divCustomWrapper div.partition .left { display: inline-block; clear: left; float: left; }
#divCustomWrapper div.partition .right { display: inline-block; clear: right; float: right; }
/* (4) In a row option : 2Type(left / right), Affacted elements(All), Range('inaRowRight or inRowLeft'div영역 하단요소) */
/* 설명 : 좌,우 끝에 정렬되는 레이아웃 작성 시 사용, 1라인에 여러개 요소 배치, Partition option과 조합(줄바뀜 없이 배치) */
/* 사용방법 : 나란히 정렬하고자 하는 요소들을, 'in a row'div 영역 내에 배치 */
#divCustomWrapper div.inaRowRight { text-align: right; }
#divCustomWrapper div.inaRowLeft { text-align: left; }
/* (5) button :  2Type(td / div), Affacted elements(All) */
/* 설명 : 행 추가, 행 삭제 버튼 작성 시 'viewModeHiddenPart'(기안 시 버튼 가려주는 클래스)와 조합해서 사용 */
/* 사용방법 : 테이블에 한줄로 사용 시 td에 'viewModeHiddenPart .td_button' CLASS 적용 -> 각 버튼에 'button' CLASS 적용 td 내 텍스트 아래에 쓰이거나 테이블 밖에서 사용 시 div에 viewModeHiddenPart .div_button CLASS 적용 -> 각 버튼에 button CLASS 적용 */
#divCustomWrapper .td_button { word-break:break-all; padding: 3px; border: none; width: 800px; height: 22px; text-align: right; vertical-align: middle; }
#divCustomWrapper .div_button { word-break:break-all; padding: 3px; border: none; margin-top:2px; margin-bottom:2px; height: 22px; vertical-align: middle;}
#divCustomWrapper a.button { background: rgb(102, 102, 102); color: rgb(255, 255, 255); padding: 2px 5px; border-radius: 3px; margin-right: 0px; margin-left: 0px; font-size: 9pt !important; }
/* (6) p :  2Type(titleP / freeP), Affacted elements(All) */
/* 설명 : 테이블 별 소제목과 테이블 아래 설명 작성 시 사용*/
p.titleP{font-weight: bold; font-size: 12px; margin: 15px 1px 5px 5px;/*top right bottom left*/}
p.freeP{font-weight: normal; font-size: 12px; margin: 1px 1px 3px 5px;/*top right bottom left*/}
</style><!-- Common style (Don't modify) --><!-- Print style (Don't modify) --><style type="text/css">
/* 인쇄시에만 적용되는 스타일입니다. 순서대로 1.양식 인쇄 시 중앙으로 위치 2.테이블 테두리 고정 3.버튼 가리기 */
@media print {
.viewModeHiddenPart {display: none;}
h1, h2, h3, h4, h5, dl, dt, dd, ul, li, ol, th, td, p, blockquote, form, fieldset, legend, div,body { -webkit-print-color-adjust:exact; }}
</style><!-- Print style (Don't modify)--><style><!-- Custom style -->
/* 추가적인 스타일이 필요한 경우, 하단의 style에서 정의하여야 합니다. 상단의 Common style은 변경하지 않습니다. */
/* (스타일이 중복되는 경우, 기본적으로 하단에 작성한 style이 우선적으로 적용됩니다.) */
</style><!-- Custom style -->
</table>
</div>






					</div>
					<!-- </form> -->
				</div>
<div style="
    margin-left: 250px;
    margin-top: 20px;
"
>

											<button type="button" id="approve"onclick="submitDraft();"
											
											
												class="btn btn-primary p-l-40 p-r-40">결재승인</button>
												
											<button type="button"  id="reject" onclick="rejectDraft();"
											
												class="btn btn-primary p-l-40 p-r-40">결재반려</button>
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
			 var draftNo="${purchase.draftNo}";
	
			

			
			$.ajax({
				
				
				type:"PATCH",
				url:"signeroneapprovepr",
				headers: {"Content-Type":"application/json","X-HTTP-Method-override":"PATCH"},
				data: JSON.stringify({"apporve":approve,"draftNo":draftNo}),
				dataType: "text",
	
					
				success: function(result) {
					if(result=="success") 
					{
						alert("결재가 승인되었습니다")
						 location.href="purchaseapprove";
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
			 var draftNo="${purchase.draftNo}";
		
		
		
			$.ajax({
				
				
				type:"PATCH",
				url:"purchasereject",
				headers: {"Content-Type":"application/json","X-HTTP-Method-override":"PATCH"},
				data: JSON.stringify({"apporve":approve,"draftNo":draftNo}),
				dataType: "text",

					
				success: function(result) {
					if(result=="success") 
					{
						alert("결재가 반려되었습니다.")
						 location.href="purchaseapprove";
					}					
				},error: function(req) {
					alert("응답 에러 코드 = "+req.status);
				}
				
				});
				
		}
	

		
		

		
		
		
	</script>
</body>
</html>
