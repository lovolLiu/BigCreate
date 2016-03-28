package actionclass;

import dao.ResumeDao;
import entity.Resume;

public class ResumeDetailAction {
	int id;
	ResumeDao resumeDao;
	Resume resume;
	
	public String execute(){
		resume = resumeDao.get(id);
		return "success";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public ResumeDao getResumeDao() {
		return resumeDao;
	}

	public void setResumeDao(ResumeDao resumeDao) {
		this.resumeDao = resumeDao;
	}

	public Resume getResume() {
		return resume;
	}

	public void setResume(Resume resume) {
		this.resume = resume;
	}
	
	
	
}
