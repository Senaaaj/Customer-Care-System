package customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class customerController {
	
	//Connect DB
	
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
		
	//Insert Data Function
	public static boolean Insertdata(String cName,String email,String phone,String address,String passw) {
		
		boolean isSuccess = false;
		try {
			//DB CONNECTION CALL
			con=customer.getConnection();
			stmt=con.createStatement();
		
			 //SQL QUERY
			String sql="Insert into customer values(0,'"+cName+"','"+email+"','"+phone+"','"+address+"','"+passw+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs >0) {
				isSuccess =true;
			}
			else {
				isSuccess =false;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
    //GetById
	public static List<customerModel> getById(String customerid){
		
		int convertedID =Integer.parseInt(customerid);
		
		ArrayList<customerModel> customers =new ArrayList<>();
		
		try {
			//DBConnection
			con=customer.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql ="select * from customer where customerID = '"+convertedID+"'";

			
			rs =stmt.executeQuery(sql);
			
			while(rs.next()) {
				int customerID =rs.getInt(1);
				String cName =rs.getString(2);
				String email =rs.getString(3);
				String phone =rs.getString(4);
				String address =rs.getString(5);
				String passw =rs.getString(6);
				
				customerModel cM =new customerModel(customerID,cName,email,phone,address,passw);
				customers.add(cM);
			}
					
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		return customers;
	}
	
	//GetAll Data
	public static List<customerModel> getAllcustomers(){
		ArrayList<customerModel> customers =new ArrayList<>();
		
		try {
			//DBConnection
			con=customer.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql ="select * from customer";
			
			rs =stmt.executeQuery(sql);
			
			while(rs.next()) {
				int customerID =rs.getInt(1);
				String cName =rs.getString(2);
				String email =rs.getString(3);
				String phone =rs.getString(4);
				String address =rs.getString(5);
				String passw =rs.getString(6);
				
				customerModel cM =new customerModel(customerID,cName,email,phone,address,passw);
				customers.add(cM);
			}
					
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		return customers;
		
	}
	//Update Data
	public static boolean updatedata(String customerID,String cName,String email,String phone,String address,String passw) {
		try {
			con=customer.getConnection();
			stmt=con.createStatement();
			
	  //SQL Query
			String sql = "UPDATE customer SET cName='"+cName+"', email='"+email+"', phone='"+phone+"', address='"+address+"', passw='"+passw+"' "
		             + "WHERE customerID='"+customerID+"'";

			

			int rs =stmt.executeUpdate(sql);
			
			if(rs >0) {
				isSuccess =true;
			}
			else {
				isSuccess =false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
    //Delete Data
    public static boolean deletedata(String customerID) {
    	int convID=Integer.parseInt(customerID);
    	try {
    		//DBConnection
			con=customer.getConnection();
			stmt=con.createStatement();
			String sql= "delete from customer where customerID = '"+convID+"'";
			int rs =stmt.executeUpdate(sql);
			
			if(rs >0) {
				isSuccess =true;
			}
			else {
				isSuccess =false;
			}
    	  }
			catch(Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
    	}


    //Login validate
	public static List<customerModel> loginValidate(String email,String passw){
		
		ArrayList<customerModel> customers =new ArrayList<>();
		
		try{
			
			con=customer.getConnection();
			stmt=con.createStatement();
			
			String sql= "select * from customer where email='"+email+"' and passw='"+passw+"'";
			rs =stmt.executeQuery(sql);
			
			while(rs.next()) {
				int customerID =rs.getInt("customerID");
				String cName =rs.getString(2);
				String dbemail =rs.getString("email");
				String phone =rs.getString(4);
				String address =rs.getString(5);
				String dbpassw =rs.getString("passw");
				
				customerModel cM =new customerModel(customerID,cName,dbemail,phone,address,dbpassw);
				customers.add(cM);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return customers;
		
	}

	}
	