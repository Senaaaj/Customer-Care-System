package raiseTicket;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TicketController {

    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Insert a new ticket with customerID
    public static boolean insertData(String location, String cPreference, String category, String priority,
                                     String subject_, String description_, String customerID) {
        isSuccess = false;

        try {
        	//DB Connection call
            con = TicketDB.getConnection();
            stmt = con.createStatement();

            String sql = "INSERT INTO ticket (location, cPreference, category, priority, subject_, description_, customerID) "
                       + "VALUES ('" + location + "', '" + cPreference + "', '" + category + "', '" + priority + "', '"
                       + subject_ + "', '" + description_ + "', " + customerID + ")";

            int rs = stmt.executeUpdate(sql);
            isSuccess = rs > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    // Retrieve ticket by ID
    public static List<TicketModel> getById(String ticketid) {
        int convertedID = Integer.parseInt(ticketid);
        ArrayList<TicketModel> tckt = new ArrayList<>();

        try {
            con = TicketDB.getConnection();
            stmt = con.createStatement();

            String sql = "SELECT * FROM ticket WHERE ticketID = " + convertedID;
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int ticketID = rs.getInt("ticketID");
                String location = rs.getString("location");
                String cPreference = rs.getString("cPreference");
                String category = rs.getString("category");
                String priority = rs.getString("priority");
                String subject_ = rs.getString("subject_");
                String description_ = rs.getString("description_");
                int customerID = rs.getInt("customerID");

                TicketModel tkt = new TicketModel(ticketID, location, cPreference, category, priority, subject_, description_, customerID);
                tckt.add(tkt);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return tckt;
    }

    // Retrieve all tickets
    public static List<TicketModel> getAllTicket(String ticketid) {
        ArrayList<TicketModel> tckts = new ArrayList<>();

        try {
            con = TicketDB.getConnection();
            stmt = con.createStatement();

            String sql = "SELECT * FROM ticket";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int ticketID = rs.getInt("ticketID");
                String location = rs.getString("location");
                String cPreference = rs.getString("cPreference");
                String category = rs.getString("category");
                String priority = rs.getString("priority");
                String subject_ = rs.getString("subject_");
                String description_ = rs.getString("description_");
                int customerID = rs.getInt("customerID");

                TicketModel tkt = new TicketModel(ticketID, location, cPreference, category, priority, subject_, description_, customerID);
                tckts.add(tkt);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return tckts;
    }

    // Retrieve tickets for a specific customer
    public static List<TicketModel> getTicketsByCustomerID(int customerID) {
        ArrayList<TicketModel> tckts = new ArrayList<>();

        try {
            con = TicketDB.getConnection();
            stmt = con.createStatement();

            String sql = "SELECT * FROM ticket WHERE customerID = " + customerID;
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int ticketID = rs.getInt("ticketID");
                String location = rs.getString("location");
                String cPreference = rs.getString("cPreference");
                String category = rs.getString("category");
                String priority = rs.getString("priority");
                String subject_ = rs.getString("subject_");
                String description_ = rs.getString("description_");

                TicketModel tkt = new TicketModel(ticketID, location, cPreference, category, priority, subject_, description_, customerID);
                tckts.add(tkt);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return tckts;
    }

    // Update a ticket
    public static boolean updatedata(String ticketID, String location, String cPreference, String category,
                                     String priority, String subject_, String description_) {
        isSuccess = false;

        try {
            con = TicketDB.getConnection();
            stmt = con.createStatement();

            String sql = "UPDATE ticket SET "
                       + "location = '" + location + "', "
                       + "cPreference = '" + cPreference + "', "
                       + "category = '" + category + "', "
                       + "priority = '" + priority + "', "
                       + "subject_ = '" + subject_ + "', "
                       + "description_ = '" + description_ + "' "
                       + "WHERE ticketID = " + ticketID;

            int rs = stmt.executeUpdate(sql);
            isSuccess = rs > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    // Delete a ticket
    public static boolean deletedata(String ticketID) {
        int convID = Integer.parseInt(ticketID);
        isSuccess = false;

        try {
            con = TicketDB.getConnection();
            stmt = con.createStatement();

            String sql = "DELETE FROM ticket WHERE ticketID = " + convID;
            int rs = stmt.executeUpdate(sql);
            isSuccess = rs > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
}
