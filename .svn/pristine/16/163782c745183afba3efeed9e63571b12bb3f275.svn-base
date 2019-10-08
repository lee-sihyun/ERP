package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.ReinstatementDTO;
import site.itwill.mapper.ReinstatementMapper;

@Repository
public class ReinstatementMybatisDAO implements ReinstatementDAO {

	
	
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertReinstatement(ReinstatementDTO reinstatement) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ReinstatementMapper.class).insertReinstatement(reinstatement);
	}

	@Override
	public List<ReinstatementDTO> selectReinstatement(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ReinstatementMapper.class).selectReinstatement(empNo);
				
	}

	@Override
	public ReinstatementDTO selectReinstatementTest(int draftNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ReinstatementMapper.class).selectReinstatementTest(draftNo);
	}

	@Override
	public List<ReinstatementDTO> reject(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ReinstatementMapper.class).reject(empNo);
				
	}

	@Override
	public List<ReinstatementDTO> approve1(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ReinstatementMapper.class).approve1(empNo);
	}

	@Override
	public int updateSignerOne(ReinstatementDTO reinstatement) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ReinstatementMapper.class).updateSignerOne(reinstatement);
	}

	@Override
	public int updateApproveReturn(ReinstatementDTO reinstatement) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ReinstatementMapper.class).updateApproveReturn(reinstatement);
	}

	
	
	
	
}
