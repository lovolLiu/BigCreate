package dao;

import java.util.List;

import org.aspectj.weaver.patterns.PerSingleton;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import entity.User;

public class UserDao extends HibernateDaoSupport {
	public Integer save(User user){
		return (Integer)getHibernateTemplate().save(user);
	}
	
	public User get(Integer id){
		return getHibernateTemplate().get(User.class, id);
	}
	
	public List<User> findByUsername(String username){
		return (List<User>)getHibernateTemplate()
				.find("from User u where u.username = ?", username);
	}
	
}
