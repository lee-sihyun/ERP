package site.itwill.service;

import java.util.List;

import site.itwill.dto.*;

public interface ResignationService {

	
	
	
	void addResignation(ResignationDTO resignation);
	// ��ü ���
	List<ResignationDTO>getResignationList(int empNo);
	//�������ó��
	void modifySigner1(ResignationDTO resignation);
	//���� �ݷ�ó��
	void modifyApproveReturn(ResignationDTO resignation);

	//����ó���� 
	List<ResignationDTO>getApprove1List(int empNo);
	//����ó�� ������ �ϳ��� ���
	ResignationDTO getResignationTest(int draftNo);
	
	//����ݷ���
	List<ResignationDTO>getRejectLsit (int empNo);
}