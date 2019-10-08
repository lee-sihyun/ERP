package site.itwill.service;

import java.util.*;

import site.itwill.dto.DraftDTO;




public interface DraftService {

	void addDraft(DraftDTO draft);
	List<DraftDTO>getDraftList(int empNo);
	void modifySigner1(DraftDTO draft);
	void modifyApproveReturn(DraftDTO draft);
	
	
	//9/30 추가
	DraftDTO getDraftTest(int draftNo);
	
	
	//10/1 추가 10/3 emp추가 
	List<DraftDTO>getApprove1List(int empNo);
	
	
	//10/1추가 반려된문서 
	
	List<DraftDTO>getRejectList(int empNo);
	
	 
}
