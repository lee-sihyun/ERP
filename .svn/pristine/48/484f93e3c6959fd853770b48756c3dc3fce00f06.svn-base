package site.itwill.service;

import java.util.List;

import site.itwill.dto.*;

public interface ResignationService {

	
	
	
	void addResignation(ResignationDTO resignation);
	// 전체 출력
	List<ResignationDTO>getResignationList(int empNo);
	//결재승인처리
	void modifySigner1(ResignationDTO resignation);
	//결재 반려처리
	void modifyApproveReturn(ResignationDTO resignation);

	//결재처리함 
	List<ResignationDTO>getApprove1List(int empNo);
	//결재처리 문서함 하나씩 출력
	ResignationDTO getResignationTest(int draftNo);
	
	//결재반려함
	List<ResignationDTO>getRejectLsit (int empNo);
}
