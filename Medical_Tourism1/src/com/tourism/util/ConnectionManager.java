package com.tourism.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
	private String jdbcURL,jdbcUser,jdbcPassword;
	private Connection con=null;
	public ConnectionManager(){
		jdbcURL = "jdbc:mysql://localhost:3306/tour";
		jdbcUser = "root";
		jdbcPassword = "root";
	}
	public Connection connect() throws SQLException{
		if(con==null || con.isClosed()){
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPassword);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			catch(SQLException e){
				System.out.println(e.getErrorCode()+" "+e.getSQLState()+" "+e.getMessage());
			}
		}
		return con;
	}
	public void disconnect() throws SQLException{
		if(con!=null && !con.isClosed()){
			con.close();
		}
	}
}
