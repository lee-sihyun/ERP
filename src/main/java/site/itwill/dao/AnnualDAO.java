package site.itwill.dao;

import java.util.List;

import site.itwill.dto.AnnualDTO;
import site.itwill.dto.AnnualVO;
import site.itwill.dto.EmployeeDTO;

public interface AnnualDAO {
	int insertAnnual(AnnualDTO annual);
	int updateEmployee(EmployeeDTO emp);
	//int deleteAnnual(List<Integer> list);
	int deleteAnnual(List<Integer> list);
	AnnualVO selectAnnual(int empNo);
	List<AnnualVO> selectAllAnnual();
}
