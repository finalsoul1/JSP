package com.google.ace;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cookie")
public class CookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static int count = 0;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		count++;
											/// 키 , 값
		Cookie counterCookie = new Cookie("OJC"+count, String.valueOf(count));
		//쿠키에 대한 설명 추가
		counterCookie.setComment("OJC Cookie Counter"+count);
		// 하루짜리 쿠키
		counterCookie.setMaxAge(24 * 60 * 60);
		// 아래 주소로 다시 들어올때 쿠키를 가지고 온다.
//		counterCookie.setPath("/ojcweb/CookieTest");
		// 쿠키를 굽는다.
		response.addCookie(counterCookie);
		
		
		// WebContent가 html관련 기본루트
		String path = "/WEB-INF/cookie-test.jsp";
		
		// 서블릿 클래스에서 JSP에게 데이터를 전달하는 방법, 파라미터: 키,값
		request.setAttribute("count", count);
		
		RequestDispatcher rd = request.getRequestDispatcher(path);
		// forward: 서블릿 클래스에서 브라우저에게 응답하는 것이 아니라
		// JSP로 연동하여 JSP의 화면정보를 응답 문자열로 사용하는 방법입니다.
		
		// 객체는 참조입니다. 서블릿이 사용하던 request, response 객체를
		// JSP에게 전달하면 결국 서블릿이 사용하던 같은 객체를 JSP가 사용하게 됩니다.
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
