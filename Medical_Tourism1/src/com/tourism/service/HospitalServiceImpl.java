package com.tourism.service;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tourism.dao.HospitalDAO;
import com.tourism.dao.HospitalDAOImpl;
import com.tourism.model.Hospital;

public class HospitalServiceImpl implements HospitalService{
	
	private HospitalDAO hospitalDAO;
	
	public HospitalServiceImpl(){
		hospitalDAO = new HospitalDAOImpl(); 
	}

	@Override
	public void registerHospital(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/addHospital.jsp");
		requestDispatcher.forward(request, response);
	}

	@Override
	public int saveHospital(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		String name = request.getParameter("hospitalName");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		int zip = Integer.parseInt(request.getParameter("zip"));
		String certificate = request.getParameter("certifications");
		Hospital hospital = new Hospital(name,address1,address2,city,state,zip,certificate);
		int id = hospitalDAO.save(hospital);
		return id;
	}

}
