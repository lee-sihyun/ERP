package site.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Calendar;
import site.itwill.mapper.CalendarMapper;

@Repository
public class CalendarMybatisDAO implements CalendarDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertCalendar(Calendar calendar) {
		return sqlSession.getMapper(CalendarMapper.class).insertCalendar(calendar);
	}

	@Override
	public int insertSimpleCalendar(Map<String, Object> map) {
		return sqlSession.getMapper(CalendarMapper.class).insertSimpleCalendar(map);
	}

	@Override
	public int updateCalendar(Map<String, Object> map) {
		return sqlSession.getMapper(CalendarMapper.class).updateCalendar(map);
	}

	@Override
	public Calendar selectCalendar(int calNo) {
		return sqlSession.getMapper(CalendarMapper.class).selectCalendar(calNo);
	}

	@Override
	public List<Calendar> selectAllCalendar() {
		return sqlSession.getMapper(CalendarMapper.class).selectAllCalendar();
	}

	@Override
	public List<Calendar> selectTeamCalendar(int deptNo) {
		return sqlSession.getMapper(CalendarMapper.class).selectTeamCalendar(deptNo);
	}

	@Override
	public List<Calendar> selectMyCalendar(int empNo) {
		return sqlSession.getMapper(CalendarMapper.class).selectMyCalendar(empNo);
	}

	@Override
	public int deleteCalendar(int calNo) {
		return sqlSession.getMapper(CalendarMapper.class).deleteCalendar(calNo);
	}

}
