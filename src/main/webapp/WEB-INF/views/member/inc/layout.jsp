<%--
@JSP : layout.jsp
@Date : 2018.10.10
@Author : 이주원
@Desc : 내정보보기 layout 
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>        
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<!-- title 영역 -->
		<title><tiles:insertAttribute name="title" ></tiles:insertAttribute></title>
		<!-- css  영역 -->
		<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
		<!-- qna css 적용 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/qna.css" />
	</head>
	<body>
		<!-- Header  영역 (공통 inc) -->
		<tiles:insertAttribute name="header" />
		<div id="main">
			<div class="top-wrapper clear">
				<!-- Content 영역 -->
				<tiles:insertAttribute name="content" />
			</div>
		</div>
		
		<!-- Footer 영역 -->
		<tiles:insertAttribute name="footer" />
		
				
		<!-- Scripts -->
		<!-- <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script> 
			 qna 게시판에서만 먹는 jquery cdn이 있어서 일단 layout에 있는 것은 주석처리 하겠습니다.-->	
		<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	 	
	</body>
</html>
