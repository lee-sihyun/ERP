package site.itwill.service;

import java.util.List;

import site.itwill.dto.*;

public interface AbsenceService {

	

	
	void addAbsence(AbsenceDTO absence);
	// ��ü ���
	List<AbsenceDTO>getAbsenceList(int empNo);
	//�������ó��
	void modifySigner1(AbsenceDTO absence);
	//���� �ݷ�ó��
	void modifyApproveReturn(AbsenceDTO absence);

	//����ó���� 
	List<AbsenceDTO>getApprove1List(int empNo);
	//����ó�� ������ �ϳ��� ���
	AbsenceDTO getAbsenceTest(int draftNo);
	
	//����ݷ���
	List<AbsenceDTO>getRejectLsit (int empNo);

}