<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<!-- begin #sidebar -->
		<div id="sidebar" class="sidebar">
			<!-- begin sidebar scrollbar -->
			<div data-scrollbar="true" data-height="100%">
				<!-- begin sidebar user : 로그인 사원의 프로필 - 사원명, 직책 -->
				<ul class="nav">
					<li class="nav-profile">
						<!-- 사원 프로필 사진 -->
						<div class="image">
							<a href="javascript:;">
								<img src="${pageContext.servletContext.contextPath }/assets/img/${deptname }.jpg" alt="" />
							</a>
						</div>
						<!-- 사원이름 -->
						<div class="info">
							${loginUserinfo.empName }
							<!-- 사원 해당 직책 -->
							<small>${loginUserinfo.empPosition }</small>
						</div>
					</li>
				</ul>
				<!-- end sidebar user -->
				
				<!-- 사이드바 시작 -->
				<!-- begin sidebar nav -->
				<ul class="nav">
					<!-- <li class="nav-header">Navigation</li> -->
					<li style="background: #00ACAC" class="has-sub">
						<a style="color:#FFFFFF" href="${pageContext.servletContext.contextPath}/recvMessageBox">
						    <i class="fa fa-envelope"></i>
						    <span>쪽지</span>
					    </a>
					</li>
					<li style="background: #00ACAC" class="has-sub">
						<a style="color:#FFFFFF" href="${pageContext.servletContext.contextPath}/board">
							<i class="fa fa-bullhorn"></i> 
							<span>게시판</span>
						</a>
					</li>
					<li style="background: #00ACAC" class="has-sub">
						<a style="color:#FFFFFF" href="javascript:;">
						    <i class="fa fa-user"></i>
						    <span>주소록</span> 
						 </a>
						<ul class="sub-menu">
						    <li class="active"><a href="${pageContext.servletContext.contextPath}/address/outaddress">외부 주소록</a></li>
						    <li><a href="${pageContext.servletContext.contextPath}/address/inaddress">내부주소록</a></li>
						</ul>
					</li>
					
					<li style="background: #00ACAC" class="has-sub">
						<a style="color:#FFFFFF" href="${pageContext.servletContext.contextPath}/coding">
						    <i class="fa fa-calendar"></i>
						    <span>일정</span> 
						</a>
					</li>
					<li style="background: #00ACAC" class="has-sub">
						<a style="color:#FFFFFF" href="${pageContext.servletContext.contextPath}/commute/commute">
						    <i class="fa fa-check"></i>
						    <span>출퇴근관리</span>
						</a>
					</li>
					<li style="background: #00ACAC" class="has-sub">
						<a style="color:#FFFFFF" href="${pageContext.servletContext.contextPath}/annual/annual">
						    <i class="fa fa-check"></i>
						    <span>연차사용</span>
						</a>
					</li>
					<li style="background: #00ACAC" class="has-sub">
						<a style="color:#FFFFFF" href="${pageContext.servletContext.contextPath}/draft/display">
							<i class="fa fa-edit"></i> 
							<span>결재</span>
						</a>
					</li>
			        <!-- begin sidebar minify button -->
				<!--  사이드바 접는거 삭제함 <li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li> -->	
			        <!-- end sidebar minify button -->
				</ul>
				<!-- end sidebar nav -->
			</div>
			<!-- end sidebar scrollbar -->
		</div>
		<div class="sidebar-bg"></div>
		<!-- end #sidebar -->   