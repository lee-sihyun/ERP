package site.itwill.service;

import java.util.List;
import java.util.Map;

import site.itwill.dto.EmployeeDTO;
import site.itwill.exception.LoginAuthFailException;


public interface EmployeeService {
    void insertEmp(EmployeeDTO employeeDTO);
    EmployeeDTO selectEmp(int empNo);
    void deleteEmp(List<Integer> list);
    void updateEmp(EmployeeDTO employeeDTO);
    void updateEmpStatus(Map<String, Object> map);
    List<EmployeeDTO> selectEmpList(Map<String, Object> map);
    int selectEmpTotal(Map<String, Object> map);
    int selectInaddressTotal(Map<String, Object> map);
    List<EmployeeDTO> selectInaddressList(Map<String, Object> map);
    int selectSeq(int deptNo);
    //인증처리 메소드
    void loginAuth(EmployeeDTO employeeDTO) throws LoginAuthFailException;
    String selectDeptName(int empNo);
}
