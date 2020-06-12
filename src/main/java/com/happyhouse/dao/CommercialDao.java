package com.happyhouse.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.happyhouse.dto.Commercial;
import com.happyhouse.dto.HouseInfo;

public interface CommercialDao {
	public ArrayList<Commercial> search(String condition, String word) throws SQLException;
}
