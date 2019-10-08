package site.itwill.utill;

public class Pager {

	private int pageNum;

	private int totalArticle; 

	private int pageSize; 

	private int blockSize;
	
	private int totalPage;

	private int startRow;

	private int endRow; 

	

	private int startPage; 

	private int endPage; 

	private int prevPage; 

	private int nextPage; 



	public Pager(int pageNum, int totalArticle, int pageSize, int blockSize) {
		super();
		this.pageNum = pageNum;
		this.totalArticle = totalArticle;
		this.pageSize = pageSize;
		this.blockSize = blockSize;
		
		calcPager();
		
		
	}


	
	
	

	private void calcPager() {
		
		
		totalPage=(int) Math.ceil((double)totalArticle/pageSize);
		
	
		if(pageNum<=0 || pageNum>totalPage) {
			pageNum=1;
		}
		
		
		startRow=(pageNum-1)*pageSize+1;
		endRow=pageNum*pageSize;

		if(endRow>totalArticle) {
			endRow=totalArticle;
		}
		
		

		startPage=(pageNum-1)/blockSize*blockSize+1;
		
		
		endPage=startPage+blockSize-1;
		
		if(endPage>totalPage) {
			endPage=totalPage;
		}
		
		
		prevPage=startPage-blockSize;
		nextPage=startPage+blockSize;
		
		
		
	}
	
	


	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getTotalArticle() {
		return totalArticle;
	}

	public void setTotalArticle(int totalArticle) {
		this.totalArticle = totalArticle;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getBlockSize() {
		return blockSize;
	}

	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	
	
		
	
	
	
}
