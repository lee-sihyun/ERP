package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.DraftDTO;
import site.itwill.mapper.DraftMapper;
@Repository
public class DraftMybatisDAO implements DraftDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertDraft(DraftDTO draft) {
		
		return sqlSession.getMapper(DraftMapper.class).insertDraft(draft);
	}

	@Override
	public List<DraftDTO> selectDraft(int empNo) {
				return sqlSession.getMapper(DraftMapper.class).selectDraft(empNo);
				}

	@Override
	public int updateSignerOne(DraftDTO draft) {
		
		return sqlSession.getMapper(DraftMapper.class).updateSignerOne(draft);
	}

	
	//반려
	@Override
	public int updateApproveReturn(DraftDTO draft) {

		return sqlSession.getMapper(DraftMapper.class).updateApproveReturn(draft);
	}


	

	@Override
	public DraftDTO selectDraftTest(int draftNo) {

		return sqlSession.getMapper(DraftMapper.class).selectDraftTest(draftNo);
	}

	@Override
	public List<DraftDTO> approve1(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(DraftMapper.class).approve1(empNo);
		}

	
	//반려된문서 
	@Override
	public List<DraftDTO> reject(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(DraftMapper.class).reject(empNo);
	}




	
	
}
