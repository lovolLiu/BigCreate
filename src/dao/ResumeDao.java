package dao;

import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import entity.Position;
import entity.Resume;

public class ResumeDao extends HibernateDaoSupport {
	public Integer save(Resume resume){
		return (Integer)getHibernateTemplate().save(resume);
	}
	
	public Resume get(Integer id){
		return getHibernateTemplate().get(Resume.class, id);
	}
	
	public List<Resume> getAll(){
		return getHibernateTemplate()
				.find("from Resume r");
	}
	
	public List<Resume> findByPositionId(Integer positionId){
		return (List<Resume>)getHibernateTemplate()
				.find("from Resume r where r.position_id = ?", positionId);
	}
	
}
