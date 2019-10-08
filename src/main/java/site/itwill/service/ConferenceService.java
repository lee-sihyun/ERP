package site.itwill.service;

import java.util.List;

import site.itwill.dto.*;

public interface ConferenceService {

	

	//입력
			void addConference(ConferenceDTO conference);
			// 전체 출력
			List<ConferenceDTO>getConferenceList(int empNo);
			//결재승인처리
			void modifySigner1(ConferenceDTO conference);
			//결재 반려처리
			void modifyApproveReturn(ConferenceDTO conference);

			//결재처리함 
			List<ConferenceDTO>getApprove1List(int empNo);
			//결재처리 문서함 하나씩 출력
			ConferenceDTO getConferenceTest(int draftNo);
			
			//결재반려함
			List<ConferenceDTO>getRejectLsit (int empNo);
	
}
