<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	th, td {
		padding: 5px;
	}
</style>
</head>
<body>

	<%
		for (int i = 1; i <= 9; i++) {
			for (int j = 1; j <= 9; j++) {
				out.print(i + "x" + j + "=" + (i * j) + " ");
			}
			out.print("<br>");
		}
	%>

	<table>
		<thead>
			<tr>
				<%
				for(int i = 1; i <= 9 ; i++) {
					out.print("<th>" + i + "</th>");
				}
				%>

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