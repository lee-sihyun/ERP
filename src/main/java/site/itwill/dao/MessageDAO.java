package site.itwill.dao;

import java.util.List;
import java.util.Map;

import site.itwill.dto.EmployeeDTO;
import site.itwill.dto.MessageDTO;

public interface MessageDAO {
	//����������
	int sendMsg(MessageDTO message);
		
	//�ּҷϿ��� ������ ��� �˻�
	int searchAddress();
		
	//���� ������
	List<MessageDTO> recvMsgBox(int logNo);
		
	//���� ������
	List<MessageDTO> sendMsgBox(int logNo);
		
	//���� ������
	List<MessageDTO> myMsgBox(int logNo);
	
	//������������Ȯ��
	MessageDTO recvMsgView(int msgNo);
		
	//������������Ȯ��
	MessageDTO sendMsgView(int msgNo);
	
	//���� ������ �Ǵ� ���� �����Կ��� ���� ���������� �̵��ϱ�
	int moveMsgBox(List<Integer> list);
		
	//���� ������ ���� ���� ��ȯ
	int countRecvMsg(int empNo);
		
	//���� ������ ���� ���� ��ȯ
	int countSendMsg(MessageDTO sendMsg);
		
	//���� ������ ���� ���� ��ȯ
	int countMyMsgBox(MessageDTO myMsg);
		
	//��ü �˻�
	List<MessageDTO> allSearchMsg();
		
	//Ű���� �˻�
	int selectSendMsgTotal(Map<String, Object> map);
	
	//��������
	int deleteMsg(List<Integer> list);
	
	//�ּҷϿ��� ������ ��� ����
	MessageDTO selectAddress(List<Integer> empNo);

	//���������� ����¡ ó��
	List<MessageDTO> PageSendMsg(Map<String, Object> map);
	
	//���������� ����¡ ó��
	List<MessageDTO> PageRecvMsg(Map<String, Object> map);
	
	// ���忡�� ������ ��� ����
	int replyMessageList(List<Integer> num);

	// ���弱��
	MessageDTO replyEmpNo(int[] replyEmpNo);
	
}