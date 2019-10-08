package site.itwill.service;

import java.util.List;

import site.itwill.dto.SpendingDTO;

public interface SpendingService {

	//결재입력
	void addSpending(SpendingDTO spending);
	//지출결의서 전체 출력
	List<SpendingDTO>getSpendingList(int empNo);
	//결재승인처리
	void modifySigner1(SpendingDTO spending);
	//결재 반려처리
	void modifyApproveReturn(SpendingDTO spending);

	//결재처리함 
	List<SpendingDTO>getApprove1List(int empNo);
	//결재처리 문서함 하나씩 출력
	SpendingDTO getSpendingTest(int draftNo);
	
	//결재반려함
	List<SpendingDTO>getRejectLsit (int empNo);
	
	
}
