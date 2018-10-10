<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>

	<div class="container-fruid">
		<h2>Gugudan4</h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<c:forEach var="i" begin="1" end="9" step="1">
						<th>${i }</th>
					</c:forEach>
				</tr>
			</thead>

			<tbody>
				
				<c:forEach var="i" begin="1" end="9" step="1">
					<tr>
					<c:forEach var="j" begin="1" end="9" step="1">
						<td>
							${j}x${i}=${ i * j }
						</td>
					</c:forEach>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>

</body>
</html>