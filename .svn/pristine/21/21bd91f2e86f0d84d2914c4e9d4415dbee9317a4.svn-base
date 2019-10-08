package site.itwill.service;

import java.util.List;

import site.itwill.dto.*;

public interface PurchaseService {
	//결재입력
		void addPurchase(PurchaseDTO purchase);
		//구매품의서 전체 출력
		List<PurchaseDTO>getPurchaseList(int empNo);
		//결재승인처리
		void modifySigner1(PurchaseDTO purchase);
		//결재 반려처리
		void modifyApproveReturn(PurchaseDTO purchase);

		//결재처리함 
		List<PurchaseDTO>getApprove1List(int empNo);
		//결재처리 문서함 하나씩 출력
		PurchaseDTO getPurchaseTest(int draftNo);
		
		//결재반려함
		List<PurchaseDTO>getRejectLsit (int empNo);
		
}
