package site.itwill.mapper;

import java.util.List;
import java.util.Map;

import site.itwill.dto.EmployeeDTO;

public interface EmpMapper {
    int insertEmp(EmployeeDTO employeeDTO);
    int selectSeq(int deptNo);
    EmployeeDTO selectEmp(int empNo);
    int deleteEmp(List<Integer> list);
    int updateEmp(EmployeeDTO employeeDTO);
    int updateEmpStatus(Map<String, Object> map);
    List<EmployeeDTO> selectEmpList(Map<String, Object> map);
    int selectEmpTotal(Map<String, Object> map);
    int selectInaddressTotal(Map<String, Object> map);
    List<EmployeeDTO> selectInaddressList(Map<String, Object> map);
    String selectDeptName(int empNo);
    
}
