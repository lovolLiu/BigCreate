package entity;

import java.sql.Date;

public class Resume {
	int id;
	String name;
	String school;
	String background;
	String age;
	String description;
	String phone;
	String email;
	Date date;
	Integer user_id;
	Integer position_id;
	
	
	public Resume(){}

	public Resume(String name, String school, String background, String age, String description, String phone,
			String email, Date date, Integer user_id, Integer position_id) {
		super();
		this.name = name;
		this.school = school;
		this.background = background;
		this.age = age;
		this.description = description;
		this.phone = phone;
		this.email = email;
		this.date = date;
		this.user_id = user_id;
		this.position_id = position_id;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public Integer getPosition_id() {
		return position_id;
	}

	public void setPosition_id(Integer position_id) {
		this.position_id = position_id;
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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	

}
