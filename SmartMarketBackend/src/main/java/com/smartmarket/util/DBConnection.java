
package com.smartmarket.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class DBConnection {

    private static final String URL =
        System.getenv("SMARTMARKET_DB_URL");

    private static final String USER =
        System.getenv("SMARTMARKET_DB_USER");

    private static final String PASS =
        System.getenv("SMARTMARKET_DB_PASSWORD");

    private DBConnection() {}

    public static Connection getConnection() throws SQLException {

        if (URL == null || USER == null || PASS == null) {
            throw new SQLException(
                "Database environment variables are not configured."
            );
        }

        try {
            Class.forName("oracle.jdbc.OracleDriver");
        } catch (ClassNotFoundException e) {
            throw new SQLException(
                "Oracle JDBC Driver not found.", e
            );
        }

        return DriverManager.getConnection(URL, USER, PASS);
    }
}
