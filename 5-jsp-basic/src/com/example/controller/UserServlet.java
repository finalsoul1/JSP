package com.example.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.vo.User;

@WebServlet( "/users" )
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		List<User> users = new ArrayList<User>();
		users.add(new User(1, "Tom", "Cruise", true));
		users.add(new User(1, "John", "Doe", true));
		users.add(new User(1, "Luke", "Skywalker", true));
		
		req.setAttribute("users", users);
	
		String path = "/example4/users.info.jsp";
		req.getRequestDispatcher(path).forward(req, res);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		super.doPost(req, res);
	}
}
