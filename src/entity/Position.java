package entity;

import java.sql.Date;

public class Position {
	int id;
	String positionName;
	String department;
	String salaryMin;
	String salaryMax;
	String workAddress;
	String positionAdvantage;
	String positionAddress;
	String jobDescription;
	String forwardEmail;
	Date createDate;
	
	public Position(){}
	

	
	public Position(String positionName, String department, String salaryMin, String salaryMax, String workAddress,
			String positionAdvantage, String positionAddress, String jobDescription, String forwardEmail,
			Date createDate) {
		super();
		this.positionName = positionName;
		this.department = department;
		this.salaryMin = salaryMin;
		this.salaryMax = salaryMax;
		this.workAddress = workAddress;
		this.positionAdvantage = positionAdvantage;
		this.positionAddress = positionAddress;
		this.jobDescription = jobDescription;
		this.forwardEmail = forwardEmail;
		this.createDate = createDate;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getSalaryMin() {
		return salaryMin;
	}
	public void setSalaryMin(String salaryMin) {
		this.salaryMin = salaryMin;
	}
	public String getSalaryMax() {
		return salaryMax;
	}
	public void setSalaryMax(String salaryMax) {
		this.salaryMax = salaryMax;
	}
	public String getWorkAddress() {
		return workAddress;
	}
	public void setWorkAddress(String workAddress) {
		this.workAddress = workAddress;
	}
	public String getPositionAdvantage() {
		return positionAdvantage;
	}
	public void setPositionAdvantage(String positionAdvantage) {
		this.positionAdvantage = positionAdvantage;
	}
	public String getPositionAddress() {
		return positionAddress;
	}
	public void setPositionAddress(String positionAddress) {
		this.positionAddress = positionAddress;
	}
	public String getForwardEmail() {
		return forwardEmail;
	}
	public void setForwardEmail(String forwardEmail) {
		this.forwardEmail = forwardEmail;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}
	
	
}
