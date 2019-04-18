package com.tourism.service;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface HospitalService {

	void registerHospital(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	int saveHospital(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException;

}
