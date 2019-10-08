package site.itwill.controller;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import site.itwill.dto.AnnualDTO;
import site.itwill.service.AnnualService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class AnnualServiceTest {
	@Autowired
	private AnnualService annualService;
	
	@Test
	public void addAnnualTest() {
		AnnualDTO annual = new AnnualDTO();
		//annual.setAnnualNo(1);
		annual.setDeptNo(10);
		annual.setEmpNo(1111);
		annual.setAnnualStatus(1);
		annual.setAnnualStart(new Date());
		annual.setAnnualEnd(new Date());
		
		annualService.addAnnual(annual);
	}
}











