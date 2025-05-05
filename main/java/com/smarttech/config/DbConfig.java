package com.smarttech.config;

import java.sql.Connection;

import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.smarttech.model.*;
import com.smarttech.util.*;

public class DbConfig {

	public Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName(StringUtils.DRIVER_NAME);
		String url = StringUtils.LOCALHOST_URL;
		String user = StringUtils.LOCALHOST_USERNAME;
		String pass = StringUtils.LOCALHOST_PASSWORD;
		Connection connection = DriverManager.getConnection(url, user, pass);
		return connection;

	}

	// Database configuration information
		private static final String DB_NAME = "smarttech";
		private static final String URL = "jdbc:mysql://localhost:3306/" + DB_NAME;
		private static final String USERNAME = "root";
		private static final String PASSWORD = "";

		/**
		 * Establishes a connection to the database.
		 *
		 * @return Connection object for the database
		 * @throws SQLException           if a database access error occurs
		 * @throws ClassNotFoundException if the JDBC driver class is not found
		 */
		public static Connection getDbConnection() throws SQLException, ClassNotFoundException {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(URL, USERNAME, PASSWORD);
		}

		public ArrayList<ProductModel> getProductsInfo() {
			// TODO Auto-generated method stub
			return null;
		}


	

	
	
}
