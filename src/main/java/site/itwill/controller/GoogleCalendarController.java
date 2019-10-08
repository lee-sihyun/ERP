package site.itwill.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.api.services.calendar.Calendar;
import com.google.api.services.calendar.model.CalendarList;
import com.google.api.services.calendar.model.CalendarListEntry;

import site.itwill.dto.GoogleCalendarDTO;
import site.itwill.service.GoogleCalendarService;

//캘린더 리스트 컨트롤러
@Controller
public class GoogleCalendarController {
private Logger logger = LoggerFactory.getLogger(GoogleCalendarController.class);

    // 캘린더리스트
    @RequestMapping(value="/coding", method=RequestMethod.GET)
    public String coding(Model model) {
        logger.info("calendarList");
        try {
            Calendar service = GoogleCalendarService.getCalendarService();
            CalendarList calendarList = service.calendarList().list().setPageToken(null).execute();
            List<CalendarListEntry> items = calendarList.getItems();
            model.addAttribute("items", items);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "/calendar/coding";
    }
    
    // 캘린더 생성 처리
    @RequestMapping(value="/calendar_add", method=RequestMethod.POST)
    public String calendarAdd(GoogleCalendarDTO googleCalDto) {
        logger.info("calendarAdd "+googleCalDto.toString());
        
        try {
            Calendar service = GoogleCalendarService.getCalendarService();
            com.google.api.services.calendar.model.Calendar calendar = new com.google.api.services.calendar.model.Calendar();
            calendar.setSummary(googleCalDto.getSummary());
            calendar.setTimeZone("America/Los_Angeles");
            service.calendars().insert(calendar).execute();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/coding";
    }
    
    // 캘린더 삭제 처리
    @RequestMapping(value="/calendar_remove", method=RequestMethod.POST)
    public String calendarRemove(HttpServletRequest req) {
        logger.info("calendarRemove");
        
        String[] chkVal = req.getParameterValues("chkVal");
        try {
            Calendar service = GoogleCalendarService.getCalendarService();
            for (String calendarId : chkVal) {
                service.calendars().delete(calendarId).execute();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/coding";
    }    
    
    // 캘린더 수정 처리
    @RequestMapping(value="/calendar_modify", method=RequestMethod.POST)
    public String calendarModify(GoogleCalendarDTO googleCalDto) {
        logger.info("calendarModify "+googleCalDto.toString());
        
        try {
            Calendar service = GoogleCalendarService.getCalendarService();
            com.google.api.services.calendar.model.Calendar calendar = service.calendars().get(googleCalDto.getCalendarId()).execute();
            calendar.setSummary(googleCalDto.getSummary());
            service.calendars().update(calendar.getId(), calendar).execute();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/coding";
    }    
    
    // 캘린더 이동처리
    @RequestMapping(value="/schdule", method=RequestMethod.GET)
    public String schdule(Model model) {
    	model.addAttribute("calendarId", "jisuneom12@gmail.com");
        logger.info("schdule");
        return "calendar/schdule";
    }    
}

