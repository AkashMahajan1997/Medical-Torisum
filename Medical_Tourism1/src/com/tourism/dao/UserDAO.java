package com.tourism.dao;

import java.sql.SQLException;

import com.tourism.model.User;

public interface UserDAO {

	int save(User user) throws SQLException;

}
