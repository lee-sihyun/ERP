package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.DraftDTO;

public interface DraftMapper {
	
	int insertDraft(DraftDTO draft);

	//10/2 �������� ���
	List<DraftDTO>selectDraft(int empNo);
	
	//9/30����׽�Ʈ 
	DraftDTO selectDraftTest(int draftNo);
	
	

	
	//10/1 approve ������ ��� 10/3 approve empNo�߰� 
	List<DraftDTO>approve1(int empNo);

	//10/1 �ݷ��� ����
	
	List<DraftDTO>reject(int empNo);
	
	//����
	int updateSignerOne(DraftDTO draft);

	//�ݷ����·� ����
	int updateApproveReturn(DraftDTO draft);
	
	
	
	
	
}