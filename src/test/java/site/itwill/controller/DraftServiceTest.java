package site.itwill.controller;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import site.itwill.dto.DraftDTO;
import site.itwill.service.DraftService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class DraftServiceTest {

	private final static Logger logger= LoggerFactory.getLogger(DraftServiceTest.class);
	
	@Autowired
	private DraftService draftService;
	

	/*
	@Test
	public void testAddDraft() {
		DraftDTO draft=new DraftDTO();

		draft.setEmpNo(1);
		draft.setWriter("이시현");
		draft.setDraftTitle("test");
		draft.setDraftContent("find");
		draft.setSignerOne("jisun");	
		draft.setSignerTwo("gg");
		draft.setSignerThree("who");
		draft.setWaiting("sign");
		
		draftService.addDraft(draft);
		logger.info("test");

		
		
		
	}
*/
	/*
	@Test
	public void testListDraft() {
		List<DraftDTO>drafList=draftService.getDraftList();
		for(DraftDTO draft:drafList) {
			logger.info(draft.toString());
		}
		
	}
	*/
}
