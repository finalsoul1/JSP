<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
	%>
	<p><%=name%></p>

	<%
		Enumeration<String> enumer = request.getParameterNames();
		while (enumer.hasMoreElements()) {
			String key = enumer.nextElement();
			out.print("<p>" + key + "</p>");
		}
	%>
	<hr>
	<%
		request.setCharacterEncoding("UTF-8");
		String[] fruits = request.getParameterValues("fruits");
		out.print("<p>");
		for (String f : fruits) {
			out.print(f + ",");
		}
		out.print("</p>");
	%>

	<hr>

	WAS : ${ initParam.was }
	<br> VERSION : ${ initParam.version }
	<hr>
	요청 URI : ${ pageContext.request.requestURI }
	<hr>
	이름 : ${ param.name }
	<br>이름2 : ${ requestScope.name2 }
	<hr>
	선택한 과일 : ${ paramValues.fruits[0] } ${ paramValues.fruits[1] } ${ paramValues.fruits[2] }
	${ paramValues.fruits[3] } ${ paramValues.fruits[4] }
</body>
</html>