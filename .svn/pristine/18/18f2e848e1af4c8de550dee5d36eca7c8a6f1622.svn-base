package site.itwill.dao;

import java.util.List;

import site.itwill.dto.ReinstatementDTO;

public interface ReinstatementDAO {
	
	int insertReinstatement(ReinstatementDTO reinstatement);

	//내가 작성한 구매 품의서 전체 출력
	List<ReinstatementDTO>selectReinstatement(int empNo);
	
	//상세문서 출력
	ReinstatementDTO selectReinstatementTest(int draftNo);



	//반려문서 출력
	List <ReinstatementDTO>reject(int empNo);

	//처리결재함 출력
	List<ReinstatementDTO>approve1(int empNo);


	//결재승인
	int updateSignerOne(ReinstatementDTO reinstatement);
	//결재반려
	int updateApproveReturn(ReinstatementDTO reinstatement);
	
}
