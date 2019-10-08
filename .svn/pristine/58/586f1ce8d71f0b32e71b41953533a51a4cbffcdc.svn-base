package site.itwill.service;

import java.util.*;

import site.itwill.dto.*;

public interface ReinstatementService {
	//결재입력
		void addReinstatement(ReinstatementDTO reinstatement);
		//지출결의서 전체 출력
		List<ReinstatementDTO>getReinstatementList(int empNo);
		//결재승인처리
		void modifySigner1(ReinstatementDTO reinstatement);
		//결재 반려처리
		void modifyApproveReturn(ReinstatementDTO reinstatement);

		//결재처리함 
		List<ReinstatementDTO>getApprove1List(int empNo);
		//결재처리 문서함 하나씩 출력
		ReinstatementDTO getReinstatementTest(int draftNo);
		
		//결재반려함
		List<ReinstatementDTO>getRejectLsit (int empNo);
		
}
