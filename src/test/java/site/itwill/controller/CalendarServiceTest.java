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
	
	//NullPointerException ���� �߸� ������ �ߴ��� ����! @Autowired
	//������!!!!!
	@Autowired
	private CalendarService calendarService;
	
	
	/*
	@Test
	public void testAddCalendar() {
		Calendar calendar=new Calendar();
		
		calendar.setEmpNo(1);
		calendar.setDeptNo(1);
		calendar.setCalTitle("�׽�Ʈ1");
		calendar.setCalStartDate("2019-09-25");
		calendar.setCalStartTime("12:12");
		calendar.setCalEndDate("2019-09-28");
		calendar.setCalEndTime("12:15");
		calendar.setCalGroup("����");
		calendar.setCalCategory("�ް�");
		calendar.setCalPlace("����");
		calendar.setCalContent("111");
		calendarService.addCalendar(calendar);
		logger.info("��� ����");
	}
	*/
	
	/*
	@Test
	public void testAddSimpleCalendar() {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("empNo", 1);
		map.put("deptNo", 1);
		map.put("calTitle", "���ܵ��");
		map.put("calStartDate", "2019-10-01");
		map.put("calStartTime", "11:30");
		map.put("calEndDate", "2019-10-01");
		map.put("calEndTime", "12:00");
		map.put("calGroup", "�����׽�Ʈ1");
		calendarService.addSimpleCalendar(map);
		logger.info("���� ��� ����");
	}
	*/
	
	/*
	@Test
	public void testRemoveCalendar() {
		calendarService.removeCalendar(8);
		logger.info("���� ����");
		
	}
	*/
	
	
	@Test
	public void testModifyCalendar() {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("calTitle", "�����׽�Ʈ");
		map.put("calStartDate", "2019-10-10");
		map.put("calStartTime", "10:10");
		map.put("calEndDate", "2019-10-10");
		map.put("calEndTime", "11:11");
		map.put("calGroup", "����");
		map.put("calCategory", "����");
		map.put("calPlace", "����");
		map.put("calContent", "����");
		map.put("calNo", 3);
		calendarService.modifyCalendar(map);
		logger.info("���� ����");
	}
	
	
	@Test
	public void testGetCalendarList() {
		List<Calendar> calendarList=calendarService.getCalendarList();
		for(Calendar cal:calendarList) {
			logger.info(cal.toString());
		}
	}
	
	
	
}