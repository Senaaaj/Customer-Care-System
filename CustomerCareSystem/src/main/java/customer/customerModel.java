package customer;

public class customerModel {
    private int customerID;
    private String cName;
    private String email;
    private String phone;
    private String address;
    private String passw;
    public customerModel(int customerID, String cName, String email, String phone, String address, String passw) {
		super();
		this.customerID = customerID;
		this.cName = cName;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.passw = passw;
	}
	
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPassw() {
		return passw;
	}
	public void setPassw(String passw) {
		this.passw = passw;
	}
}
