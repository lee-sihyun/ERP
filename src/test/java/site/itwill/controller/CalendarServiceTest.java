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

import site.itwill.dto.Calendar;
import site.itwill.service.CalendarService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class CalendarServiceTest {
	private final static Logger logger=LoggerFactory.getLogger(CalendarServiceTest.class);
	
	//NullPointerException 에러 뜨면 인젝션 했는지 보기! @Autowired
	//인젝션!!!!!
	@Autowired
	private CalendarService calendarService;
	
	
	/*
	@Test
	public void testAddCalendar() {
		Calendar calendar=new Calendar();
		
		calendar.setEmpNo(1);
		calendar.setDeptNo(1);
		calendar.setCalTitle("테스트1");
		calendar.setCalStartDate("2019-09-25");
		calendar.setCalStartTime("12:12");
		calendar.setCalEndDate("2019-09-28");
		calendar.setCalEndTime("12:15");
		calendar.setCalGroup("전사");
		calendar.setCalCategory("휴가");
		calendar.setCalPlace("자택");
		calendar.setCalContent("111");
		calendarService.addCalendar(calendar);
		logger.info("등록 성공");
	}
	*/
	
	/*
	@Test
	public void testAddSimpleCalendar() {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("empNo", 1);
		map.put("deptNo", 1);
		map.put("calTitle", "간단등록");
		map.put("calStartDate", "2019-10-01");
		map.put("calStartTime", "11:30");
		map.put("calEndDate", "2019-10-01");
		map.put("calEndTime", "12:00");
		map.put("calGroup", "간단테스트1");
		calendarService.addSimpleCalendar(map);
		logger.info("간단 등록 성공");
	}
	*/
	
	/*
	@Test
	public void testRemoveCalendar() {
		calendarService.removeCalendar(8);
		logger.info("삭제 성공");
		
	}
	*/
	
	
	@Test
	public void testModifyCalendar() {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("calTitle", "변경테스트");
		map.put("calStartDate", "2019-10-10");
		map.put("calStartTime", "10:10");
		map.put("calEndDate", "2019-10-10");
		map.put("calEndTime", "11:11");
		map.put("calGroup", "변경");
		map.put("calCategory", "변경");
		map.put("calPlace", "변경");
		map.put("calContent", "변경");
		map.put("calNo", 3);
		calendarService.modifyCalendar(map);
		logger.info("변경 성공");
	}
	
	
	@Test
	public void testGetCalendarList() {
		List<Calendar> calendarList=calendarService.getCalendarList();
		for(Calendar cal:calendarList) {
			logger.info(cal.toString());
		}
	}
	
	
	
}
