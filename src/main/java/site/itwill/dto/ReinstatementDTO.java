package site.itwill.dto;

/*
 * 복직
 * 
이름                   널?       유형             
-------------------- -------- -------------- 
DRAFT_NO             NOT NULL NUMBER         
EMP_NO                        NUMBER         
WRITER               NOT NULL VARCHAR2(400)  
WRITE_DATE           NOT NULL DATE           
REIN_START           NOT NULL VARCHAR2(4000) 
REIN_END             NOT NULL VARCHAR2(4000) 
REIN_DATE            NOT NULL VARCHAR2(4000) 
REIN_CONTENT         NOT NULL VARCHAR2(400)  
SIGNER_ONE           NOT NULL NUMBER         
SIGNER_ONE_APPROVE   NOT NULL NUMBER         
SIGNER_TWO                    NUMBER         
SIGNER_TWO_APPROVE            NUMBER         
SIGNER_THREE                  NUMBER         
SIGNER_THREE_APPROVE          NUMBER         
APPROVE              NOT NULL NUMBER 

 * 
 * */
public class ReinstatementDTO {
	private int draftNo;
	private int empNo;
	private String writer;
	private String writeDate;
	private String reinStart;
	private String reinEnd;
	private String reinDate;
	private String reinContent;
	
	private int signerOne;
	private int signerOneApprove;
	private int signerTwo;
	private int signerTwoApprove;
	private int signerThree;
	private int signerThreeApprove;
	private int approve;
	
	
	public ReinstatementDTO() {
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


	public String getReinStart() {
		return reinStart;
	}


	public void setReinStart(String reinStart) {
		this.reinStart = reinStart;
	}


	public String getReinEnd() {
		return reinEnd;
	}


	public void setReinEnd(String reinEnd) {
		this.reinEnd = reinEnd;
	}


	public String getReinDate() {
		return reinDate;
	}


	public void setReinDate(String reinDate) {
		this.reinDate = reinDate;
	}


	public String getReinContent() {
		return reinContent;
	}


	public void setReinContent(String reinContent) {
		this.reinContent = reinContent;
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
