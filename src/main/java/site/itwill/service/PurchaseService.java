package site.itwill.service;

import java.util.List;

import site.itwill.dto.*;

public interface PurchaseService {
	//�����Է�
		void addPurchase(PurchaseDTO purchase);
		//����ǰ�Ǽ� ��ü ���
		List<PurchaseDTO>getPurchaseList(int empNo);
		//�������ó��
		void modifySigner1(PurchaseDTO purchase);
		//���� �ݷ�ó��
		void modifyApproveReturn(PurchaseDTO purchase);

		//����ó���� 
		List<PurchaseDTO>getApprove1List(int empNo);
		//����ó�� ������ �ϳ��� ���
		PurchaseDTO getPurchaseTest(int draftNo);
		
		//����ݷ���
		List<PurchaseDTO>getRejectLsit (int empNo);
		
}