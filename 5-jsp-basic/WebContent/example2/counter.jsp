<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.io.*"%>

<%!int count;

	public void jspInit() {
		FileReader fr = null;
		BufferedReader br = null;
		try {
			// JSP가 기동할 때 파일로부터 카운터 값을 읽는다.
			fr = new FileReader("D:\\kwon\\git\\java\\workspace\\jsp\\5-jsp-basic\\WebContent\\myCounter.dat");
			br = new BufferedReader(fr);
			String initial = br.readLine();
			count = Integer.parseInt(initial);
			return;
		} catch (Exception ignored) {
			
		} finally {
			try {
				if (br != null) { br.close();} 
				if (fr != null) { fr.close();} 
				
			}	catch (Exception ignored) {
				
			}
		}
		
		String initial = getInitParameter("initial"); //초기 파라미터에서 확인
		
		if(initial != null) {
		
		try {
			count = Integer.parseInt(initial);
			return;
		} catch (NumberFormatException ignored) {
		}
		count = 0;
		}
	}

	public void jspDestroy() { //JSP Instance가 소멸시 카운터 값을 파일에 저장
		saveState();
	}

	public void saveState() {
		try {
			FileWriter fw = new FileWriter("D:\\kwon\\git\\java\\workspace\\jsp\\5-jsp-basic\\WebContent\\myCounter.dat");
			String initial = Integer.toString(count);
			fw.write(initial, 0, initial.length());
			fw.close();
			return;
		} catch (IOException e) {
		}
	}%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% count++;	%>
	<h2>counter : <%=count%></h2>
	
	<!-- 현재의 counter 값을 파일에 저장 -->
	<% saveState();	//선언문에 선언했기 때문에 가능 %>
	

</body>
</html>