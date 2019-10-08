package site.itwill.dao;

import java.util.List;

import site.itwill.dto.SpendingDTO;

public interface SpendingDAO {



	
	
	//지출결의서 입력	
	int insertSpending(SpendingDTO spending);

	List<SpendingDTO>selectSpending(int empNo);
	//
	SpendingDTO selectSpendingTest(int draftNo);

	//empNo출력

	//반려문서 출력
	List <SpendingDTO>reject(int empNo);


	List<SpendingDTO>approve1(int empNo);


	//결재 처리
	int updateSignerOne(SpendingDTO spending);



	//반려상태변경
	int updateApproveReturn(SpendingDTO spending);

}
