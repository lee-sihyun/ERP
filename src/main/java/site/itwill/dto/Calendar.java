package site.itwill.dto;

/*
이름             널?       유형            
-------------- -------- ------------- 
CAL_NO         NOT NULL NUMBER        
EMP_NO                  NUMBER        
DEPT_NO                 NUMBER        
CAL_TITLE      NOT NULL VARCHAR2(100) 
ALL_DAY                 CHAR(1)       
CAL_START_DATE NOT NULL DATE          
CAL_END_DATE   NOT NULL DATE          
CAL_GROUP      NOT NULL VARCHAR2(20)  
CAL_CATEGORY            VARCHAR2(20)  
CAL_PLACE               VARCHAR2(100) 
CAL_CONTENT             VARCHAR2(500) 
 */
public class Calendar {
	private int _id;
	private int username;
	private int deptNo;
	private String title;
	//private int allDay;
	private String start;
	private String end;
	private String type;
	private String backgroundColor;
	private String textColor;
	private String description;
	
	public Calendar() {
		// TODO Auto-generated constructor stub
	}

	public int get_id() {
		return _id;
	}

	public void set_id(int _id) {
		this._id = _id;
	}

	public int getDeptNo() {
		return deptNo;
	}

	public void setDeptNo(int deptNo) {
		this.deptNo = deptNo;
	}

	public int getUsername() {
		return username;
	}

	public void setUsername(int username) {
		this.username = username;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getBackgroundColor() {
		return backgroundColor;
	}

	public void setBackgroundColor(String backgroundColor) {
		this.backgroundColor = backgroundColor;
	}

	public String getTextColor() {
		return textColor;
	}

	public void setTextColor(String textColor) {
		this.textColor = textColor;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

		
}
