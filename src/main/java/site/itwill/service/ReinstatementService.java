package site.itwill.service;

import java.util.*;

import site.itwill.dto.*;

public interface ReinstatementService {
	//�����Է�
		void addReinstatement(ReinstatementDTO reinstatement);
		//������Ǽ� ��ü ���
		List<ReinstatementDTO>getReinstatementList(int empNo);
		//�������ó��
		void modifySigner1(ReinstatementDTO reinstatement);
		//���� �ݷ�ó��
		void modifyApproveReturn(ReinstatementDTO reinstatement);

		//����ó���� 
		List<ReinstatementDTO>getApprove1List(int empNo);
		//����ó�� ������ �ϳ��� ���
		ReinstatementDTO getReinstatementTest(int draftNo);
		
		//����ݷ���
		List<ReinstatementDTO>getRejectLsit (int empNo);
		
}