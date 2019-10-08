package site.itwill.dao;

import java.util.List;

import site.itwill.dto.ConferenceDTO;

public interface ConferenceDAO {
	int insertConference(ConferenceDTO conference);

	//���� �ۼ��� ���� ǰ�Ǽ� ��ü ���
	List<ConferenceDTO>selectConference(int empNo);
	
	//�󼼹��� ���
	ConferenceDTO selectConferenceTest(int draftNo);



	//�ݷ����� ���
	List <ConferenceDTO>reject(int empNo);

	//ó�������� ���
	List<ConferenceDTO>approve1(int empNo);


	//�������
	int updateSignerOne(ConferenceDTO conference);
	//����ݷ�
	int updateApproveReturn(ConferenceDTO conference);
	
}