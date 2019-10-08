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
	
	//NullPointerException 에러 뜨면 인젝션 했는지 보기! @Autowired
	//인젝션!!!!!
	@Autowired
	private MessageService messageService;
	
	/*
	//쪽지보내기 - 등록 => 완료
	@Test
	public void testSendMessage() {
		MessageDTO message=new MessageDTO();
		
		message.setRecvEmpNo(9);
		message.setSendEmpNo(1);
		message.setTitle("테스트프로그램-5 제목입니다.");
		message.setContent("테스트프로그램-5 내용입니다.");
		messageService.sendMessage(message);
		logger.info("등록성공 이얏호");
	}
	*/
	
	
	
	/*
	//쪽지 삭제 => 완료
	@Test
	public void testDeleteMessage() {
		messageService.deleteMessage(4);
		logger.info("삭제성공쓰~");
	}
	*/
	
	/*
	//보낸메세지함 출력 => 매퍼에서 로그인아이디 없애면 완료
	@Test
	public void testGetMessageList() {
		List<MessageDTO> messageList=messageService.sendMessageBox();
		for(MessageDTO msg:messageList) {
			logger.info(msg.toString());
		}
	}
	*/
	//-------------------------------------------------------------------------------------
	
	
	//보관함으로 이동
	@Test
	public void testMoveMessage() {
		messageService.moveMsgBox(6);
		logger.info("변경완료");
		
		
	}
	 
/*
	
	
	//메세지보관함 출력 => 매퍼에서 로그인아이디 없애면 완료
	@Test
	public void testGetMessageList2() {
		List<MessageDTO> messageList=messageService.myMessageBox();
		for(MessageDTO msg:messageList) {
			logger.info(msg.toString());
		}
	}

*/





}
