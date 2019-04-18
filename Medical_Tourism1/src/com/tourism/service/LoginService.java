package com.tourism.service;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface LoginService {

	void showLoginForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	void validateUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException;
	void welcomePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	void rootPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	void registerPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	void saveLoginUser(HttpServletRequest request, HttpServletResponse response, int id) throws SQLException, ServletException, IOException;
	void saveLoginHospital(HttpServletRequest request, HttpServletResponse response, int id) throws SQLException, ServletException, IOException;

}
