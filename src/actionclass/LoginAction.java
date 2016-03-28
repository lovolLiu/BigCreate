package actionclass;

import dao.UserDao;
import entity.User;

public class LoginAction {
	UserDao userDao;
	String username;
	String passwd;
	String failreason;
	public String login(){
		if(isEmpty(username) || isEmpty(passwd) ){
			failreason = "用户名或密码不能为空";
			return "fail";
		}
		else if(userDao.findByUsername(username).isEmpty()){    //如果用户名已被使用
			failreason = "无此用户，请注册";
			return "fail";
		}
		else{
			if(passwd.equals(userDao.findByUsername(username).get(0).getPasswd())){
				return "mainpage";
			}
		}
		
		return "success";
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
