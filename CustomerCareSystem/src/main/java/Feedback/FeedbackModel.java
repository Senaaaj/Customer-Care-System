package Feedback;

public class FeedbackModel {
	private  int fid;
	private String fname;
	private String fphone;
	private String femail;
	private String connection_;
	private String branch;
	private String satisfaction;
	private String recommendation;
	private String comments;
	public FeedbackModel(int fid, String fname, String fphone, String femail, String connection_, String branch,
			String satisfaction, String recommendation, String comments) {
		super();
		this.fid = fid;
		this.fname = fname;
		this.fphone = fphone;
		this.femail = femail;
		this.connection_ = connection_;
		this.branch = branch;
		this.satisfaction = satisfaction;
		this.recommendation = recommendation;
		this.comments = comments;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFphone() {
		return fphone;
	}
	public void setFphone(String fphone) {
		this.fphone = fphone;
	}
	public String getFemail() {
		return femail;
	}
	public void setFemail(String femail) {
		this.femail = femail;
	}
	public String getConnection_() {
		return connection_;
	}
	public void setConnection_(String connection_) {
		this.connection_ = connection_;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getSatisfaction() {
		return satisfaction;
	}
	public void setSatisfaction(String satisfaction) {
		this.satisfaction = satisfaction;
	}
	public String getRecommendation() {
		return recommendation;
	}
	public void setRecommendation(String recommendation) {
		this.recommendation = recommendation;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	

}
