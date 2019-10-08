package site.itwill.dao;

import java.util.List;

import site.itwill.dto.DraftDTO;

public interface DraftDAO {

	int insertDraft(DraftDTO draft);
	
	List<DraftDTO>selectDraft(int empNo);
	
	
	//9/30출력테스트 

	DraftDTO selectDraftTest(int draftNo);
	

	

	//10/3 emp 추가 10/1 approve 상태의 출력
	List<DraftDTO>approve1(int empNo);

	//10/1 반려된 문서- 10/8 수정
	
	List<DraftDTO>reject(int empNo);
	
	int updateSignerOne(DraftDTO draft);
	
	int updateApproveReturn(DraftDTO draft);

	
	
	

	
	
	
	
	
	
	
}
