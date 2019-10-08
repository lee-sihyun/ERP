package site.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.CalendarDAO;
import site.itwill.dto.Calendar;

@Service
public class CalendarServiceImpl implements CalendarService {
	@Autowired
	private CalendarDAO calendarDAO;

	@Override
	public void addCalendar(Calendar calendar) {
		calendarDAO.insertCalendar(calendar);
	}

	@Override
	public void addSimpleCalendar(Map<String, Object> map) {
		calendarDAO.insertSimpleCalendar(map);		
	}

	@Override
	public void modifyCalendar(Map<String, Object> map) {
		calendarDAO.updateCalendar(map);
	}

	@Override
	public Calendar getCalendar(int calNo) {
		return calendarDAO.selectCalendar(calNo);
	}

	@Override
	public List<Calendar> getCalendarList() {
		return calendarDAO.selectAllCalendar();
	}

	@Override
	public List<Calendar> getTeamCalendarList(int deptNo) {
		return calendarDAO.selectTeamCalendar(deptNo);
	}

	@Override
	public List<Calendar> getMyCalendarList(int empNo) {
		return calendarDAO.selectMyCalendar(empNo);
	}

	@Override
	public void removeCalendar(int calNo) {
		calendarDAO.deleteCalendar(calNo);
	}
	
}
