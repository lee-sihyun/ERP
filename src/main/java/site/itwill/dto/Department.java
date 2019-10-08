package site.itwill.dto;

/*
 이름        널?       유형           
--------- -------- ------------ 
DEPT_NO   NOT NULL NUMBER       
DEPT_NAME NOT NULL VARCHAR2(20)
 */
public class Department {
	private int deptNo;
	private String deptName;
	
	public Department() {
		// TODO Auto-generated constructor stub
	}

	public int getDeptNo() {
		return deptNo;
	}

	public void setDeptNo(int deptNo) {
		this.deptNo = deptNo;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	
}
