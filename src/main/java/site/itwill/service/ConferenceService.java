package site.itwill.service;

import java.util.List;

import site.itwill.dto.*;

public interface ConferenceService {

	

	//�Է�
			void addConference(ConferenceDTO conference);
			// ��ü ���
			List<ConferenceDTO>getConferenceList(int empNo);
			//�������ó��
			void modifySigner1(ConferenceDTO conference);
			//���� �ݷ�ó��
			void modifyApproveReturn(ConferenceDTO conference);

			//����ó���� 
			List<ConferenceDTO>getApprove1List(int empNo);
			//����ó�� ������ �ϳ��� ���
			ConferenceDTO getConferenceTest(int draftNo);
			
			//����ݷ���
			List<ConferenceDTO>getRejectLsit (int empNo);
	
}