package site.itwill.dto;

import java.util.Date;

/*
이름              널? 유형     
--------------- -- ------ 
COMMUTE_NO         NUMBER
DEPT_NO            NUMBER 
EMP_NO             NUMBER 
COMMUTE_STATUS     NUMBER 
COMMUTE_GOTIME     DATE   
COMMUTE_OUTTIME    DATE   
 */
public class CommuteDTO {
	private int commuteNo;
	private int deptNo;
	private int empNo;
	private int commuteStatus;
	private Date commuteGotime;
	private Date commuteOuttime;
	
	public CommuteDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getCommuteNo() {
		return commuteNo;
	}

	public void setCommuteNo(int commuteNo) {
		this.commuteNo = commuteNo;
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

	public int getCommuteStatus() {
		return commuteStatus;
	}

	public void setCommuteStatus(int commuteStatus) {
		this.commuteStatus = commuteStatus;
	}

	public Date getCommuteGotime() {
		return commuteGotime;
	}

	public void setCommuteGotime(Date commuteGotime) {
		this.commuteGotime = commuteGotime;
	}

	public Date getCommuteOuttime() {
		return commuteOuttime;
	}

	public void setCommuteOuttime(Date commuteOuttime) {
		this.commuteOuttime = commuteOuttime;
	}

	
}
