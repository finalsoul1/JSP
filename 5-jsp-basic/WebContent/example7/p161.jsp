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
	<!-- 문자열을 구분자와 함께 설정하면 구분자로 잘라서 배열을 만들고 그 배열을 사용한다. -->
	<c:set var="tab" value="&nbsp&nbsp&nbsp&nbsp"></c:set>
	<c:forTokens var="car" items="소나타,포드,봉고,트럭,그렌져" delims=",">
		${ car } &nbsp; ${tab} <!-- &nbsp; 횟수만큼 스페이스바 -->
	</c:forTokens>
</body>
</html>