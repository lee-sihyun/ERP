package site.itwill.dto;

import java.util.Date;

/*
이름            널? 유형     
------------- -- ------ 
ANNUAL_NO        NUMBER 
DEPT_NO          NUMBER 
EMP_NO           NUMBER 
ANNUAL_STATUS    NUMBER 
ANNUAL_START     DATE   
ANNUAL_END       DATE
EMP_BREAK        NUMBER
 */
public class AnnualDTO {
	private int annualNo;
	private int deptNo;
	private int empNo;
	private int annualStatus;
	private Date annualStart;
	private Date annualEnd;
	
	public AnnualDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getAnnualNo() {
		return annualNo;
	}

	public void setAnnualNo(int annualNo) {
		this.annualNo = annualNo;
	}

	public int getDeptNo() {
		return deptNo;
	}

	public void setDeptNo(int deptNo) {
		this.deptNo = deptNo;
	}

	public int getEmpNo() {
		return empNo;
	}

	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}

	public int getAnnualStatus() {
		return annualStatus;
	}

	public void setAnnualStatus(int annualStatus) {
		this.annualStatus = annualStatus;
	}

	public Date getAnnualStart() {
		return annualStart;
	}

	public void setAnnualStart(Date annualStart) {
		this.annualStart = annualStart;
	}

	public Date getAnnualEnd() {
		return annualEnd;
	}

	public void setAnnualEnd(Date annualEnd) {
		this.annualEnd = annualEnd;
	}
	
}
