package actionclass;

import java.sql.Date;

import dao.ResumeDao;
import entity.Resume;

public class CreateResumeAction {
	Integer positionId;
	String name;
	String school;
	String background;
	String age;
	String description;
	String phone;
	String email;
	
	ResumeDao resumeDao;
	
	public String execute(){
		Date date = new Date(new java.util.Date().getTime());
		Resume resume = new Resume(name, school, background, age, description, phone, email, date, null, positionId);
		resumeDao.save(resume);
		return "success";
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getBackground() {
		return background;
	}
	public void setBackground(String background) {
		this.background = background;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}


	public Integer getPositionId() {
		return positionId;
	}


	public void setPositionId(Integer positionId) {
		this.positionId = positionId;
	}


	public ResumeDao getResumeDao() {
		return resumeDao;
	}


	public void setResumeDao(ResumeDao resumeDao) {
		this.resumeDao = resumeDao;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
