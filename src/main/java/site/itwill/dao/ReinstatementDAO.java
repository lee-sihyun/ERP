package site.itwill.dao;

import java.util.List;

import site.itwill.dto.ReinstatementDTO;

public interface ReinstatementDAO {
	
	int insertReinstatement(ReinstatementDTO reinstatement);

	//���� �ۼ��� ���� ǰ�Ǽ� ��ü ���
	List<ReinstatementDTO>selectReinstatement(int empNo);
	
	//�󼼹��� ���
	ReinstatementDTO selectReinstatementTest(int draftNo);



	//�ݷ����� ���
	List <ReinstatementDTO>reject(int empNo);

	//ó�������� ���
	List<ReinstatementDTO>approve1(int empNo);


	//�������
	int updateSignerOne(ReinstatementDTO reinstatement);
	//����ݷ�
	int updateApproveReturn(ReinstatementDTO reinstatement);
	
}