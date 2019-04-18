package com.tourism.dao;

import java.sql.SQLException;

import com.tourism.model.Login;

public interface LoginDAO {

	public String validateUser(String username, String password) throws SQLException;
	public int saveUser(Login login) throws SQLException;
	public int saveHospital(Login login) throws SQLException;
}
