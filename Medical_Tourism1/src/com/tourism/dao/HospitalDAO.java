package com.tourism.dao;

import java.sql.SQLException;

import com.tourism.model.Hospital;

public interface HospitalDAO {

	int save(Hospital hospital) throws SQLException;

}
