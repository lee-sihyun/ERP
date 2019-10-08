<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>FullCalendar Example</title>
    <link rel=" shortcut icon" href="image/favicon.ico">
    
    <%-- alert 디자인 js 파일 --%>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/fullcalendar/vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/fullcalendar/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='${pageContext.servletContext.contextPath }/fullcalendar/vendor/css/select2.min.css' />
    <link rel="stylesheet" href='${pageContext.servletContext.contextPath }/fullcalendar/vendor/css/bootstrap-datetimepicker.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/fullcalendar/css/main.css">
    
    <%-- 부트스트랩 관련 css 파일 --%>
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/animate.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/style.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="${pageContext.servletContext.contextPath }/assets/css/theme/default.css" rel="stylesheet" id="theme" />
<style type="text/css">
</style>
</head>

<body>
    <div class="content" id="content">

        <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">마이캘린더</a></li>
                <li><a tabindex="-1" href="#">부서캘린더</a></li>
                <li><a tabindex="-1" href="#">전사캘린더</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div>

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>


        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
        	<form name="calModal">
            <div class="modal-dialog" role="document">
	        	<input type="text" name="empNo" id="empNo" value="${loginUserinfo.empNo }">
	        	<input type="text" name="deptNo" id="deptNo" value="${loginUserinfo.deptNo }">
	        	<input type="text" name="calNo" id="calNo" value="${calendar.calNo }">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">일정명</label>
                                <input class="inputModal" type="text" name="edit-title" id="edit-title"
                                    required="required" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">시작</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">캘린더</label>
                                <select class="inputModal" type="text" name="edit-type" id="edit-type">
                                    <option value="마이캘린더">마이캘린더</option>
                                    <option value="부서캘린더">부서캘린더</option>
                                    <option value="전사캘린더">전사캘린더</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-place">장소</label>
                                <input class="inputModal" type="text" name="edit-place" id="edit-place" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">카테고리</label>
                                <select class="inputModal" name="color" id="edit-color">
                                    <option value="업무" style="color:#D25565;">업무</option>
                                    <option value="휴가" style="color:#74c0fc;">휴가</option>
                                    <option value="출장" style="color:#a9e34b;">출장</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">내용</label>
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc" id="edit-desc"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
            </form>
        </div><!-- /.modal -->

        <div class="panel panel-default">

            <div class="panel-heading">
                <h3 class="panel-title">필터</h3>
            </div>

            <div class="panel-body">

                <div class="col-lg-6">
                    <label for="calendar_view">캘린더별</label>
                    <div class="input-group">
                        <select class="filter" id="type_filter" multiple="multiple">
                            <option value="마이캘린더">마이캘린더</option>
                            <option value="부서캘린더">부서캘린더</option>
                            <option value="전사캘린더">전사캘린더</option>
                        </select>
                    </div>
                </div>

                <div class="col-lg-6">
                    <label for="calendar_view">등록자별</label>
                    <div class="input-group">
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="정연"
                                checked>정연</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="다현"
                                checked>다현</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="사나"
                                checked>사나</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="나연"
                                checked>나연</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="지효"
                                checked>지효</label>
                    </div>
                </div>

            </div>
        </div>
        <!-- /.filter panel -->
    </div>
    <!-- /.container -->

    <script src="${pageContext.servletContext.contextPath }/fullcalendar/vendor/js/jquery.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/fullcalendar/vendor/js/bootstrap.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/fullcalendar/vendor/js/moment.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/fullcalendar/vendor/js/fullcalendar.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/fullcalendar/vendor/js/ko.js"></script>
    <script src="${pageContext.servletContext.contextPath }/fullcalendar/vendor/js/select2.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/fullcalendar/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/fullcalendar/js/main.js?ver=1"></script>
    <script src="${pageContext.servletContext.contextPath }/fullcalendar/js/addEvent.js"></script>
    <script src="${pageContext.servletContext.contextPath }/fullcalendar/js/editEvent.js"></script>
    <script src="${pageContext.servletContext.contextPath }/fullcalendar/js/etcSetting.js"></script>
</body>

</html>