package site.itwill.service;

import java.util.List;

import site.itwill.dto.CommuteDTO;
import site.itwill.dto.CommuteVO;

public interface CommuteService {
	void addCommuteGo(CommuteDTO commute);
	//void addCommuteOut(CommuteDTO commute);
	void modifyCommuteOut(CommuteDTO commute);
	CommuteVO getUserCommute(int empNo);
	List<CommuteVO> getUserCommuteList();
	CommuteDTO checkUserGotime(int empNo);
	CommuteDTO checkUserOuttime(int empNo);
}
