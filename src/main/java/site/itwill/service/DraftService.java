package site.itwill.service;

import java.util.*;

import site.itwill.dto.DraftDTO;




public interface DraftService {

	void addDraft(DraftDTO draft);
	List<DraftDTO>getDraftList(int empNo);
	void modifySigner1(DraftDTO draft);
	void modifyApproveReturn(DraftDTO draft);
	
	
	//9/30 �߰�
	DraftDTO getDraftTest(int draftNo);
	
	
	//10/1 �߰� 10/3 emp�߰� 
	List<DraftDTO>getApprove1List(int empNo);
	
	
	//10/1�߰� �ݷ��ȹ��� 
	
	List<DraftDTO>getRejectList(int empNo);
	
	 
}