package site.itwill.dao;

import java.util.List;

import site.itwill.dto.PurchaseDTO;

public interface PurchaseDAO {
	//구매품의서 입력	
	int insertPurchase(PurchaseDTO purchase);

	//내가 작성한 구매 품의서 전체 출력
	List<PurchaseDTO>selectPurchase(int empNo);
	
	//상세문서 출력
	PurchaseDTO selectPurchaseTest(int draftNo);



	//반려문서 출력
	List <PurchaseDTO>reject(int empNo);

	//처리결재함 출력
	List<PurchaseDTO>approve1(int empNo);


	//결재승인
	int updateSignerOne(PurchaseDTO purchase);
	//결재반려
	int updateApproveReturn(PurchaseDTO purchase);
}
