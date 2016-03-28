package actionclass;

import java.util.List;

import dao.PositionDao;
import entity.Position;

public class ListPositionAction {
	List<Position> positions;
	PositionDao positionDao;
	
	public String execute() {
		positions = positionDao.getAll();
		return "success";
	}

	public List<Position> getPositions() {
		return positions;
	}

	public void setPositions(List<Position> positions) {
		this.positions = positions;
	}

	public PositionDao getPositionDao() {
		return positionDao;
	}

	public void setPositionDao(PositionDao positionDao) {
		this.positionDao = positionDao;
	}
}
