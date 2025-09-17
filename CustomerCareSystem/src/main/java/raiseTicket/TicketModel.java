package raiseTicket;

public class TicketModel {
	private int ticketID;
	private String location;
	private String cPreference;
	private String category;
	private String priority;
	private String subject_;
	private String description_;
	private int customerID; 

	// Constructor with ticketID (for retrieval)
	public TicketModel(int ticketID, String location, String cPreference, String category, String priority,
			String subject_, String description_, int customerID) {
		this.ticketID = ticketID;
		this.location = location;
		this.cPreference = cPreference;
		this.category = category;
		this.priority = priority;
		this.subject_ = subject_;
		this.description_ = description_;
		this.customerID = customerID;
	}

	// Constructor without ticketID (for inserting new ticket)
	public TicketModel(String location, String cPreference, String category, String priority,
			String subject_, String description_, int customerID) {
		this.location = location;
		this.cPreference = cPreference;
		this.category = category;
		this.priority = priority;
		this.subject_ = subject_;
		this.description_ = description_;
		this.customerID = customerID;
	}

	// Getters and setters

	public int getTicketID() {
		return ticketID;
	}

	public void setTicketID(int ticketID) {
		this.ticketID = ticketID;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getcPreference() {
		return cPreference;
	}

	public void setcPreference(String cPreference) {
		this.cPreference = cPreference;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getSubject_() {
		return subject_;
	}

	public void setSubject_(String subject_) {
		this.subject_ = subject_;
	}

	public String getDescription_() {
		return description_;
	}

	public void setDescription_(String description_) {
		this.description_ = description_;
	}

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
}

