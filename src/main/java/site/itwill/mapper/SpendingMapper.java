package site.itwill.mapper;

import java.util.*;

import site.itwill.dto.*;

public interface SpendingMapper {
	
	
	
//������Ǽ� �Է�	
int insertSpending(SpendingDTO spending);

List<SpendingDTO>selectSpending(int empNo);
//
SpendingDTO selectSpendingTest(int draftNo);

//empNo���

//�ݷ����� ���
List <SpendingDTO>reject(int empNo);


List<SpendingDTO>approve1(int empNo);


//����
int updateSignerOne(SpendingDTO spending);



//�ݷ����º���
int updateApproveReturn(SpendingDTO spending);

}