<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- http://localhost:8085/5-jsp-basic/example7/first.jsp -->
	<a href="first.jsp">11</a><br>
	
	<!-- http://localhost:8085/5-jsp-basic/example7/first.jsp -->
	<a href="<c:url value='/example7/first.jsp'/>">22</a><br>
	
	<!-- http://localhost:8085/ -->
	<a href="/">프로젝트 컨텍스트 패스가 없으므로 연동안됨</a><br>
	
	<!-- http://localhost:8085/5-jsp-basic/ -->
	<a href="<c:url value='/' />">프로젝트 컨텍스트 패스가 자동으로 처리됨</a>
</body>
</html>