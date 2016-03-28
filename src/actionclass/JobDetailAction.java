package actionclass;

import java.util.List;

import dao.PositionDao;
import dao.ResumeDao;
import entity.Position;
import entity.Resume;

public class JobDetailAction {
	
	int id;
	
	PositionDao positionDao;
	ResumeDao resumeDao;
	
	Position position;
	List<Resume> resumes;
	
	public String execute(){
		position = positionDao.get(id);
		resumes = resumeDao.findByPositionId(id);
		return "success";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public PositionDao getPositionDao() {
		return positionDao;
	}

	public void setPositionDao(PositionDao positionDao) {
		this.positionDao = positionDao;
	}

	public Position getPosition() {
		return position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}

	public List<Resume> getResumes() {
		return resumes;
	}

	public void setResumes(List<Resume> resumes) {
		this.resumes = resumes;
	}

	public ResumeDao getResumeDao() {
		return resumeDao;
	}

	public void setResumeDao(ResumeDao resumeDao) {
		this.resumeDao = resumeDao;
	}
	
	
	
}
