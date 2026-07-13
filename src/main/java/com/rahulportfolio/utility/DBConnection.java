package com.rahulportfolio.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private static final String URL =
            "jdbc:mysql://localhost:3306/portfolio_db";

    private static final String USERNAME = "root";

    // तुमचा MySQL password
    private static final String PASSWORD = "9970606275";

    public static Connection getConnection() {

        Connection connection = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            connection = DriverManager.getConnection(
                    URL,
                    USERNAME,
                    PASSWORD
            );

            System.out.println("Database Connected Successfully.");

        } catch (Exception e) {

            e.printStackTrace();

        }

        return connection;
    }

}