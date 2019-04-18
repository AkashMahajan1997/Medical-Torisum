package com.tourism.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tourism.service.LoginService;
import com.tourism.service.LoginServiceImpl;

/**
 * Servlet implementation class LoginController
 */
//@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private LoginService l;
	public void init(){
		l = new LoginServiceImpl();
	}
    public LoginController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getServletPath();
		try{
			switch(url){
			case "/":
				l.welcomePage(request,response);
				break;
			case "/login":
				l.showLoginForm(request,response);
				break;
			case "/validate":
				l.validateUser(request, response);
				break;
			case "/welcome":
				l.rootPage(request,response);
				break;
			case "/register":
				l.registerPage(request,response);
				break;
			}
		}
		catch(Exception exception){
			exception.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
