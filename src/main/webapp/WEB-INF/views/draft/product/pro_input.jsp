<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
									class="badge pull-right" ></span></a></li>
							
							 <li><a href="${pageContext.request.contextPath }/draft/draftapprove"><i class="fa fa-inbox fa-fw m-r-5"></i> 처리결재</a></li>
							<li class="active"><a href="${pageContext.servletContext.contextPath}/draft/shyuntest1"><i
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
					
					
					
						
								<!-- 탭시작 -->
							
							   <div class="panel-heading p-0">
                            <div class="panel-heading-btn m-r-10 m-t-10">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success"><i class="fa fa-expand"></i></a>
                            </div>
                            <!-- begin nav-tabs -->
                            <div class="tab-overflow">
                                <ul class="nav nav-tabs nav-tabs-inverse" style="text-align: center;">
                                    <li class="prev-button"><a href="javascript:;" class="text-success"><i class="fa fa-arrow-left"></i></a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/shyuntest1" style="width: 150px;" >기안서</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/spending"  style="width: 150px;" >지출결의서</a></li>
                                    <li class="active"><a href="${pageContext.servletContext.contextPath}/draft/product"style="width: 150px;" >비품구입</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/purchase"  style="width: 150px;" >구매품의서</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/conference"  style="width: 150px;" >회의록</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/absence"  style="width: 150px;" >휴직</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/resignation"  style="width: 150px;" >퇴직</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/reinstatement"  style="width: 150px;" >복직</a></li>
                              
                              		
                              		
                                
                                  
                                </ul>
                            </div>
                        </div>
                        <!-- 탭끝 -->
					
	
			
			
							

<span style="font-family: &quot;맑은 고딕&quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <style>
#approvalTable input {text-align:center}
</style> 
 
<table style="border: 0px solid rgb(0, 0, 0);border-image: none;width: 800px;font-family: malgun gothic, dotum, arial, tahoma;margin-top: 1px;border-collapse: collapse;margin-left: 300px;"><!-- Header --> 
  <colgroup> 
   <col width="310"> 
   <col width="490"> 
  </colgroup> 
  
  
  
  
	<tbody>
		<tr>
			<td style="background: white; padding: 0px !important; border: 0px currentColor; border-image: none; height: 65px; text-align: left; color: black; font-size: 28px; font-weight: bold; vertical-align: middle;" class="dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
				
비품/소모품 구입신청서
			</td>
			
		</tr>
	</tbody>
</table>
 		
<div class="ehlfk" >


<div>
<table style="
    
    width: 300px;
    height: 150px;
    margin-left: 550px;
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
"><input type="text" id="signerOne"></td>
<td style="
    border: 1px solid;
"><input type="text" id="signerTwo"></td>
<td style="
    border: 1px solid;
"><input type="text" id="signerThree"></td>

</tr>

<tr>
<td style="background: rgb(221, 221, 221) ;border: 1px solid;">승인여부</td>
<td style="
    border: 1px solid;
"></td>
<td style="
    border: 1px solid;
"></td>
<td style="
    border: 1px solid;
"></td>

</tr>

</table>
</div>
</div>

 

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
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="44"
				 data-dsl="{{label:docNo}}" data-wrapper="" style="font-family: &quot;malgun gothic&quot;
				 , dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px;
				  margin-bottom: 0px;" data-value="" data-autotype=""><span class="comp_item" 
				  style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size:
				   11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
				   
				
				   
				   
				   
				   </span><span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="44" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
				
사원번호
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
				<span unselectable="on" 
				contenteditable="false" 
				class="comp_wrap" data-cid="46"
				 data-dsl="{{label:securityLevel}}" 
				 data-wrapper="" style="font-family: 
				 &quot;malgun gothic&quot;, dotum, arial, t
				 ahoma; font-size: 11pt; line-height: normal; 
				 margin-top: 0px; margin-bottom: 0px;" data-value="
				 " data-autotype=""><span class="comp_item" style="font-family: 
				 &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; 
				 line-height: normal; margin-top: 0px; margin-bottom: 0px;">
				 
				 
				 
				 
				 </span><span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="46" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
				
