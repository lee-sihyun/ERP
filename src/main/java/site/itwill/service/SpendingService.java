package site.itwill.service;

import java.util.List;

import site.itwill.dto.SpendingDTO;

public interface SpendingService {

	//�����Է�
	void addSpending(SpendingDTO spending);
	//������Ǽ� ��ü ���
	List<SpendingDTO>getSpendingList(int empNo);
	//�������ó��
	void modifySigner1(SpendingDTO spending);
	//���� �ݷ�ó��
	void modifyApproveReturn(SpendingDTO spending);

	//����ó���� 
	List<SpendingDTO>getApprove1List(int empNo);
	//����ó�� ������ �ϳ��� ���
	SpendingDTO getSpendingTest(int draftNo);
	
	//����ݷ���
	List<SpendingDTO>getRejectLsit (int empNo);
	
	
}