package Feedback;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class feedbackController {

    // Static variables
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Insert Data Function
    public static boolean inserdata(String fname, String fphone, String femail, String connection_,
                                    String branch, String satisfaction, String recommendation, String comments) {
        try {
            con = FeedbackDB.getConnection();
            stmt = con.createStatement();

            String sql = "INSERT INTO feedback VALUES (0, '" + fname + "', '" + fphone + "', '" + femail + "', '" +
                    connection_ + "', '" + branch + "', '" + satisfaction + "', '" + recommendation + "', '" + comments + "')";
            int result = stmt.executeUpdate(sql);

            isSuccess = result > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    // Get by ID
    public static List<FeedbackModel> getById(String Fid) {
        int convertedID = Integer.parseInt(Fid);
        ArrayList<FeedbackModel> feedbackList = new ArrayList<>();

        try {
            con = FeedbackDB.getConnection();
            stmt = con.createStatement();

            // FIXED: WHERE clause must compare column = value
            String sql = "SELECT * FROM feedback WHERE fid = '" + convertedID + "'";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int fid = rs.getInt(1);
                String fname = rs.getString(2);
                String fphone = rs.getString(3);
                String femail = rs.getString(4);
                String connection_ = rs.getString(5);
                String branch = rs.getString(6);
                String satisfaction = rs.getString(7);
                String recommendation = rs.getString(8);
                String comments = rs.getString(9);

                FeedbackModel fk = new FeedbackModel(fid, fname, fphone, femail, connection_, branch, satisfaction, recommendation, comments);
                feedbackList.add(fk);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return feedbackList;
    }

    // Get All Feedback
    public static List<FeedbackModel> getAllFeedback() {
        ArrayList<FeedbackModel> feedbacks = new ArrayList<>();

        try {
            con = FeedbackDB.getConnection();
            stmt = con.createStatement();

            String sql = "SELECT * FROM feedback ORDER BY fid DESC";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int fid = rs.getInt(1);
                String fname = rs.getString(2);
                String fphone = rs.getString(3);
                String femail = rs.getString(4);
                String connection_ = rs.getString(5);
                String branch = rs.getString(6);
                String satisfaction = rs.getString(7);
                String recommendation = rs.getString(8);
                String comments = rs.getString(9);

                FeedbackModel fk = new FeedbackModel(fid, fname, fphone, femail, connection_, branch, satisfaction, recommendation, comments);
                feedbacks.add(fk);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return feedbacks;
    }

    // Update feedback
    public static boolean feedbackUpdate(String fid, String fname, String fphone, String femail, String connection_, String branch, String satisfaction, String recommendation, String comments) {
        if (fid == null || fid.isEmpty()) {
            System.out.println("ERROR: 'fid' is null or empty");
            return false;
        }

        try {
            con = FeedbackDB.getConnection();
            stmt = con.createStatement();

            String sql = "UPDATE feedback SET fname='" + fname + "', fphone='" + fphone + "', femail='" + femail + "', connection_='" + connection_ + "', branch='" + branch + "', satisfaction='" + satisfaction + "', recommendation='" + recommendation + "', comments='" + comments + "' WHERE fid='" + fid + "'";

            int rs = stmt.executeUpdate(sql);
            isSuccess = rs > 0;
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    // Delete feedback
    public static boolean feedbackdelete(String fid) {
        int convID = Integer.parseInt(fid);
        try {
            con = FeedbackDB.getConnection();
            stmt = con.createStatement();

            // FIXED: column name should be 'fid' not 'id'
            String sql = "DELETE FROM feedback WHERE fid='" + convID + "'";
            int result = stmt.executeUpdate(sql);
            isSuccess = result > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }
}
