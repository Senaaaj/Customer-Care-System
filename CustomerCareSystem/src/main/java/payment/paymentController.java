package payment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class paymentController {

    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Insert Data
    public static boolean insertData(String AccountNumber, String paymentMethod, String expireDate, String cardNo, String securityCode, String total) {
        boolean isSuccess = false;

        try {
            con = DBconnectionp.getConnection();
            stmt = con.createStatement();

            String sql = "INSERT INTO payment VALUES (0, '" + AccountNumber+ "', '" + paymentMethod + "', '" + expireDate + "', '" + cardNo + "', '" + securityCode + "', '" + total + "')";
            int result = stmt.executeUpdate(sql);

            isSuccess = result > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    // Get payment by ID
    public static List<paymentModel> getById(String paymentId) {
        int convertedId = Integer.parseInt(paymentId);
        ArrayList<paymentModel> paymentList = new ArrayList<>();

        try {
            con = DBconnectionp.getConnection();
            stmt = con.createStatement();

            String sql = "SELECT * FROM payment WHERE paymentID = " + convertedId;
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int paymentID = rs.getInt(1);
                String AccountNumber = rs.getString(2);
                String paymentMethod = rs.getString(3);
                String expireDate = rs.getString(4);
                String cardNo = rs.getString(5);
                String securityCode = rs.getString(6);
                String total = rs.getString(7);

                paymentModel pm = new paymentModel(paymentID, AccountNumber, paymentMethod, expireDate, cardNo, securityCode, total);
                paymentList.add(pm);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return paymentList;
    }

    // Get all payments
    public static List<paymentModel> getAllPayments() {
        ArrayList<paymentModel> payments = new ArrayList<>();

        try {
            con = DBconnectionp.getConnection();
            stmt = con.createStatement();

            String sql = "SELECT * FROM payment";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int paymentID = rs.getInt(1);
                String AccountNumber = rs.getString(2);
                String paymentMethod = rs.getString(3);
                String expireDate = rs.getString(4);
                String cardNo = rs.getString(5);
                String securityCode = rs.getString(6);
                String amount = rs.getString(7);

                paymentModel pm = new paymentModel(paymentID, AccountNumber, paymentMethod, expireDate, cardNo, securityCode, amount);
                payments.add(pm);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return payments;
    }

    // Update data
 
    public static boolean updatedata(String paymentID, String AccountNumber, String paymentMethod, String expireDate, String cardNo, String securityCode, String total) {
        boolean isSuccess = false;

        try {
            con = DBconnectionp.getConnection();

            String sql = "UPDATE payment SET AccountNumber = ?, paymentMethod = ?, expireDate = ?, cardNo = ?, securityCode = ?, total = ? WHERE paymentID = ?";
            PreparedStatement pstmt = con.prepareStatement(sql);

            pstmt.setString(1, AccountNumber);
            pstmt.setString(2, paymentMethod);
            pstmt.setString(3, expireDate);
            pstmt.setString(4, cardNo);
            pstmt.setString(5, securityCode);
            pstmt.setString(6, total);
            

            pstmt.setString(7, paymentID);

            int result = pstmt.executeUpdate();
            isSuccess = result > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    // Delete data
    public static boolean deletedata(String paymentID) {
        boolean isSuccess = false;

        try {
            int convertedID = Integer.parseInt(paymentID);
            con = DBconnectionp.getConnection();
            stmt = con.createStatement();

            String sql = "DELETE FROM payment WHERE paymentID = '" + convertedID + "'";
            int result = stmt.executeUpdate(sql);

            isSuccess = result > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
}
