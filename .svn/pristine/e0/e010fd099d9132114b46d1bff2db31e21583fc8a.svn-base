package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.*;

public interface ConferenceMapper {
	//회의록 입력	
	int insertConference(ConferenceDTO conference);

	//내가 작성한 구매 품의서 전체 출력
	List<ConferenceDTO>selectConference(int empNo);
	
	//상세문서 출력
	ConferenceDTO selectConferenceTest(int draftNo);



	//반려문서 출력
	List <ConferenceDTO>reject(int empNo);

	//처리결재함 출력
	List<ConferenceDTO>approve1(int empNo);


	//결재승인
	int updateSignerOne(ConferenceDTO conference);
	//결재반려
	int updateApproveReturn(ConferenceDTO conference);
	
	
}
