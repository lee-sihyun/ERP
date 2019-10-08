package site.itwill.exception;

import site.itwill.dto.EmployeeDTO;


//���̵��� ȸ�������� ���̺��� �̹� ����Ǿ� ���� ��� �߻��ϴ� ����Ŭ����
// => ȸ������ ���忡 ���� ����� ������ �� ���� �߻�
public class UserinfoExistsException extends Exception{
    private static final long serialVersionUID = 1L;
    
    //ExceptionHandler���� ���� ���� ������ �����ϱ� ���� �ʵ�
    private EmployeeDTO employeeDTO;
    
    public UserinfoExistsException() {
        
    }
    
    public UserinfoExistsException(EmployeeDTO employeeDTO, String message) {
        super(message);
        this.employeeDTO=employeeDTO;
    }

    public EmployeeDTO getEmployeeDTO() {
        return employeeDTO;
    }

    public void setEmployeeDTO(EmployeeDTO employeeDTO) {
        this.employeeDTO = employeeDTO;
    }
    
    
    
}