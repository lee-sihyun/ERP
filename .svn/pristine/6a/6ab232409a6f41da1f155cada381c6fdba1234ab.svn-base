package site.itwill.dao;

import java.util.List;
import java.util.Map;

import site.itwill.dto.Calendar;

public interface CalendarDAO {
	int insertCalendar(Calendar calendar);
	int insertSimpleCalendar(Map<String, Object> map);
	int updateCalendar(Map<String, Object> map);
	Calendar selectCalendar(int calNo);
	List<Calendar> selectAllCalendar();
	List<Calendar> selectTeamCalendar(int deptNo);
	List<Calendar> selectMyCalendar(int empNo);
	int deleteCalendar(int calNo);
}
