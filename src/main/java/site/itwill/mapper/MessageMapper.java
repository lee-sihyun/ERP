package site.itwill.mapper;

import java.util.List;
import java.util.Map;

import site.itwill.dto.EmployeeDTO;
import site.itwill.dto.MessageDTO;

//DTO 컬럼명이랑 똑같이 써야함

public interface MessageMapper {
	//여러개 출력하려면 List
	
	//쪽지보내기
	int sendMsg(MessageDTO msg);
	
	//주소록에서 보내는 사람 검색
	int searchAddress();
	
	//받은 쪽지함
	List<MessageDTO> recvMsgBox(int logNo);
	
	//보낸 쪽지함
	List<MessageDTO> sendMsgBox(int logNo);
	
	//쪽지 보관함
	List<MessageDTO> myMsgBox(int logNo);
	
	//받은쪽지내용확인
	MessageDTO recvMsgView(int msgNo);
	
	//보낸쪽지내용확인
	MessageDTO sendMsgView(int msgNo);
	
	//받은 쪽지함 또는 보낸 쪽지함에서 쪽지보관함으로 이동하기
	int moveMsgBox(List<Integer> list);
	
	//쪽지 삭제 
	int deleteMsg(List<Integer> list);
	
	// 답장에서 선택한 사람 저장
	int replyMessageList(List<Integer> num);

	// 답장선택
	MessageDTO replyEmpNo(int[] replyEmpNo);

	// --------------------------------------------------------------------------------
	// 주소록에서 선택한 사람 저장
	MessageDTO selectAddress(List<Integer> empNo);
	
	//받은 쪽지함 쪽지 갯수 반환
	int countRecvMsg(int empNo);
	
	//보낸 쪽지함 쪽지 갯수 반환
	int countSendMsg(MessageDTO sendMsg);
	
	//쪽지 보관함 쪽지 갯수 반환
	int countMyMsgBox(MessageDTO myMsg);
	
	//전체 검색
	List<MessageDTO> allSearchMsg();
	
	//키워드 검색
	 int selectSendMsgTotal(Map<String, Object> map);
	
	//보낸쪽지함 페이징 처리
	List<MessageDTO> PageSendMsg(Map<String, Object> map);
	
	//받은쪽지함 페이징 처리
	List<MessageDTO> PageRecvMsg(Map<String, Object> map);
	
	
	
	
	
}
