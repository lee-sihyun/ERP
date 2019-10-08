package site.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.EmployeeDTO;
import site.itwill.mapper.EmpMapper;

@Repository
public class EmployeeMybatisDAO implements EmployeeDAO{
    @Autowired
    private SqlSession sqlSession;
    
    @Override
    public int insertEmp(EmployeeDTO employeeDTO) {
        return sqlSession.getMapper(EmpMapper.class).insertEmp(employeeDTO);
    }

    @Override
    public EmployeeDTO selectEmp(int empNo) {
        return sqlSession.getMapper(EmpMapper.class).selectEmp(empNo);
    }

    @Override
    public int deleteEmp(List<Integer> list) {
        return sqlSession.getMapper(EmpMapper.class).deleteEmp(list);
    }

    @Override
    public int updateEmp(EmployeeDTO employeeDTO) {
        return sqlSession.getMapper(EmpMapper.class).updateEmp(employeeDTO);
    }

    @Override
    public int updateEmpStatus(Map<String, Object> map) {
        return sqlSession.getMapper(EmpMapper.class).updateEmpStatus(map);
    }

    @Override
    public List<EmployeeDTO> selectEmpList(Map<String, Object> map) {
        return sqlSession.getMapper(EmpMapper.class).selectEmpList(map);
    }

    @Override
    public int selectEmpTotal(Map<String, Object> map) {
        return sqlSession.getMapper(EmpMapper.class).selectEmpTotal(map);
    }

    @Override
    public int selectSeq(int deptNo) {
        return sqlSession.getMapper(EmpMapper.class).selectSeq(deptNo);
    }

    @Override
    public List<EmployeeDTO> selectInaddressList(Map<String, Object> map) {
        return sqlSession.getMapper(EmpMapper.class).selectInaddressList(map);
    }

    @Override
    public int selectInaddressTotal(Map<String, Object> map) {
        return sqlSession.getMapper(EmpMapper.class).selectInaddressTotal(map);
    }

	@Override
	public String selectDeptName(int empNo) {
		return sqlSession.getMapper(EmpMapper.class).selectDeptName(empNo);
	}

}
