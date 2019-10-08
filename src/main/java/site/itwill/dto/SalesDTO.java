package site.itwill.dto;
/*매출보고서
 * draft_no          NUMBER          primary key, 
    emp_no            NUMBER          references fk employee(emp_no),
    writer            VARCHAR2(20)     NOT NULL, 
    write_date        DATE             NOT NULL, 
    sales_title       VARCHAR2(20)     NOT NULL, 
    sales_client      VARCHAR2(20)     NOT NULL, 
    sales_manager     VARCHAR2(20)     NOT NULL, 
    sales_last        VARCHAR2(20)     NOT NULL, 
    sales_supply      NUMBER           NOT NULL, 
    sales_tax         NUMBER           NOT NULL, 
    sales_total       NUMBER           NOT NULL, 
    client_dept       VARCHAR2(20)     NOT NULL, 
    client_manager    VARCHAR2(20)     NOT NULL, 
    client_phone      VARCHAR2(20)     NOT NULL, 
    client_email      VARCHAR2(20)     NOT NULL, 
    signer_one        VARCHAR2(20)     NOT NULL, 
    signer_two        VARCHAR2(20)     NULL, 
    singer_three      VARCHAR2(20)     NULL, 
    approve           NUMBER           NOT NULL, 
    return_reason     VARCHAR2(500)    NULL, 
    wating            VARCHAR2(20)     NOT NULL

 * 
 * 
 * */
public class SalesDTO {
	private int draftNo;
	private int empNo;
	private String writer;
	private String writeDate;
	private String   salesTitle ;
	private String   salesClient ;
	private String   salesManager ;
	private String   salesLast;
	private int   salesSupply;
	private int   salesTax;
	private int   salesTotal;
	private String   clientDept;
	private String   clientManager;
	private String   clientPhone;
	private String   clientEmail;
	private String signerOne;
	private String signerTwo;
	private String signerThree;;
	private int approve;
	private String returnReson;
	private String waiting;
	
	public SalesDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getDraftNo() {
		return draftNo;
	}

	public void setDraftNo(int draftNo) {
		this.draftNo = draftNo;
	}

	public int getEmpNo() {
		return empNo;
	}

	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}

	public String getSalesTitle() {
		return salesTitle;
	}

	public void setSalesTitle(String salesTitle) {
		this.salesTitle = salesTitle;
	}

	public String getSalesClient() {
		return salesClient;
	}

	public void setSalesClient(String salesClient) {
		this.salesClient = salesClient;
	}

	public String getSalesManager() {
		return salesManager;
	}

	public void setSalesManager(String salesManager) {
		this.salesManager = salesManager;
	}

	public String getSalesLast() {
		return salesLast;
	}

	public void setSalesLast(String salesLast) {
		this.salesLast = salesLast;
	}

	public int getSalesSupply() {
		return salesSupply;
	}

	public void setSalesSupply(int salesSupply) {
		this.salesSupply = salesSupply;
	}

	public int getSalesTax() {
		return salesTax;
	}

	public void setSalesTax(int salesTax) {
		this.salesTax = salesTax;
	}

	public int getSalesTotal() {
		return salesTotal;
	}

	public void setSalesTotal(int salesTotal) {
		this.salesTotal = salesTotal;
	}

	public String getClientDept() {
		return clientDept;
	}

	public void setClientDept(String clientDept) {
		this.clientDept = clientDept;
	}

	public String getClientManager() {
		return clientManager;
	}

	public void setClientManager(String clientManager) {
		this.clientManager = clientManager;
	}

	public String getClientPhone() {
		return clientPhone;
	}

	public void setClientPhone(String clientPhone) {
		this.clientPhone = clientPhone;
	}

	public String getClientEmail() {
		return clientEmail;
	}

	public void setClientEmail(String clientEmail) {
		this.clientEmail = clientEmail;
	}





	public String getSignerOne() {
		return signerOne;
	}

	public void setSignerOne(String signerOne) {
		this.signerOne = signerOne;
	}

	public String getSignerTwo() {
		return signerTwo;
	}

	public void setSignerTwo(String signerTwo) {
		this.signerTwo = signerTwo;
	}

	public String getSignerThree() {
		return signerThree;
	}

	public void setSignerThree(String signerThree) {
		this.signerThree = signerThree;
	}

	public int getApprove() {
		return approve;
	}

	public void setApprove(int approve) {
		this.approve = approve;
	}

	public String getReturnReson() {
		return returnReson;
	}

	public void setReturnReson(String returnReson) {
		this.returnReson = returnReson;
	}

	public String getWaiting() {
		return waiting;
	}

	public void setWaiting(String waiting) {
		this.waiting = waiting;
	}


	
	
	
	
}
