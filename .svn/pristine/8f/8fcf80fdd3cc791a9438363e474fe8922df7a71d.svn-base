package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.AnnualDTO;
import site.itwill.dto.AnnualVO;
import site.itwill.dto.EmployeeDTO;
import site.itwill.mapper.AnnualMapper;

@Repository
public class AnnualMybatisDAO implements AnnualDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertAnnual(AnnualDTO annual) {
		return sqlSession.getMapper(AnnualMapper.class).insertAnnual(annual);
	}

	@Override
	public int updateEmployee(EmployeeDTO emp) {
		return sqlSession.getMapper(AnnualMapper.class).updateEmployee(emp);
	}

	@Override
	public AnnualVO selectAnnual(int empNo) {
		return sqlSession.getMapper(AnnualMapper.class).selectAnnual(empNo);
	}

	@Override
	public List<AnnualVO> selectAllAnnual() {
		return sqlSession.getMapper(AnnualMapper.class).selectAllAnnual();
	}

	

	/*
	 * @Override public int deleteAnnual(int annualNo) { return
	 * sqlSession.getMapper(AnnualMapper.class).deleteAnnual(annualNo); }
	 */

	@Override
	public int deleteAnnual(List<Integer> list) {
		return sqlSession.getMapper(AnnualMapper.class).deleteAnnual(list);
	}

	
	
}
