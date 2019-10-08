package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.AbsenceDTO;
import site.itwill.mapper.AbsenceMapper;

@Repository
public class AbsenceMybatisDAO implements AbsenceDAO{

	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertAbsence(AbsenceDTO absence) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AbsenceMapper.class).insertAbsence(absence);
	}

	@Override
	public List<AbsenceDTO> selectAbsence(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AbsenceMapper.class).selectAbsence(empNo);
	}

	@Override
	public AbsenceDTO selectAbsenceTest(int draftNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AbsenceMapper.class).selectAbsenceTest(draftNo);
	}

	@Override
	public List<AbsenceDTO> reject(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AbsenceMapper.class).reject(empNo);
		}

	@Override
	public List<AbsenceDTO> approve1(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AbsenceMapper.class).approve1(empNo);
	}

	@Override
	public int updateSignerOne(AbsenceDTO absence) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AbsenceMapper.class).updateSignerOne(absence);
	}

	@Override
	public int updateApproveReturn(AbsenceDTO absence) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AbsenceMapper.class).updateApproveReturn(absence);
	}


}
