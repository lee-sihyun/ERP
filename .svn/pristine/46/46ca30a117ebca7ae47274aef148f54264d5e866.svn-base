package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.ConferenceDTO;
import site.itwill.mapper.ConferenceMapper;

@Repository
public class ConferenceMybatisDAO implements ConferenceDAO {

	
	
	@Autowired
	private  SqlSession sqlSession;

	@Override
	public int insertConference(ConferenceDTO conference) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ConferenceMapper.class).insertConference(conference);
	}

	@Override
	public List<ConferenceDTO> selectConference(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ConferenceMapper.class).selectConference(empNo);
	}

	@Override
	public ConferenceDTO selectConferenceTest(int draftNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ConferenceMapper.class).selectConferenceTest(draftNo);
				
	}

	@Override
	public List<ConferenceDTO> reject(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ConferenceMapper.class).reject(empNo);	
		
	}

	@Override
	public List<ConferenceDTO> approve1(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ConferenceMapper.class).approve1(empNo);
	}

	@Override
	public int updateSignerOne(ConferenceDTO conference) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ConferenceMapper.class).updateSignerOne(conference);
	}

	@Override
	public int updateApproveReturn(ConferenceDTO conference) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ConferenceMapper.class).updateApproveReturn(conference);
				
	}


	
	
	
	
	
}
