package actionclass;

import dao.UserDao;
import entity.User;

public class RegisterAction {
	String username;
	String passwd;
	String email;
	String gender;
	
	UserDao userDao;
	
	String failreason;
	
	public String register(){
		System.out.println(username);
		System.out.println(passwd);
		System.out.println(email);
		System.out.println(gender);
		if(isEmpty(username) || isEmpty(passwd) || isEmpty(email) || isEmpty(gender)){
			failreason = "没有正确填写必填的信息";
			return "fail";
		}
		else if(!userDao.findByUsername(username).isEmpty()){    //如果用户名已被使用
			failreason = "用户名已被使用";
			return "fail";
		}
		else{
			boolean genderbool = gender.equals("on")?true:false;
			userDao.save(new User(username,passwd,email,genderbool));
			return "success";
		}
	}

	private boolean isEmpty(String str){
		return str == null || str.equals("");
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String isGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public String getFailreason() {
		return failreason;
	}

	public void setFailreason(String failreason) {
		this.failreason = failreason;
	}
	
	
}
