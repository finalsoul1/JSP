<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>


	<table>
		<thead>
			<tr>
				<c:forEach var="1" begin = "1" end = "9" step = "1">
					<th>${i }</th>
				</c:forEach>
			</tr>
		</thead>

		<tbody>
			<%
				for (int i = 1; i <= 9; i++) { // 행
					out.print("<tr>");
					for (int j = 1; j <= 9; j++) { // 열(Cell)
						out.print("<td>");
						out.print(i + "x" + j + "=" + (i * j) + " ");
						out.print("</td>");
					}
					out.print("</tr>");
				}
			%>
		</tbody>
	</table>

</body>
</html>