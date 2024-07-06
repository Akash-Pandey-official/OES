package com.register;

import java.sql.*;

public class ConnectionProvider {

	private static Connection con;

	public static Connection getConnection() {

		String jdbcUrl = "jdbc:mysql://localhost:3306/projectdatabase";
		String username = "root";
		String password = "akash123";

		try {
			if (con == null) {

				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection(jdbcUrl, username, password);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}
}
