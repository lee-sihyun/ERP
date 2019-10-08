package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.CommuteDTO;
import site.itwill.dto.CommuteVO;
import site.itwill.mapper.CommuteMapper;


@Repository
public class CommuteMybatisDAO implements CommuteDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertCommuteGo(CommuteDTO commute) {
		return sqlSession.getMapper(CommuteMapper.class).insertCommuteGo(commute);
	}

	@Override
	public int updateCommuteOut(CommuteDTO commute) {
		return sqlSession.getMapper(CommuteMapper.class).updateCommuteOut(commute);
	}

	@Override
	public CommuteVO selectCommute(int empNo) {
		return sqlSession.getMapper(CommuteMapper.class).selectCommute(empNo);
	}

	@Override
	public List<CommuteVO> selectAllCommute() {
		return sqlSession.getMapper(CommuteMapper.class).selectAllCommute();
	}

	@Override
	public CommuteDTO selectGotimeUser(int empNo) {
		return sqlSession.getMapper(CommuteMapper.class).selectGotimeUser(empNo);
	}

	@Override
	public CommuteDTO selectOuttimeUser(int empNo) {
		return sqlSession.getMapper(CommuteMapper.class).selectOuttimeUser(empNo);
	}

	

	

}
