package actionclass;

import java.sql.Date;
import dao.PositionDao;
import entity.Position;

public class CreatePositionAction {
	String positionName;
	String department;
	String salaryMin;
	String salaryMax;
	String workAddress;
	String positionAdvantage;
	String positionAddress;
	String forwardEmail;
	String jobDescription;
	PositionDao positionDao;
	
	public String execute() {
		Date date = new Date(new java.util.Date().getTime());
		Position position = new Position(positionName, department, salaryMin, salaryMax, workAddress, positionAdvantage, positionAddress, jobDescription, forwardEmail, date);
		System.out.println(positionDao);
		positionDao.save(position);
		return "success";
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

	public PositionDao getPositionDao() {
		return positionDao;
	}

	public void setPositionDao(PositionDao positionDao) {
		this.positionDao = positionDao;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}
	
}
