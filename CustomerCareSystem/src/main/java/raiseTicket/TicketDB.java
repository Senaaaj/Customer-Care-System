package raiseTicket;

import java.sql.Connection;
import java.sql.DriverManager;

public class TicketDB {

    // Database credentials
    private static String url = "jdbc:mysql://localhost:3306/customercare";
    private static String user = "root";
    private static String pass = "sena@1013";
    private static Connection con;

    // Method to get DB connection
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver"); 
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            System.out.println("Database connection failed: " + e.getMessage());
            e.printStackTrace();
        }
        return con;
    }
}


