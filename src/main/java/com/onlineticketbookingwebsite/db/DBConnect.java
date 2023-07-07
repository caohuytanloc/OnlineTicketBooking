package com.onlineticketbookingwebsite.db;

import java.sql.*;

public class DBConnect {
    private static final String DB_URL = "jdbc:mysql://localhost:3307/AirTicketManagement?autoReconnect=true&useSSL=false";
    private static final String USER = "root";
    private static final String PASSWORD = "123456";
    private static DBConnect dbConnect;
    private static Connection connection;

    private DBConnect() {
    }

    public static DBConnect getInstance() {
        if (dbConnect == null) {
            dbConnect = new DBConnect();
        }
        return dbConnect;
    }

    private void connect() throws SQLException, ClassNotFoundException {
        if ((connection == null) || connection.isClosed())
            Class.forName("com.mysql.cj.jdbc.Driver");
         connection = DriverManager.getConnection(DB_URL, USER, PASSWORD);
    }
    public Statement connectStament() throws SQLException, ClassNotFoundException {
        if (connection==null||connection.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3307/AirTicketManagement?autoReconnect=true&useSSL=false", "root", "123456");
            return connection.createStatement();
        } else {
            return connection.createStatement();
        }
    }
    private boolean isConnect() throws SQLException {
        return connection != null && !connection.isClosed();
    }

    public PreparedStatement get(String sql) throws SQLException, ClassNotFoundException {
        try {
            if (!isConnect())
                connect();
            return connection.prepareStatement(sql);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void main(String[] args) throws SQLException {
        DBConnect dbConnect = DBConnect.getInstance();
        try {
            dbConnect.connect();
            System.out.println(dbConnect.isConnect());
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }    }
}
