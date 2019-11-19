package com.tun.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDB {
	private static String DB_URL = "jdbc:sqlserver://localhost:1433;"
            + "databaseName=ElectricStore;"
            + "integratedSecurity=true";
    private static String USER_NAME = "sa";
    private static String PASSWORD = "123";
    public static Connection getConnectionDB() {
    	Connection conn = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
            System.out.println("connect successfully!");
        } catch (Exception ex) {
            System.out.println("connect failure!");
            ex.printStackTrace();
        }
        return conn;
    }
}