작성자
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="48" data-dsl="{{label:draftDate}}"
				 data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt;
				  line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype="">
				  <span class="comp_item" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; 
				  font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
				  
				  <input type="text" id="writer">
				  
				  
				  </span><span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="48" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
			
			
	
		</tr>











 
 
<table style="border: 0px solid rgb(0, 0, 0); border-image: none; width: 800px; font-family: malgun gothic, dotum, arial, tahoma; margin-top: 10px; border-collapse: collapse;"><colgroup> 
   <col width="120"> 
   <col width="120"> 
   <col width="120"> 
   <col width="120"> 
   <col width="120"> 
   <col width="200"> 
  </colgroup> 
  
	<tbody>
		<tr>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
				
제목
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 14px; vertical-align: middle;" colspan="5">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="6" data-dsl="{{text:subject}}" data-wrapper="" style="width: 100%; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="">
				
				
				<input class="ipt_editor" type="text" id="productTitle">
				
				

				
				<span contenteditable="false" 
				class="comp_active" style="font-family: &quot;malgun gothic&quot;, dotum, arial, 
				tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px; display: none;">
				
				
				
				
				 <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
				<span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum
				, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
				</span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="6" 
				style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: 
				normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" 
				data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
		</tr>
		<tr>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: no
			ne; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vert
			ical-align: middle;" rowspan="2">
				
품명
			</td>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black;
			 border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 
			 14px; font-weight: bold; vertical-align: middle;" rowspan="2">
				
규격
			</td>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 
			1px solid black; border-image: none; height: 25px; text-align: 
			center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;" rowspan="2">
				
수량
			</td>
			<td style="background: rgb(221, 221, 221); border-width: medium 1px 1px; border-style: none solid solid; border-color: currentColor black black; padding: 5px; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;" colspan="2" class="dext_table_border_t">
				
구매예정가격
			</td>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;" rowspan="2">
				
용도
			</td>
		</tr>
		<tr>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
				
단가
			</td>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
				
금액
			</td>
		</tr>
		<tr>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="23" data-dsl="{{text}}" data-wrapper="" style="width: 100%; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="">
				
				<input class="ipt_editor" type="text" id="productName">
			
				
				<span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="23" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
			
			
			
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none;
			 height: 25px; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="22" data-dsl="{{text}}" 
				data-wrapper="" style="width: 100%; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; 
				font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="">
			
			
				<input class="ipt_editor" type="text" id="productSize">
				
				
				<span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="22" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
			
			
			
			
			<td class="productCnt" style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: right; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="17" data-dsl="{{number}}"
				 data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 
				 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="">
			
				 <input class="ipt_editor ipt_editor_num" type="text" id="productAmount">
				 
				 
				 <span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="17" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
			
			
			
			<td class="unitPrice" style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: right; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="7" data-dsl="{{currency_0}}"
				 data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt;
				  line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="">
				  
				  
				  <input class="ipt_editor ipt_editor_currency" type="text" id="productCost">
				  
				  
				  <span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="7" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
			<td class="price" style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: right; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="8" data-dsl="{{currency_0}}"
				 data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; 
				 line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="">
				 
				 <input class="ipt_editor ipt_editor_currency" type="text" id="productPrice"><span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="8" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
				<span unselectable="on" contenteditable="false" class="comp_wrap"
				 data-cid="32" data-dsl="{{text}}" data-wrapper="" style="width: 
				 100%; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; 
				 font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="">
				 
				 <input class="ipt_editor" type="text" id="productUse">
				 
				 
				 <span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="32" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
		</tr>
		
		<tr>
			<td style="background: rgb(221, 221, 221); border-width: medium 1px 1px; border-style: none solid solid; border-color: currentColor black black; padding: 5px; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;" colspan="3" class="dext_table_border_t">
				
합계
			</td>
			<td class="totalPrice dext_table_border_t" style="background: rgb(255, 255, 255); border-width: medium 1px 1px; border-style: none solid solid; border-color: currentColor black black; padding: 5px; border-image: none; height: 25px; text-align: right; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;" colspan="3">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="37" data-dsl="{{currency_0}}"
				 data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt;
				  line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="">
				  <input class="ipt_editor ipt_editor_currency" type="text" id=" purchaseAll">
				  
				  <span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="37" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span>&nbsp;VAT(별도)
			</td>
		</tr>
		<tr>
			<td style="background: rgb(221, 221, 221); border-width: medium 1px 1px; border-style: none solid solid; border-color: currentColor black black; padding: 5px; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;" colspan="6" class="dext_table_border_t">
				
