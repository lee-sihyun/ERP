package site.itwill.service;

import java.util.List;
import java.util.Map;

import site.itwill.dto.EmployeeDTO;
import site.itwill.dto.MessageDTO;

public interface MessageService {
	
	//����������
	void sendMessage(MessageDTO message);
	
	//�ּҷϿ��� ������ ��� �˻�
	int findAddress(Map<String, Object> searchMap);
	
	//���� ������
	List<MessageDTO> receiveMessageBox(int logNo);
	
	//���� ������
	List<MessageDTO> sendMessageBox(int logNo);
	
	//���� ������
	List<MessageDTO> myMessageBox(int logNo);
	
	//������������Ȯ��
	MessageDTO recvMsgView(int msgNo);
			
	//������������Ȯ��
	MessageDTO sendMsgView(int msgNo);
	
	//���������Կ��� �������������� �̵�
	int moveMsgBox(List<Integer> list);
	
	//���� ����
	int deleteMessage(List<Integer> list);
	
	//���� ������ ���� ���� ��ȯ
	int countReceviceMessage(int empNo);
	
	//���� ������ ���� ���� ��ȯ
	void countsendeMessage(MessageDTO sendMsg);
	
	//���� ������ ���� ���� ��ȯ
	void countMyMessage(MessageDTO myMsg);
	
	//��ü �˻�
	List<MessageDTO> allFindMessage();
	
	//Ű���� �˻�
	 int selectSendMsgTotal(Map<String, Object> map);

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