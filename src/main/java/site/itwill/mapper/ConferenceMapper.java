package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.*;

public interface ConferenceMapper {
	//ȸ�Ƿ� �Է�	
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