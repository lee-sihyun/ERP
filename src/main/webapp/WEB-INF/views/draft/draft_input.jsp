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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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
							<!-- 탭시작 -->
							
							   <div class="panel-heading p-0">
                            <div class="panel-heading-btn m-r-10 m-t-10">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success"><i class="fa fa-expand"></i></a>
                            </div>
                            <!-- begin nav-tabs -->
                            <div class="tab-overflow">
                                <ul class="nav nav-tabs nav-tabs-inverse" style="text-align: center;">
                                    <li class="prev-button"><a href="javascript:;" class="text-success"><i class="fa fa-arrow-left"></i></a></li>
                                    <li class="active"><a href="${pageContext.servletContext.contextPath}/draft/shyuntest1" style="width: 150px;" >기안서</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/spending"  style="width: 150px;" >지출결의서</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/product"style="width: 150px;" >비품구입</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/purchase"  style="width: 150px;" >구매품의서</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/conference"  style="width: 150px;" >회의록</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/absence"  style="width: 150px;" >휴직</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/resignation"  style="width: 150px;" >퇴직</a></li>
                                    <li class=""><a href="${pageContext.servletContext.contextPath}/draft/reinstatement"  style="width: 150px;" >복직</a></li>
                              
                              		
                              		
                                
                                  
                                </ul>
                            </div>
                        </div>
                        <!-- 탭끝 -->
							
							
							
							
							

								<table
									style="border: 0px solid rgb(0, 0, 0); width: 800px; font-family: malgun gothic, dotum, arial, tahoma; margin-top: 1px; border-collapse: collapse;">
									<!-- Header -->
									<colgroup>
										<col width="310">
										<col width="490">
									</colgroup>

									<tbody>
										<tr>
											<td
												style="background: rgb(255, 255, 255); padding: 0px !important; border: 0px currentColor; border-image: none; height: 70px; text-align: center; color: black; font-size: 36px; font-weight: bold; vertical-align: top;"
												colspan="2"
												class="dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">

												기&nbsp;&nbsp;안&nbsp;&nbsp;용&nbsp;&nbsp;지</td>
										</tr>
										<tr>
											<td
												style="background: white; padding: 0px !important; border: currentColor; text-align: left; color: black; font-size: 12px; font-weight: normal; vertical-align: top;">

												<table
													style="border: 1px solid rgb(0, 0, 0); font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; margin-top: 1px; border-collapse: collapse; width: 318px;">
													<!-- User -->
													<colgroup>
														<col width="90">
														<col width="120">
													</colgroup>

													<tbody>
														<tr>
															<td
																style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																문서번호</td>
															<td
																style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
																<span unselectable="on" contenteditable="false"
																class="comp_wrap" data-cid="0"
																data-dsl="{{label:docNo}}" data-wrapper=""
																style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
																data-value="" data-autotype=""> <span
																	class="comp_item"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																</span><span contenteditable="false" class="comp_active"
																	style="display: none; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<span class="Active_dot1"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot2"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																		<span class="Active_dot3"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot4"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																</span> <span contenteditable="false" class="comp_hover"
																	data-content-protect-cover="true" data-origin="0"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<a contenteditable="false"
																		class="ic_prototype ic_prototype_trash"
																		data-content-protect-cover="true"
																		data-component-delete-button="true"></a>
																</span>
															</span><br>



															</td>
														</tr>
														<tr style="height: 32px;">

														
														<tr>
															<td
																style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																기&nbsp;안&nbsp;일</td>
															<td
																style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
																<span unselectable="on" contenteditable="false"
																class="comp_wrap" data-cid="2"
																data-dsl="{{label:draftDate}}" data-wrapper=""
																style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
																data-value="" data-autotype=""><span
																	class="comp_item"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		</span><span contenteditable="false"
																	class="comp_active"
																	style="display: none; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<span class="Active_dot1"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot2"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																		<span class="Active_dot3"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot4"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																</span> <span contenteditable="false" class="comp_hover"
																	data-content-protect-cover="true" data-origin="2"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<a contenteditable="false"
																		class="ic_prototype ic_prototype_trash"
																		data-content-protect-cover="true"
																		data-component-delete-button="true"></a>
																</span> </span><br>
															</td>
														</tr>
														
														
															<tr>



															<td
																style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																사원번호</td>
															<td
																style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
																<span unselectable="on" contenteditable="false"
																class="comp_wrap" data-cid="3"
																data-dsl="{{label:draftUser}}" data-wrapper=""
																style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
																data-value="" data-autotype=""><span
																	class="comp_item"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																	
																	
												<!-- <input type="text" name="empNo" > -->	 
															
																	
																	</span><span
																	contenteditable="false" class="comp_active"
																	style="display: none; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<span class="Active_dot1"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot2"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																		<span class="Active_dot3"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot4"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																</span> <span contenteditable="false" class="comp_hover"
																	data-content-protect-cover="true" data-origin="3"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<a contenteditable="false"
																		class="ic_prototype ic_prototype_trash"
																		data-content-protect-cover="true"
																		data-component-delete-button="true"></a>
																</span> </span><br>
															</td>
														</tr>
												
														
														<tr>



															<td
																style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																기 안 자</td>
															<td
																style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
																<span unselectable="on" contenteditable="false"
																class="comp_wrap" data-cid="3"
																data-dsl="{{label:draftUser}}" data-wrapper=""
																style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
																data-value="" data-autotype=""><span
																	class="comp_item"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																	
																	
																 <input type="text" id="writer">
													
																	
																	</span><span
																	contenteditable="false" class="comp_active"
																	style="display: none; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<span class="Active_dot1"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot2"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																		<span class="Active_dot3"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot4"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																</span> <span contenteditable="false" class="comp_hover"
																	data-content-protect-cover="true" data-origin="3"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<a contenteditable="false"
																		class="ic_prototype ic_prototype_trash"
																		data-content-protect-cover="true"
																		data-component-delete-button="true"></a>
																</span> </span><br>
															</td>
														</tr>
												
													</tbody>
												</table>

											</td>
											<!--   -->
											<td
												style=" vertical-align: top;padding-left: 220px;">


												[결재선]

												
												
												
												<!-- 테스트  -->
												
												
												
												
												<table
													style="background: white; padding: 0px !important; border: currentColor; text-align: right; color: black; font-size: 12px; font-weight: normal;">
													<!-- User -->
													<!--  <colgroup>
														<col width="90">
														<col width="120">
													</colgroup>-->

													<tbody>
														<tr>
															<td
																style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
																

																직급</td>
																
																<td style="background:
																 rgb(221, 221, 221); 
																 padding: 5px; border: 
																 1px solid black; 
																 height: 18px; 
																 text-align: center; 
																 color: rgb(0, 0, 0); 
																 font-size: 12px; 
																 font-weight: bold; vertical-align: middle;">
																 
																 부장
																 
																 </td>
																 
																 	
																<td style="background:
																 rgb(221, 221, 221); 
																 padding: 5px; border: 
																 1px solid black; 
																 height: 18px; 
																 text-align: center; 
																 color: rgb(0, 0, 0); 
																 font-size: 12px; 
																 font-weight: bold; vertical-align: middle;">
																 
																 차장
																 
																 </td>
																 
																 
																 	
																<td style="background:
																 rgb(221, 221, 221); 
																 padding: 5px; border: 
																 1px solid black; 
																 height: 18px; 
																 text-align: center; 
																 color: rgb(0, 0, 0); 
																 font-size: 12px; 
																 font-weight: bold; vertical-align: middle;">
																 
																 과장
																 
																 </td>
																 
												
														</tr>
												
														<tr>
															<td
																style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

															결재자</td>
															<!--  --><td
																style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
																<span unselectable="on" contenteditable="false"
																class="comp_wrap" data-cid="2"
																data-dsl="{{label:draftDate}}" data-wrapper=""
																style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
																data-value="" data-autotype=""><span
																	class="comp_item"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		
																 <input type="text" id="signerOne" >
																		
																		
																		
																		</span><span contenteditable="false"
																	class="comp_active"
																	style="display: none; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<span class="Active_dot1"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot2"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																		<span class="Active_dot3"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot4"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																</span> <span contenteditable="false" class="comp_hover"
																	data-content-protect-cover="true" data-origin="2"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<a contenteditable="false"
																		class="ic_prototype ic_prototype_trash"
																		data-content-protect-cover="true"
																		data-component-delete-button="true"></a>
																</span> </span><br>
															</td>
															
															
															<td
																style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
																<span unselectable="on" contenteditable="false"
																class="comp_wrap" data-cid="2"
																data-dsl="{{label:draftDate}}" data-wrapper=""
																style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
																data-value="" data-autotype=""><span
																	class="comp_item"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		
																		<input type="text" id="signerTwo" >
																	
																		
																		
																		</span><span contenteditable="false"
																	class="comp_active"
																	style="display: none; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<span class="Active_dot1"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot2"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																		<span class="Active_dot3"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot4"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																</span> <span contenteditable="false" class="comp_hover"
																	data-content-protect-cover="true" data-origin="2"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<a contenteditable="false"
																		class="ic_prototype ic_prototype_trash"
																		data-content-protect-cover="true"
																		data-component-delete-button="true"></a>
																</span> </span><br>
															</td>
															
														 <td
																style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
																<span unselectable="on" contenteditable="false"
																class="comp_wrap" data-cid="2"
																data-dsl="{{label:draftDate}}" data-wrapper=""
																style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
																data-value="" data-autotype=""><span
																	class="comp_item"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		
																		
																		
																	 <input type="text" id="signerThree" >
																		
															 
																		
																		</span><span contenteditable="false"
																	class="comp_active"
																	style="display: none; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<span class="Active_dot1"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot2"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																		<span class="Active_dot3"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot4"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																</span> <span contenteditable="false" class="comp_hover"
																	data-content-protect-cover="true" data-origin="2"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<a contenteditable="false"
																		class="ic_prototype ic_prototype_trash"
																		data-content-protect-cover="true"
																		data-component-delete-button="true"></a>
																</span> </span><br>
															</td>
														
															
																
														
															
															
														</tr>
														
														
														
															<tr>
															<td
																style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

															승인여부 </td>
															<!--  --><td
																style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
																<span unselectable="on" contenteditable="false"
																class="comp_wrap" data-cid="2"
																data-dsl="{{label:draftDate}}" data-wrapper=""
																style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
																data-value="" data-autotype=""><span
																	class="comp_item"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		
																	
																		
																		
																		</span><span contenteditable="false"
																	class="comp_active"
																	style="display: none; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<span class="Active_dot1"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot2"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																		<span class="Active_dot3"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot4"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																</span> <span contenteditable="false" class="comp_hover"
																	data-content-protect-cover="true" data-origin="2"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<a contenteditable="false"
																		class="ic_prototype ic_prototype_trash"
																		data-content-protect-cover="true"
																		data-component-delete-button="true"></a>
																</span> </span><br>
															</td>
															
															
															<td
																style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
																<span unselectable="on" contenteditable="false"
																class="comp_wrap" data-cid="2"
																data-dsl="{{label:draftDate}}" data-wrapper=""
																style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
																data-value="" data-autotype=""><span
																	class="comp_item"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		
																	
																		
																		
																		</span><span contenteditable="false"
																	class="comp_active"
																	style="display: none; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<span class="Active_dot1"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot2"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																		<span class="Active_dot3"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot4"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																</span> <span contenteditable="false" class="comp_hover"
																	data-content-protect-cover="true" data-origin="2"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<a contenteditable="false"
																		class="ic_prototype ic_prototype_trash"
																		data-content-protect-cover="true"
																		data-component-delete-button="true"></a>
																</span> </span><br>
															</td>
															
															
															<td
																style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
																<span unselectable="on" contenteditable="false"
																class="comp_wrap" data-cid="2"
																data-dsl="{{label:draftDate}}" data-wrapper=""
																style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
																data-value="" data-autotype=""><span
																	class="comp_item"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		
																		
																		
																
																		
																		
																		
																		</span><span contenteditable="false"
																	class="comp_active"
																	style="display: none; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<span class="Active_dot1"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot2"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																		<span class="Active_dot3"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
																		class="Active_dot4"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
																</span> <span contenteditable="false" class="comp_hover"
																	data-content-protect-cover="true" data-origin="2"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
																		<a contenteditable="false"
																		class="ic_prototype ic_prototype_trash"
																		data-content-protect-cover="true"
																		data-component-delete-button="true"></a>
																</span> </span><br>
															</td>
															
															
															
														</tr>
														
														
														
													</tbody>
												</table>
												
												
												
												
												
												
												
												
												
												
												
												
												
												
												
												
												


													


											</td>



										



										</tr>






									</tbody>
								</table>


								<table
									style="border: 2px solid; width: 800px; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; margin-top: 10px; border-collapse: collapse; height: 385px;">
									<colgroup>
										<col width="140">
										<col width="660">
									</colgroup>

									<tbody>
							
											<tr>
											<td
												style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

												제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</td>
											<td
												style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; height: 18px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
												<!--  --> <span unselectable="on" contenteditable="false"
												class="comp_wrap" data-cid="7" data-dsl="{{text:subject}}"
												data-wrapper=""
												style="width: 100%; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
												data-value="" data-autotype=""> 
												
												
												<input
													class="ipt_editor" type="text" id="draftTitle"
											>
													
													
													
													
													
													 <span
													contenteditable="false" class="comp_active"
													style="display: none; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
														<span class="Active_dot1"
														style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
														<span class="Active_dot2"
														style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
													</span> <span class="Active_dot3"
														style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
														<span class="Active_dot4"
														style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
												</span> <span contenteditable="false" class="comp_hover"
													data-content-protect-cover="true" data-origin="7"
													style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
														<a contenteditable="false"
														class="ic_prototype ic_prototype_trash"
														data-content-protect-cover="true"
														data-component-delete-button="true"></a>
												</span>
											</span><br>

											</td>
										</tr>
										<tr>
											<td
												style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;"
												colspan="2">상&nbsp;&nbsp;세&nbsp;&nbsp;내&nbsp;&nbsp;용</td>
										</tr>
										<tr>
											<td
												style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; height: 18px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;"
												colspan="2"><span unselectable="on"
												contenteditable="false" class="comp_wrap" data-cid="8"
												data-dsl="{{editor}}" data-wrapper=""
												style="width: 100%; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"
												data-value="" data-autotype=""><span
													class="comp_editor"
													style="width: 100%; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 11pt; line-height: 200px; margin-top: 0px; margin-bottom: 0px;">
														
															<textarea rows="1" cols="100"id="draftContent"  placeholder="내용을 입력해주세요"></textarea>
																														
														
													
														
											




												</span><span contenteditable="false" class="comp_active"
													style="display: none; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
														<span class="Active_dot1"
														style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
														class="Active_dot2"
														style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
														<span class="Active_dot3"
														style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span
														class="Active_dot4"
														style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
												</span> <span contenteditable="false" class="comp_hover"
													data-content-protect-cover="true" data-origin="8"
													style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
														<a contenteditable="false"
														class="ic_prototype ic_prototype_trash"
														data-content-protect-cover="true"
														data-component-delete-button="true"></a>
												</span> </span><br></td>
										</tr>
									</tbody>

								</table>


