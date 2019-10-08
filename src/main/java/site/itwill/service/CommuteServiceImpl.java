package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.CommuteDAO;
import site.itwill.dto.CommuteDTO;
import site.itwill.dto.CommuteVO;


@Service
public class CommuteServiceImpl implements CommuteService {
	
	@Autowired
	private CommuteDAO commuteDAO;
	
	@Override
	public void addCommuteGo(CommuteDTO commute) {
		commuteDAO.insertCommuteGo(commute);
	}

	@Override
	public void modifyCommuteOut(CommuteDTO commute) {
		commuteDAO.updateCommuteOut(commute);
	}

	@Override
	public CommuteVO getUserCommute(int empNo) {
		return commuteDAO.selectCommute(empNo);
	}

	@Override
	public List<CommuteVO> getUserCommuteList() {
		return commuteDAO.selectAllCommute();
	}

	@Override
	public CommuteDTO checkUserGotime(int empNo) {
		return commuteDAO.selectGotimeUser(empNo);
	}

	@Override
	public CommuteDTO checkUserOuttime(int empNo) {
		return commuteDAO.selectOuttimeUser(empNo);
	}

	
	
}
