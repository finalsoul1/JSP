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
	<form method="post">
		Tel: <input type="text" name="tel" size="40">
		<input type="submit" value="Send">
	</form>
	<hr>
	${param.tel }
	
	<!-- 
		사용자로부터 받은 문자열을 그대로 사용할 때는 반드시
		Escape 한 다음에 사용합니다.
	 -->

	<c:out value="${param.tel}"></c:out>

</body>
</html>