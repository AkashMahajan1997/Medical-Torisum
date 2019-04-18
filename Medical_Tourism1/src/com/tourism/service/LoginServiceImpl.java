package com.tourism.service;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tourism.dao.LoginDAO;
import com.tourism.dao.LoginDAOImpl;
import com.tourism.model.Login;

public class LoginServiceImpl implements LoginService {
	
	private LoginDAO loginDAO;
	public LoginServiceImpl(){
		loginDAO = new LoginDAOImpl();
	}
	
	@Override
	public void welcomePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/welcome.jsp");
		requestDispatcher.forward(request, response);
	}
	
	@Override
	public void rootPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login1.jsp");
		requestDispatcher.forward(request, response);
	}
	
	@Override
	public void showLoginForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login.jsp");
		requestDispatcher.forward(request, response);
	}

	@Override
	public void validateUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String type = loginDAO.validateUser(username, password);
		RequestDispatcher requestDispatcher;
		if(type!=null){
			if(type.equals("a")){
				requestDispatcher = request.getRequestDispatcher(/*TO-DO admin page jsp*/"");
				requestDispatcher.forward(request, response);
			}
		}
	}

	@Override
	public void registerPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/registration.jsp");
		requestDispatcher.forward(request, response);
	}

	@Override
	public void saveLoginUser(HttpServletRequest request, HttpServletResponse response,int id) throws SQLException, ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Login login = new Login(email,password,"user",id);
		int save = loginDAO.saveUser(login);
		if(save==1){
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login1.jsp");
			requestDispatcher.forward(request, response);
		}
		else{
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/addUser1.jsp");
			requestDispatcher.forward(request, response);
		}
	}

	@Override
	public void saveLoginHospital(HttpServletRequest request, HttpServletResponse response,int id) throws SQLException, ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Login login = new Login(id,email,password,"hospital");
		int save = loginDAO.saveHospital(login);
		if(save==1){
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login1.jsp");
			requestDispatcher.forward(request, response);
		}
		else{
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/addHospital.jsp");
			requestDispatcher.forward(request, response);
		}
	}

}
