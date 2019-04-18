package com.tourism.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tourism.service.HospitalService;
import com.tourism.service.HospitalServiceImpl;
import com.tourism.service.LoginService;
import com.tourism.service.LoginServiceImpl;
import com.tourism.service.UserService;
import com.tourism.service.UserServiceImpl;

/**
 * Servlet implementation class RegistrationController
 */
//@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	private HospitalService hospitalService;
	private UserService userService;
	private LoginService loginService;

	public void init() {
		hospitalService = new HospitalServiceImpl();
		userService = new UserServiceImpl();
		loginService = new LoginServiceImpl(); 
	}

	public RegistrationController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getServletPath();
		int id;
		try{
			switch(url){
			case "/register/user":
				userService.registerUser(request,response);
				break;
			case "/register/hospital":
				hospitalService.registerHospital(request,response);
				break;
			case "/saveUser":
				id = userService.saveUser(request,response);
				loginService.saveLoginUser(request,response,id);
				break;
			case "/saveHospital":
				id = hospitalService.saveHospital(request,response);
				loginService.saveLoginHospital(request,response,id);
				break;
			}
		}
		catch(Exception exception){
			exception.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
