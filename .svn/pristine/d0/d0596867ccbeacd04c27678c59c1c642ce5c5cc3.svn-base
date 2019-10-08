package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.SpendingDTO;
import site.itwill.mapper.DraftMapper;
import site.itwill.mapper.SpendingMapper;

@Repository
public class SpendingMybatisDAO implements SpendingDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertSpending(SpendingDTO spending) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(SpendingMapper.class).insertSpending(spending);
				
	}

	@Override
	public SpendingDTO selectSpendingTest(int draftNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(SpendingMapper.class).selectSpendingTest(draftNo);
	}

	@Override
	public List<SpendingDTO> selectSpending(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(SpendingMapper.class).selectSpending(empNo);
	}

	@Override
	public List<SpendingDTO> reject(int empNo ) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(SpendingMapper.class).reject(empNo);
	}

	@Override
	public int updateSignerOne(SpendingDTO spending) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(SpendingMapper.class).updateSignerOne(spending);
	}

	

	@Override
	public List<SpendingDTO> approve1(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(SpendingMapper.class).approve1(empNo);
	}

	@Override
	public int updateApproveReturn(SpendingDTO spending) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(SpendingMapper.class).updateApproveReturn(spending);
	}

	
	
	
	
	
	
	
}
