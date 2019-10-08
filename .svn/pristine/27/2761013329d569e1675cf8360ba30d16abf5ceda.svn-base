package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.AnnualDAO;
import site.itwill.dto.AnnualDTO;
import site.itwill.dto.AnnualVO;
import site.itwill.dto.EmployeeDTO;

@Service
public class AnnualServiceImpl implements AnnualService {
	
	@Autowired
	private AnnualDAO annualDAO;
	
	@Override
	public void addAnnual(AnnualDTO annual) {
		annualDAO.insertAnnual(annual);
	}

	@Override
	public int modifyEmpBreak(EmployeeDTO emp) {
		return annualDAO.updateEmployee(emp);
	}

	@Override
	public AnnualVO getAnnualUser(int empNo) {
		return annualDAO.selectAnnual(empNo);
	}

	@Override
	public List<AnnualVO> getUserAnnualList() {
		return annualDAO.selectAllAnnual();
	}

	/*
	 * @Override public int removeAnnual(List<Integer> list) { return
	 * annualDAO.deleteAnnual(list); }
	 */

	@Override
	public int removeAnnual(List<Integer> list) {
		return annualDAO.deleteAnnual(list);
	}

	

}
