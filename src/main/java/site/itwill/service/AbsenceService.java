package site.itwill.service;

import java.util.List;

import site.itwill.dto.*;

public interface AbsenceService {

	

	
	void addAbsence(AbsenceDTO absence);
	// 전체 출력
	List<AbsenceDTO>getAbsenceList(int empNo);
	//결재승인처리
	void modifySigner1(AbsenceDTO absence);
	//결재 반려처리
	void modifyApproveReturn(AbsenceDTO absence);

	//결재처리함 
	List<AbsenceDTO>getApprove1List(int empNo);
	//결재처리 문서함 하나씩 출력
	AbsenceDTO getAbsenceTest(int draftNo);
	
	//결재반려함
	List<AbsenceDTO>getRejectLsit (int empNo);

}
