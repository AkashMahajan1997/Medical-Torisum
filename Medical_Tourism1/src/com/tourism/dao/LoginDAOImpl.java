package com.tourism.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tourism.util.ConnectionManager;
import com.tourism.model.Login;

public class LoginDAOImpl implements LoginDAO {
	
	private ConnectionManager connectionManager;
	private Connection connection;
	public LoginDAOImpl(){
		connectionManager = new ConnectionManager();
	}
	
	public String validateUser(String username, String password) throws SQLException{
		String sql = "SELECT userType FROM user WHERE username=? AND password=?";
		String type = null;
		try{
			connection = connectionManager.connect();
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, username);
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()){
				type = rs.getString("userType");
			}
				
			stmt.close();
		}
		finally{
			connectionManager.disconnect();
		}
		
		return type;
	}

	@Override
	public int saveUser(Login login) throws SQLException {
		String sql = "INSERT INTO login (user_id, email, password, user_type)"
				+" VALUES (?,?,?,?)";
		int save = 0;
		try{
			connection = connectionManager.connect();
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, login.getUserid());
			stmt.setString(2, login.getEmail());
			stmt.setString(3, login.getPassword());
			stmt.setString(4, login.getUserType());
			save = stmt.executeUpdate();
		}
		finally{
			connectionManager.disconnect();
		}
		return save;
	}
	
	@Override
	public int saveHospital(Login login) throws SQLException {
		String sql = "INSERT INTO login (hospital_id, email, password, user_type)"
				+" VALUES (?,?,?,?)";
		int save = 0;
		try{
			connection = connectionManager.connect();
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, login.getUserid());
			stmt.setString(2, login.getEmail());
			stmt.setString(3, login.getPassword());
			stmt.setString(4, login.getUserType());
			save = stmt.executeUpdate();
		}
		finally{
			connectionManager.disconnect();
		}
		return save;
	}
}
