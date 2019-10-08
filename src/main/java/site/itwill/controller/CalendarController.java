package site.itwill.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import site.itwill.dto.Calendar;
import site.itwill.dto.EmployeeDTO;
import site.itwill.service.CalendarService;

@Controller
@RequestMapping("/calendar")
public class CalendarController {
	
	@Autowired
	private CalendarService calendarService;
	
	@RequestMapping(value = "/display", method = RequestMethod.GET)
	public String display(Model model) {
		List<Calendar> calendarList=calendarService.getCalendarList();
		model.addAttribute("calendarList", calendarList);
		return "calendar/list_calendar";
	}
	
	@RequestMapping(value = "/fullcalendar", method = RequestMethod.GET)
	public String fullcalendar() {
		return "calendar/index";
	}
	
	@RequestMapping(value = "/calendar_add", method = RequestMethod.POST)
	@ResponseBody
	public String calendarAdd(@RequestBody Calendar calendar, Model model,HttpSession session) {
		EmployeeDTO loginUserinfo=(EmployeeDTO)session.getAttribute("loginUserinfo");
		calendarService.addCalendar(calendar);
		model.addAttribute("loginUserinfo", loginUserinfo);
		return "success";
	}
	
	@RequestMapping(value = "/simple_calendar_add", method = RequestMethod.POST)
	@ResponseBody
	public String simpleCalendarAdd(@RequestBody Calendar calendar) {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("username", calendar.getUsername());
		map.put("deptNo", calendar.getDeptNo());
		map.put("title",calendar.getTitle());
		map.put("start", calendar.getStart());
		map.put("end", calendar.getEnd());
		map.put("type", calendar.getType());
		calendarService.addSimpleCalendar(map);
		return "success";
	}
	
	/*
	@RequestMapping(value = "/calendar_get", method = RequestMethod.POST)
	@ResponseBody
	public List<Calendar> getCalendarList() {
		List<Calendar> calendarList=new ArrayList<Calendar>();
		calendarList=calendarService.getCalendarList();
		return calendarList;
	}
	*/
	
	
	@RequestMapping(value = "/calendar_get", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, List<Calendar>> getCalendarList() {
		List<Calendar> calendarList=new ArrayList<Calendar>();
		calendarList=calendarService.getCalendarList();
		Map<String, List<Calendar>> map=new HashMap<String, List<Calendar>>();
		map.put("calendarList", calendarList);
		return map;
	}
	
	
}
