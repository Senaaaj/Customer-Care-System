package payment;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnectionp {

    private static final String url = "jdbc:mysql://localhost:3306/customercare";
    private static final String user = "root";
    private static final String pass = "sena@1013";
    private static Connection con;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver"); 
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            System.out.println("Database Not Connect: ");
        }
        return con;
    }
}
