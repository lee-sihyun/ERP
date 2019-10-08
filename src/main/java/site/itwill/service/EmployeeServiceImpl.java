package site.itwill.service;

import java.util.List;
import java.util.Map;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.EmployeeDAO;
import site.itwill.dto.EmployeeDTO;
import site.itwill.exception.LoginAuthFailException;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    
    @Autowired
    private EmployeeDAO employeeDAO;
    
    @Transactional
    @Override
    public void insertEmp(EmployeeDTO employeeDTO) {
        
        //입력된 회원정보의 비밀번호는 암호화 처리하여 변경
        // => JavaBean 클래스의 Setter 메소드에서 작업할 경우 생략
        //BCrypt.hashpw(String password, String salt) : 전달받은 비밀번호에
        //첨가물(Salt)을 이용하여 암호화 처리 후 반환하는 메소드
        //BCrypt.gensalt(int log_rounds) : 첨가물의 길이를 전달하여 복합적인 첨가물을 생성하여 반환하는 메소드
        // => 매개변수 전달값 생략 가능 - 기본값 : 10
        employeeDTO.setPassword(BCrypt.hashpw(employeeDTO.getPassword(), BCrypt.gensalt(10)));
        employeeDAO.insertEmp(employeeDTO);
    }

    @Override
    public EmployeeDTO selectEmp(int empNo) {
        return employeeDAO.selectEmp(empNo);
    }
    
    @Transactional
    @Override
    public void deleteEmp(List<Integer> list) {
        employeeDAO.deleteEmp(list);
    }

    @Transactional
    @Override
    public void updateEmp(EmployeeDTO employeeDTO) {
        employeeDAO.updateEmp(employeeDTO);        
    }

    @Transactional
    @Override
    public void updateEmpStatus(Map<String, Object> map) {
        employeeDAO.updateEmpStatus(map);
    }

    @Override
    public List<EmployeeDTO> selectEmpList(Map<String, Object> map) {
        return employeeDAO.selectEmpList(map);
    }

    @Override
    public int selectEmpTotal(Map<String, Object> map) {
        return employeeDAO.selectEmpTotal(map);
    }

    @Override
    public void loginAuth(EmployeeDTO employeeDTO) throws LoginAuthFailException {
        EmployeeDTO authUserinfo=employeeDAO.selectEmp(employeeDTO.getEmpNo());
        System.out.println("employeeDTO.getEmpNo() = "+employeeDTO.getEmpNo());
        if(authUserinfo==null) {
            throw new LoginAuthFailException(employeeDTO.getEmpNo(), "사원정보가 존재하지 않습니다.");
        }
        
        //BCrypt.checkpw(String plantText, String hashed)
        // => 일반 문자열과 암호화된 문자열을 비교하여 같은 경우 true를 반환하는 메소드
        if(!BCrypt.checkpw(employeeDTO.getPassword(), authUserinfo.getPassword())) {
            throw new LoginAuthFailException(employeeDTO.getEmpNo(), "아이디가 없거나 비밀번호가 맞지 않습니다.");
        }
    }

    @Override
    public int selectSeq(int deptNo) {
        return employeeDAO.selectSeq(deptNo);
    }

    @Override
    public List<EmployeeDTO> selectInaddressList(Map<String, Object> map) {
        return employeeDAO.selectInaddressList(map);
    }

    @Override
    public int selectInaddressTotal(Map<String, Object> map) {
        return employeeDAO.selectInaddressTotal(map);
    }

	@Override
	public String selectDeptName(int empNo) {
		return employeeDAO.selectDeptName(empNo);
	}


    

}
