package site.itwill.exception;

//���� ���е� ��� �߻��Ǵ� ���� Ŭ����
// => ȸ�������� �̿��� ����ó�� ����� ������ �� ���� �߻�
public class LoginAuthFailException extends Exception{
    private static final long serialVersionUID = 1L;
    
    private int empNo;
    
    public LoginAuthFailException() {
        // TODO Auto-generated constructor stub
    }
    
    public LoginAuthFailException(int empNo, String message) {
        super(message);
        this.empNo=empNo;
    }

    public int getEmpNo() {
        return empNo;
    }

    public void setEmpNo(int empNo) {
        this.empNo = empNo;
    }
    
}