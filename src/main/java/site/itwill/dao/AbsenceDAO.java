package site.itwill.dao;

import java.util.List;

import site.itwill.dto.AbsenceDTO;

public interface AbsenceDAO {

	int insertAbsence(AbsenceDTO absence);

	//���� �ۼ��� ������ ��ü ���
	List<AbsenceDTO>selectAbsence(int empNo);
	
	//�󼼹��� ���
	AbsenceDTO selectAbsenceTest(int draftNo);



	//�ݷ����� ���
	List <AbsenceDTO>reject(int empNo);

	//AbsenceDTO ���
	List<AbsenceDTO>approve1(int empNo);


	//�������
	int updateSignerOne(AbsenceDTO absence);
	//����ݷ�
	int updateApproveReturn(AbsenceDTO absence);
}