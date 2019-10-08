package site.itwill.dao;

import java.util.List;

import site.itwill.dto.ResignationDTO;

public interface ResignationDAO {
	int insertResignation(ResignationDTO resignation);

	//���� �ۼ��� ���� ��ü ���
	List<ResignationDTO>selectResignation(int empNo);
	
	//�� ���� 
	ResignationDTO selectResignationTest(int draftNo);



	//�ݷ����� ���
	List <ResignationDTO>reject(int empNo);

	//ó�������� ���
	List<ResignationDTO>approve1(int empNo);


	//�������
	int updateSignerOne(ResignationDTO resignation);
	//����ݷ�
	int updateApproveReturn(ResignationDTO resignation);
}
