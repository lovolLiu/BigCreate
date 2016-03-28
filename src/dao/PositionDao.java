package dao;

import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import entity.Position;

public class PositionDao extends HibernateDaoSupport {
	public Integer save(Position position){
		return (Integer)getHibernateTemplate().save(position);
	}
	
	public Position get(Integer id){
		return getHibernateTemplate().get(Position.class, id);
	}
	
	public List<Position> getAll(){
		return getHibernateTemplate()
				.find("from Position p");
	}
	
//	public List<Position> findByUsername(String username){
//		return (List<User>)getHibernateTemplate()
//				.find("from User u where u.username = ?", username);
//	}
	
}
