package site.itwill.service;

import java.util.*;

import site.itwill.dto.*;

public interface ProductService {
	//입력
	void addProduct(ProductDTO product);
	// 전체 출력
	List<ProductDTO>getProductList(int empNo);
	//결재승인처리
	void modifySigner1(ProductDTO product);
	//결재 반려처리
	void modifyApproveReturn(ProductDTO product);

	//결재처리함 
	List<ProductDTO>getApprove1List(int empNo);
	//결재처리 문서함 하나씩 출력
	ProductDTO getProductTest(int draftNo);
	
	//결재반려함
	List<ProductDTO>getRejectLsit (int empNo);
	
	
}
