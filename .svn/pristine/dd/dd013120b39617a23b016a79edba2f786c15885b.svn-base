package site.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.MessageDAO;
import site.itwill.dto.EmployeeDTO;
import site.itwill.dto.MessageDTO;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	private MessageDAO messageDAO;

	@Override
	public void sendMessage(MessageDTO message) {
		messageDAO.sendMsg(message);
	}

	@Override
	public List<MessageDTO> receiveMessageBox(int logNo) {
		return  messageDAO.recvMsgBox(logNo);
	}
	
	@Override
	public List<MessageDTO> sendMessageBox(int logNo) {
		return messageDAO.sendMsgBox(logNo);
	}

	

	@Override
	public int countReceviceMessage(int empNo) {
		return messageDAO.countRecvMsg(empNo);
	}

	@Override
	public void countsendeMessage(MessageDTO sendMsg) {
		messageDAO.countSendMsg(sendMsg);
		
	}

	@Override
	public void countMyMessage(MessageDTO myMsg) {
		messageDAO.countMyMsgBox(myMsg);
		
	}

	@Override
	public List<MessageDTO> allFindMessage() {
		return messageDAO.allSearchMsg();	
	}

	
	@Override
	public int findAddress(Map<String, Object> searchMap) {
		
		return messageDAO.searchAddress();
	}

	@Override
	public MessageDTO selectAddress(List<Integer> empNo) {
		return messageDAO.selectAddress(empNo);
	}

	@Override
	public int deleteMessage(List<Integer> list) {
		return messageDAO.deleteMsg(list);
	}
	
	@Override
	public int moveMsgBox(List<Integer> list) {
		return messageDAO.moveMsgBox(list);
	}

	@Override
	public List<MessageDTO> myMessageBox(int logNo) {
		return messageDAO.myMsgBox(logNo);
	}


	@Override
	public MessageDTO recvMsgView(int msgNo) {
		return messageDAO.recvMsgView(msgNo);
	}

	@Override
	public MessageDTO sendMsgView(int msgNo) {
		return messageDAO.sendMsgView(msgNo);
	}

	@Override
	public int selectSendMsgTotal(Map<String, Object> map) {
		return messageDAO.selectSendMsgTotal(map);
	}

	@Override
	public List<MessageDTO> PageSendMsg(Map<String, Object> map) {
		return messageDAO.PageSendMsg(map);
	}

	@Override
	public List<MessageDTO> PageRecvMsg(Map<String, Object> map) {
		return messageDAO.PageRecvMsg(map);
	}
	
	@Override
	public int replyMessageList(List<Integer> num) {
		return messageDAO.replyMessageList(num);
	}

	@Override
	public MessageDTO replyEmpNo(int[] replyEmpNo) {
		return messageDAO.replyEmpNo(replyEmpNo);
	}

	
	
	

	

	
	
}