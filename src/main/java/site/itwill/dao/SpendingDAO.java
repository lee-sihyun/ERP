package site.itwill.dao;

import java.util.List;

import site.itwill.dto.SpendingDTO;

public interface SpendingDAO {



	
	
	//������Ǽ� �Է�	
	int insertSpending(SpendingDTO spending);

	List<SpendingDTO>selectSpending(int empNo);
	//
	SpendingDTO selectSpendingTest(int draftNo);

	//empNo���

	//�ݷ����� ���
	List <SpendingDTO>reject(int empNo);


	List<SpendingDTO>approve1(int empNo);


	//���� ó��
	int updateSignerOne(SpendingDTO spending);



	//�ݷ����º���
	int updateApproveReturn(SpendingDTO spending);

}