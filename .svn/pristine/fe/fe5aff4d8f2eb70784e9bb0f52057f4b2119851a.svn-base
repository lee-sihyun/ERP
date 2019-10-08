package site.itwill.service;

import java.util.List;
import java.util.Map;

import site.itwill.dto.EmployeeDTO;
import site.itwill.dto.MessageDTO;

public interface MessageService {
	
	//쪽지보내기
	void sendMessage(MessageDTO message);
	
	//주소록에서 보내는 사람 검색
	int findAddress(Map<String, Object> searchMap);
	
	//받은 쪽지함
	List<MessageDTO> receiveMessageBox(int logNo);
	
	//보낸 쪽지함
	List<MessageDTO> sendMessageBox(int logNo);
	
	//쪽지 보관함
	List<MessageDTO> myMessageBox(int logNo);
	
	//받은쪽지내용확인
	MessageDTO recvMsgView(int msgNo);
			
	//보낸쪽지내용확인
	MessageDTO sendMsgView(int msgNo);
	
	//받은쪽지함에서 쪽지보관함으로 이동
	int moveMsgBox(List<Integer> list);
	
	//쪽지 삭제
	int deleteMessage(List<Integer> list);
	
	//받은 쪽지함 쪽지 갯수 반환
	int countReceviceMessage(int empNo);
	
	//보낸 쪽지함 쪽지 갯수 반환
	void countsendeMessage(MessageDTO sendMsg);
	
	//쪽지 보관함 쪽지 갯수 반환
	void countMyMessage(MessageDTO myMsg);
	
	//전체 검색
	List<MessageDTO> allFindMessage();
	
	//키워드 검색
	 int selectSendMsgTotal(Map<String, Object> map);

	//주소록에서 선택한 사람 저장
	MessageDTO selectAddress(List<Integer> empNo);

	
	//보낸쪽지함 페이징 처리
	List<MessageDTO> PageSendMsg(Map<String, Object> map);
	
	//받은쪽지함 페이징 처리
	List<MessageDTO> PageRecvMsg(Map<String, Object> map);
	
	// 답장에서 선택한 사람 저장
	int replyMessageList(List<Integer> num);

	// 답장선택
	MessageDTO replyEmpNo(int[] replyEmpNo);
	
	
	
	
	
	
	
	
	
	
	
}
