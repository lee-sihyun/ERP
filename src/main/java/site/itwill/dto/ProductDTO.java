package site.itwill.dto;
/*
이름                   널?       유형             
-------------------- -------- -------------- 
DRAFT_NO             NOT NULL NUMBER         
EMP_NO                        NUMBER         
WRITER               NOT NULL NVARCHAR2(400) 
WRITE_DATE           NOT NULL DATE           
PRODUCT_TITLE        NOT NULL VARCHAR2(4000) 
PRODUCT_NAME         NOT NULL VARCHAR2(4000) 
PRODUCT_SIZE         NOT NULL VARCHAR2(4000) 
PRODUCT_AMOUNT       NOT NULL VARCHAR2(4000) 
PRODUCT_COST         NOT NULL NUMBER         
PRODUCT_PRICE        NOT NULL NUMBER         
PRODUCT_USE          NOT NULL VARCHAR2(4000) 
PRODUCT_PRICE_TOAL   NOT NULL NUMBER         
PRODUCT_MEMO         NOT NULL VARCHAR2(4000) 
SIGNER_ONE           NOT NULL NUMBER         
SIGNER_ONE_APPROVE   NOT NULL NUMBER         
SIGNER_TWO                    NUMBER         
SIGNER_TWO_APPROVE            NUMBER         
SIGNER_THREE                  NUMBER         
SIGNER_THREE_APPROVE          NUMBER         
APPROVE              NOT NULL NUMBER         


 * 
 * */
public class ProductDTO {
private int draftNo;
private int empNo;

private String writer;
private String writeDate;
private String productTitle;
private String productName;
private String productSize;
private String productAmount;

private int productCost;
private int productPrice;
private String productUse;
private int productPriceTotal;
private String productMemo;

private int signerOne;
private int signerOneApprove;
private int signerTwo;
private int signerTwoApprove;
private int signerThree;
private int signerThreeApprove;
private int approve;


	public ProductDTO() {
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


	public String getProductTitle() {
		return productTitle;
	}


	public void setProductTitle(String productTitle) {
		this.productTitle = productTitle;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public String getProductSize() {
		return productSize;
	}


	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}


	public String getProductAmount() {
		return productAmount;
	}


	public void setProductAmount(String productAmount) {
		this.productAmount = productAmount;
	}


	public int getProductCost() {
		return productCost;
	}


	public void setProductCost(int productCost) {
		this.productCost = productCost;
	}


	public int getProductPrice() {
		return productPrice;
	}


	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}


	public String getProductUse() {
		return productUse;
	}


	public void setProductUse(String productUse) {
		this.productUse = productUse;
	}


	public int getProductPriceTotal() {
		return productPriceTotal;
	}


	public void setProductPriceTotal(int productPriceTotal) {
		this.productPriceTotal = productPriceTotal;
	}


	public String getProductMemo() {
		return productMemo;
	}


	public void setProductMemo(String productMemo) {
		this.productMemo = productMemo;
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
