package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.*;

public interface PurchaseMapper {
	
	
	//����ǰ�Ǽ� �Է�	
	int insertPurchase(PurchaseDTO purchase);

	//���� �ۼ��� ���� ǰ�Ǽ� ��ü ���
	List<PurchaseDTO>selectPurchase(int empNo);
	
	//�󼼹��� ���
	PurchaseDTO selectPurchaseTest(int draftNo);



	//�ݷ����� ���
	List <PurchaseDTO>reject(int empNo);

	//ó�������� ���
	List<PurchaseDTO>approve1(int empNo);


	//�������
	int updateSignerOne(PurchaseDTO purchase);
	//����ݷ�
	int updateApproveReturn(PurchaseDTO purchase);

}