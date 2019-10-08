package site.itwill.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import site.itwill.dto.MessageDTO;
import site.itwill.service.MessageService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class MessageServiceTest {
	private final static Logger logger=LoggerFactory.getLogger(MessageServiceTest.class);
	
	//NullPointerException ���� �߸� ������ �ߴ��� ����! @Autowired
	//������!!!!!
	@Autowired
	private MessageService messageService;
	
	/*
	//���������� - ��� => �Ϸ�
	@Test
	public void testSendMessage() {
		MessageDTO message=new MessageDTO();
		
		message.setRecvEmpNo(9);
		message.setSendEmpNo(1);
		message.setTitle("�׽�Ʈ���α׷�-5 �����Դϴ�.");
		message.setContent("�׽�Ʈ���α׷�-5 �����Դϴ�.");
		messageService.sendMessage(message);
		logger.info("��ϼ��� �̾�ȣ");
	}
	*/
	
	
	
	/*
	//���� ���� => �Ϸ�
	@Test
	public void testDeleteMessage() {
		messageService.deleteMessage(4);
		logger.info("����������~");
	}
	*/
	
	/*
	//�����޼����� ��� => ���ۿ��� �α��ξ��̵� ���ָ� �Ϸ�
	@Test
	public void testGetMessageList() {
		List<MessageDTO> messageList=messageService.sendMessageBox();
		for(MessageDTO msg:messageList) {
			logger.info(msg.toString());
		}
	}
	*/
	//-------------------------------------------------------------------------------------
	
	
	//���������� �̵�
	@Test
	public void testMoveMessage() {
		messageService.moveMsgBox(6);
		logger.info("����Ϸ�");
		
		
	}
	 
/*
	
	
	//�޼��������� ��� => ���ۿ��� �α��ξ��̵� ���ָ� �Ϸ�
	@Test
	public void testGetMessageList2() {
		List<MessageDTO> messageList=messageService.myMessageBox();
		for(MessageDTO msg:messageList) {
			logger.info(msg.toString());
		}
	}

*/





}