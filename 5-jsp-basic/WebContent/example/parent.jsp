<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>parent</h1>
	<div>
		<%@ include file = "child.jsp" %>
	</div>
	<!-- 합쳐서 한 파일로 취급, 정적 -->
	
	<div>
		<jsp:include page = "child.jsp"></jsp:include>
	</div>
	<!-- 따로 취급, 화면에 보이는 것만 같이 보이게끔, 동적 -->
</body>
</html>