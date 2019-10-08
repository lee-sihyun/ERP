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
        
        //�Էµ� ȸ�������� ��й�ȣ�� ��ȣȭ ó���Ͽ� ����
        // => JavaBean Ŭ������ Setter �޼ҵ忡�� �۾��� ��� ����
        //BCrypt.hashpw(String password, String salt) : ���޹��� ��й�ȣ��
        //÷����(Salt)�� �̿��Ͽ� ��ȣȭ ó�� �� ��ȯ�ϴ� �޼ҵ�
        //BCrypt.gensalt(int log_rounds) : ÷������ ���̸� �����Ͽ� �������� ÷������ �����Ͽ� ��ȯ�ϴ� �޼ҵ�
        // => �Ű����� ���ް� ���� ���� - �⺻�� : 10
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
            throw new LoginAuthFailException(employeeDTO.getEmpNo(), "��������� �������� �ʽ��ϴ�.");
        }
        
        //BCrypt.checkpw(String plantText, String hashed)
        // => �Ϲ� ���ڿ��� ��ȣȭ�� ���ڿ��� ���Ͽ� ���� ��� true�� ��ȯ�ϴ� �޼ҵ�
        if(!BCrypt.checkpw(employeeDTO.getPassword(), authUserinfo.getPassword())) {
            throw new LoginAuthFailException(employeeDTO.getEmpNo(), "���̵� ���ų� ��й�ȣ�� ���� �ʽ��ϴ�.");
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