package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.DraftDTO;

public interface DraftMapper {
	
	int insertDraft(DraftDTO draft);

	//10/2 받은문서 출력
	List<DraftDTO>selectDraft(int empNo);
	
	//9/30출력테스트 
	DraftDTO selectDraftTest(int draftNo);
	
	

	
	//10/1 approve 상태의 출력 10/3 approve empNo추가 
	List<DraftDTO>approve1(int empNo);

	//10/1 반려된 문서
	
	List<DraftDTO>reject(int empNo);
	
	//결재
	int updateSignerOne(DraftDTO draft);

	//반려상태로 변경
	int updateApproveReturn(DraftDTO draft);
	
	
	
	
	
}
