package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.*;

public interface ReinstatementMapper {
	//����ǰ�Ǽ� �Է�	
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