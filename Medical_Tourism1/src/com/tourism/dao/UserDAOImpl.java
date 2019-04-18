package com.tourism.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tourism.model.User;
import com.tourism.util.ConnectionManager;

public class UserDAOImpl implements UserDAO{
	
	private ConnectionManager connectionManager;
	private Connection connection;
	
	public UserDAOImpl(){
		connectionManager = new ConnectionManager();
	}

	@Override
	public int save(User user) throws SQLException {
		String sql1 = "INSERT INTO user (firstname, lastname, age, gender, contact, address, city, zip)"
				+ " VALUES (?,?,?,?,?,?,?,?)";
		String sql2 = "SELECT user_id FROM user";
		try{
			connection = connectionManager.connect();
			PreparedStatement stmt = connection.prepareStatement(sql1);
			stmt.setString(1, user.getFirstName());
			stmt.setString(2, user.getLastName());
			stmt.setInt(3, user.getAge());
			stmt.setString(4, user.getGender());
			stmt.setString(5, user.getContactNumber());
			stmt.setString(6, user.getAddress());
			stmt.setString(7, user.getCity());
			stmt.setInt(8, user.getZipCode());
			stmt.executeUpdate();
			System.out.println("Here");
			stmt = connection.prepareStatement(sql2);
			ResultSet rs = stmt.getResultSet();
			int id = rs.getInt("user_id");
			return id;
		}
		finally{
			connectionManager.disconnect();
		}
	}
}
