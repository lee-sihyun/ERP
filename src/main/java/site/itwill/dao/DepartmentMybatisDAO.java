package site.itwill.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Department;
import site.itwill.mapper.DepartmentMapper;

@Repository
public class DepartmentMybatisDAO implements DepartmentDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertDepartment(Department department) {
		return sqlSession.getMapper(DepartmentMapper.class).insertDepartment(department);
	}

	@Override
	public int updateDepartment(Department department) {
		return sqlSession.getMapper(DepartmentMapper.class).updateDepartment(department);
	}

	@Override
	public int deleteDepartment(int deptNo) {
		return sqlSession.getMapper(DepartmentMapper.class).deleteDepartment(deptNo);
	}
}
