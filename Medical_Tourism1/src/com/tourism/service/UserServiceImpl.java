package com.tourism.service;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tourism.dao.UserDAO;
import com.tourism.dao.UserDAOImpl;
import com.tourism.model.User;

public class UserServiceImpl implements UserService{
	
	private UserDAO userDAO;

	public UserServiceImpl() {
		userDAO = new UserDAOImpl();
	}

	@Override
	public void registerUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/addUser1.jsp");
		requestDispatcher.forward(request, response);
	}

	@Override
	public int saveUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String contact = request.getParameter("contact");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		int zip = Integer.parseInt(request.getParameter("zip"));
		User user = new User(firstname,lastname,age,gender,contact,address,city,zip);
		int id = userDAO.save(user);
		System.out.println("id="+id);
		return id;
	}

}
