package site.itwill.service;

import java.util.List;
import java.util.Map;

import site.itwill.dto.Calendar;

public interface CalendarService {
	void addCalendar(Calendar calendar);
	void addSimpleCalendar(Map<String, Object> map);
	void modifyCalendar(Map<String, Object> map);
	Calendar getCalendar(int calNo);
	List<Calendar> getCalendarList();
	List<Calendar> getTeamCalendarList(int deptNo);
	List<Calendar> getMyCalendarList(int empNo);
	void removeCalendar(int calNo);
}
