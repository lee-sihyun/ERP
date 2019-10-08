package site.itwill.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

/*
이름           널?       유형             
------------ -------- -------------- 
EMP_NO       NOT NULL NUMBER          사원번호
DEPT_NO      NOT NULL NUMBER         사원부서코드
EMP_POSITION NOT NULL VARCHAR2(20)   사원직급
EMP_NAME     NOT NULL VARCHAR2(20)   사원이름
PASSWORD     NOT NULL VARCHAR2(1000) 비밀번호
EMP_MANAGER           VARCHAR2(20)   팀장확인값
EXTENSION    NOT NULL VARCHAR2(20)   내선번호
EMP_PHONE    NOT NULL VARCHAR2(20)   사원휴대폰
EMP_ADDRESS  NOT NULL VARCHAR2(50)   사원주소
EMP_EMAIL    NOT NULL VARCHAR2(20)   사원이메일
EMP_STATE    NOT NULL VARCHAR2(20)   재직상태
EMP_BREAK             NUMBER           연차
*/
public class EmployeeDTO {
    private int empNo;
    private int deptNo;
    @NotEmpty(message = "직급을 반드시 입력해 주세요.")
    private String empPosition;
    @NotEmpty(message = "이름을 반드시 입력해 주세요.")
    private String empName;
    @Pattern(regexp = "^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{8,16}$",message = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.")
    private String password ;
    private String empManager;
    @NotEmpty(message = "내선번호를 반드시 입력해 주세요.")
    private String extension ;
    @NotEmpty(message = "번호를 반드시 입력해 주세요.")
    private String empPhone ;
    @NotEmpty(message = "주소를 반드시 입력해 주세요.")
    private String empAddress;
    @Email(message = "이메일을 형식에 맞게 입력해 주세요.")
    @NotEmpty(message = "이메일을 반드시 입력해 주세요.")
    private String empEmail; 
    @NotEmpty(message = "재직상태를 반드시 입력해 주세요.")
    private String empState ;
    private double empBreak ;
    private String deptName;
    private String memo;
    
    public EmployeeDTO() {
        // TODO Auto-generated constructor stub
    }
    
    
    public String getMemo() {
        return memo;
    }


    public void setMemo(String memo) {
        this.memo = memo;
    }


    public String getDeptName() {
        return deptName;
    }


    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }


    public int getEmpNo() {
        return empNo;
    }
    public void setEmpNo(int empNo) {
        this.empNo = empNo;
    }
    public int getDeptNo() {
        return deptNo;
    }
    public void setDeptNo(int deptNo) {
        this.deptNo = deptNo;
    }
    public String getEmpPosition() {
        return empPosition;
    }
    public void setEmpPosition(String empPosition) {
        this.empPosition = empPosition;
    }
    public String getEmpName() {
        return empName;
    }
    public void setEmpName(String empName) {
        this.empName = empName;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmpManager() {
        return empManager;
    }
    public void setEmpManager(String empManager) {
        this.empManager = empManager;
    }
    public String getExtension() {
        return extension;
    }
    public void setExtension(String extension) {
        this.extension = extension;
    }
    public String getEmpPhone() {
        return empPhone;
    }
    public void setEmpPhone(String empPhone) {
        this.empPhone = empPhone;
    }
    public String getEmpAddress() {
        return empAddress;
    }
    public void setEmpAddress(String empAddress) {
        this.empAddress = empAddress;
    }
    public String getEmpEmail() {
        return empEmail;
    }
    public void setEmpEmail(String empEmail) {
        this.empEmail = empEmail;
    }
    public String getEmpState() {
        return empState;
    }
    public void setEmpState(String empState) {
        this.empState = empState;
    }
    public double getEmpBreak() {
        return empBreak;
    }
    public void setEmpBreak(double empBreak) {
        this.empBreak = empBreak;
    }
 
 
 
 
}
