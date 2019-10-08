package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.ResignationDTO;
import site.itwill.mapper.ResignationMapper;

@Repository
public class ResignationMybatisDAO implements ResignationDAO{

	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertResignation(ResignationDTO resignation) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ResignationMapper.class).insertResignation(resignation);
	}

	@Override
	public List<ResignationDTO> selectResignation(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ResignationMapper.class).selectResignation(empNo);
	}

	@Override
	public ResignationDTO selectResignationTest(int draftNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ResignationMapper.class).selectResignationTest(draftNo);
	}

	@Override
	public List<ResignationDTO> reject(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ResignationMapper.class).reject(empNo);
		}

	@Override
	public List<ResignationDTO> approve1(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ResignationMapper.class).approve1(empNo);
	}

	@Override
	public int updateSignerOne(ResignationDTO resignation) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ResignationMapper.class).updateSignerOne(resignation);
	}

	@Override
	public int updateApproveReturn(ResignationDTO resignation) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ResignationMapper.class).updateApproveReturn(resignation);
	}



	
	
}
