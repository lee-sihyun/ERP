package site.itwill.dto;
/*����
 * 
 DRAFT_NO             NOT NULL NUMBER         
EMP_NO                        NUMBER         
WRITER               NOT NULL VARCHAR2(20)   
WRITE_DATE           NOT NULL DATE           
RESIGNATION_DATE     NOT NULL VARCHAR2(4000) 
RESIGNATION_REASON   NOT NULL VARCHAR2(4000) 
SIGNER_ONE           NOT NULL NUMBER         
SIGNER_ONE_APPROVE   NOT NULL NUMBER         
SIGNER_TWO                    NUMBER         
SIGNER_TWO_APPROVE            NUMBER         
SIGNER_THREE                  NUMBER         
SIGNER_THREE_APPROVE          NUMBER         
APPROVE              NOT NULL NUMBER         
,

 * 
 * */
public class ResignationDTO {
	private int draftNo;
	private int empNo;
	private String writer;
	private String writeDate;
	private String resignationDate;
	private String resignationReason;
	
	
	private int signerOne;
	private int signerOneApprove;
	private int signerTwo;
	private int signerTwoApprove;
	private int signerThree;
	private int signerThreeApprove;
	private int approve;
	
	
	public ResignationDTO() {
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


	public String getResignationDate() {
		return resignationDate;
	}


	public void setResignationDate(String resignationDate) {
		this.resignationDate = resignationDate;
	}


	public String getResignationReason() {
		return resignationReason;
	}


	public void setResignationReason(String resignationReason) {
		this.resignationReason = resignationReason;
	}


	public int getSignerOne() {
		return signerOne;
	}


	public void setSignerOne(int signerOne) {
		this.signerOne = signerOne;
	}


	public int getSignerOneApprove() {
		return signerOneApprove;
	}


	public void setSignerOneApprove(int signerOneApprove) {
		this.signerOneApprove = signerOneApprove;
	}


	public int getSignerTwo() {
		return signerTwo;
	}


	public void setSignerTwo(int signerTwo) {
		this.signerTwo = signerTwo;
	}


	public int getSignerTwoApprove() {
		return signerTwoApprove;
	}


	public void setSignerTwoApprove(int signerTwoApprove) {
		this.signerTwoApprove = signerTwoApprove;
	}


	public int getSignerThree() {
		return signerThree;
	}


	public void setSignerThree(int signerThree) {
		this.signerThree = signerThree;
	}


	public int getSignerThreeApprove() {
		return signerThreeApprove;
	}


	public void setSignerThreeApprove(int signerThreeApprove) {
		this.signerThreeApprove = signerThreeApprove;
	}


	public int getApprove() {
		return approve;
	}


	public void setApprove(int approve) {
		this.approve = approve;
	}








	
	
}
