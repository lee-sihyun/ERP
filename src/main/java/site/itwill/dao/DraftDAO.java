package site.itwill.dao;

import java.util.List;

import site.itwill.dto.DraftDTO;

public interface DraftDAO {

	int insertDraft(DraftDTO draft);
	
	List<DraftDTO>selectDraft(int empNo);
	
	
	//9/30����׽�Ʈ 

	DraftDTO selectDraftTest(int draftNo);
	

	

	//10/3 emp �߰� 10/1 approve ������ ���
	List<DraftDTO>approve1(int empNo);

	//10/1 �ݷ��� ����- 10/8 ����
	
	List<DraftDTO>reject(int empNo);
	
	int updateSignerOne(DraftDTO draft);
	
	int updateApproveReturn(DraftDTO draft);

	
	
	

	
	
	
	
	
	
	
}