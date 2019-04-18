package com.tourism.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;
import com.tourism.model.Hospital;
import com.tourism.util.ConnectionManager;

public class HospitalDAOImpl implements HospitalDAO{
	
	private ConnectionManager connectionManager;
	private Connection connection;
	
	public HospitalDAOImpl(){
		connectionManager = new ConnectionManager();
	}

	@Override
	public int save(Hospital hospital) throws SQLException {
		String sql = "INSERT INTO hospital (name, address1, address2, city, state, zip, certification)"
				+ "  VALUES (?,?,?,?,?,?,?)";
		try{
			connection = connectionManager.connect();
			PreparedStatement stmt = connection.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, hospital.getHospitalName());
			stmt.setString(2, hospital.getAddressLine1());
			stmt.setString(3, hospital.getAddressLine2());
			stmt.setString(4, hospital.getCity());
			stmt.setString(5, hospital.getState());
			stmt.setInt(6, hospital.getPin());
			stmt.setString(7, hospital.getCertifications());
			stmt.executeUpdate();
			ResultSet rs = stmt.getGeneratedKeys();
			rs.next();
			int id = rs.getInt("hospital_id");
			return id;
		}finally{
			connectionManager.disconnect();
		}
	}

}