지시사항
			</td>
		</tr>
		<tr>
			<td style="background: rgb(255, 255, 255); border-width: medium 1px 1px; border-style: none solid solid; border-color: currentColor black black; padding: 5px; border-image: none; height: 100px; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: top;" colspan="9" class="dext_table_border_t">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="38" data-dsl="{{textarea}}" 
				data-wrapper="" style="width: 100%; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 
				11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value=""
				
				><textarea class="txta_editor" id="productMemo" cols="130" rows="10"></textarea><span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="38" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
		</tr>
		
	</tbody>
</table>
</span>
</tbody>






</table>
</span>
<button type="button"  style="margin-left: 400px;margin-top: 10px;"class="btn btn-primary p-l-40 p-r-40" id="submit" >결재제출</button>







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
		
		
	

		//var dlehd="${pageContext.servletContext.contextPath }/drafttest";
		
	
		
		$("#submit").click(function(){
			/*보내는사람 아이디*/
			var empNo=$("session.loginUserinfo").val();

			/*내용쓰는거*/
			var writer=$("#writer").val();
			
			var productName=$("#productName").val();
			var productSize=$("#productSize").val();
			
			
			var productAmount=$("#productAmount").val();
			var productCost=$("#productCost").val();
			var productPrice=$("#productPrice").val();
			var productUse=$("#productUse").val();
			var productPriceTotal=$("#productPriceTotal").val();
			
			
			var productTitle=$("#productTitle").val();
			var productMemo=$("#productMemo").val(); 
			
			
			
			/*결재목록*/	
			var signerOne=$("#signerOne").val();
			var signerTwo=$("#signerTwo").val();
			var signerThree=$("#signerThree").val();
			
			

			
			

			if(writer=="") {
				alert("작성자를 입력해주세요")
				return;
			}
			
			if(productTitle=="") {
				alert("문서의 제목을 입력해주세요")
				return;
			}
			
			if(productMemo=="") {
				alert("문서의 지시사항을 입력해주세요")
				return;
			}
			
			
			
			if(productName=="") {
				alert("품명을 입력해주세요")
				return;
			}
			
			
			
			if(productSize=="") {
				alert("규격을 입력해주세요")
				return;
			}
			
			if(productAmount=="") {
				alert("수량을 입력해주세요")
				return;
			}
			
			
			if(productCost=="") {
				alert("단가를 입력해주세요")
				return;
			}
			
			if(productPrice=="") {
				alert("금액을 입력해주세요")
				return;
			}
			if(productUse=="") {
				alert("용도를 입력해주세요")
				return;
			}
			
			if(productPriceTotal=="") {
				alert("총합계을 입력해주세요")
				return;
			}
			
			
			
			if(signerOne=="") {
				alert("[부장]결재자의 사원번호를 입력해주세요")
				return;
			}
			
			
			
			if(signerTwo=="") {
				alert("[차장]결재자의 사원번호를 입력해주세요")
				return;
			}
		
			if(signerThree=="") {
				alert("[과장]결재자의 사원번호를 입력해주세요")
				return;
			}
		
			
			

			
			$.ajax({
				type:"POST",
				url:"product",
				data:{"signerOne":signerOne,"signerTwo":signerTwo,"signerThree":signerThree,
				"writer":writer,"productTitle":productTitle, "productMemo":productMemo,
				"productName":productName,
				"productSize":productSize,
				"productAmount":productAmount,
				"productCost":productCost,
				"productPrice":productPrice,
				"productCost":productCost,
				"productUse":productUse,
				"productPriceTotal":productPriceTotal,
				"productCost":productCost,
				"productCost":productCost
	
				},
				dateType:"text",
				success: function(text){
					if(text=="success"){
						alert("결재가 완료되었습니다 ");
						location.href="pddisplay";
						}
				}, 
				error : function(req){
					alert("응답 에러 코드 ="+req.status);
					
				}
			})	
			
			
		});
		
		

		
		
		
	</script>
</body>
</html>