<div style=" margin-left: 350px; margin-top: 10px;">
	<button type="button" 
class="btn btn-primary p-l-40 p-r-40" id="submit" >결재제출</button>
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
		
		
	

		//var dlehd="${pageContext.servletContext.contextPath }/drafttest";
		
	
		
		$("#submit").click(function(){
			/*보내는사람 아이디*/
			var empNo=$("session.loginUserinfo").val();

			/*내용쓰는거*/
			var writer=$("#writer").val();
			var draftTitle=$("#draftTitle").val();
			var draftContent=$("#draftContent").val(); 
			
			/*결재목록*/	
			var signerOne=$("#signerOne").val();
			var signerTwo=$("#signerTwo").val();
			var signerThree=$("#signerThree").val();
			
			

			if(writer=="") {
				alert("작성자를 입력해주세요")
				return;
			}
			
			if(draftTitle=="") {
				alert("문서의 제목을 입력해주세요")
				return;
			}
			
			if(draftContent=="") {
				alert("문서의 내용을 입력해주세요")
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
				url:"shyuntest1",
				data:{"signerOne":signerOne,"signerTwo":signerTwo,"signerThree":signerThree,
				"writer":writer,"draftTitle":draftTitle, "draftContent":draftContent},
				dateType:"text",
				success: function(text){
					if(text=="success"){
						swal('등록완료','success')
						location.href="display";
						}
				}, 
				error : function(req){
					alert("응답 에러 코드 ="+req.status);
					
				}
			})	
			
			
		});
		
		
	
		/*
		
		function submitDraft() {
			draftForm.method = "POST";
			draftForm.action = "${pageContext.servletContext.contextPath}/drafttest";
			draftForm.submit();
		}
	*/
		
		
		
	</script>
</body>
</html>
