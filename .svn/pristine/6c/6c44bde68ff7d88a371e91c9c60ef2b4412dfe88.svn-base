package site.itwill.exception;

//인증 실패될 경우 발생되는 예외 클래스
// => 회원정보를 이용한 인증처리 기능을 구현할 때 예외 발생
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
