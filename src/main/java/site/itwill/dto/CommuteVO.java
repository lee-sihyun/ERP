package site.itwill.dto;

import java.util.Date;

public class CommuteVO {
	private String empName;
	private String deptName;
	private Date commuteGotime;
	private Date commuteOuttime;
	
	public CommuteVO() {
		// TODO Auto-generated constructor stub
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
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
