<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- tiles 관련 태그를 제공하는 태그 라이브러리 포함 --%>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring</title>

</head>
<body>
	<div id="header">
		<%-- insertAttribute : tlies.xml 파일의 put-attribute 엘리먼트에서 
		설정된 JSP 문서를 불러와 삽입하는 태그 --%>
		<%-- name 속성 : put-attribute 엘리먼트의 고유값을 속성값으로 설정 --%>
		<tiles:insertAttribute name="header"/>
	</div>
	
	<div id="sidebar">
		<tiles:insertAttribute name="sidebar"/>
	</div>
	
	<div id="content">
		<tiles:insertAttribute name="content"/>
	</div>
	
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
	
	<script type="text/javascript">
	function confirmLogout() {
		if(confirm("로그아웃 하시겠습니까?")) {
			location.href='${pageContext.servletContext.contextPath }/logout';
		}
	}
	</script>
</body>
</html>