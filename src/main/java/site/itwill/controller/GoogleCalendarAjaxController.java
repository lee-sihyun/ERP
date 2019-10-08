package site.itwill.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.api.client.util.DateTime;
import com.google.api.services.calendar.Calendar;
import com.google.api.services.calendar.model.Event;
import com.google.api.services.calendar.model.EventDateTime;
import com.google.api.services.calendar.model.Events;

import site.itwill.dto.GoogleCalendarDTO;
import site.itwill.service.GoogleCalendarService;

//일정이벤트 핸들링할 ajax 컨트롤러
@Controller
public class GoogleCalendarAjaxController {
private Logger logger = LoggerFactory.getLogger(GoogleCalendarAjaxController.class);
    
    // 일정 데이터 처리
    @RequestMapping(value="/calendar_event_list", method=RequestMethod.POST)
    @ResponseBody
    public List<Event> calendarEventList(GoogleCalendarDTO googleCalDto) {
        logger.info("calendarEventList "+googleCalDto.toString());
        
        List<Event> items = new ArrayList<Event>();
        try {
            Calendar service = GoogleCalendarService.getCalendarService();
            Events events = service.events().list(googleCalDto.getCalendarId()).setOrderBy("startTime").setSingleEvents(true).execute();
            items = events.getItems();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return items;
    }
    
    // 일정 저장 처리
    @RequestMapping(value="/calendar_event_add", method=RequestMethod.POST)
    @ResponseBody
    public Map<String, Boolean> calendarEventAdd(GoogleCalendarDTO googleCalDto) {
        logger.info("calendarEventAdd "+googleCalDto.toString());
        
        boolean isc = false;
        try {
            Calendar service = GoogleCalendarService.getCalendarService();
            Event event = new Event().setSummary(googleCalDto.getSummary()).setDescription(googleCalDto.getDescription());
            //시작일
            DateTime startDateTime = new DateTime(googleCalDto.getStartDateTime());
            EventDateTime start = new EventDateTime().setDateTime(startDateTime).setTimeZone("America/Los_Angeles");
            event.setStart(start);
            //종료일
            DateTime endDateTime = new DateTime(googleCalDto.getEndDateTime());
            EventDateTime end = new EventDateTime().setDateTime(endDateTime).setTimeZone("America/Los_Angeles");
            event.setEnd(end);
            event = service.events().insert(googleCalDto.getCalendarId(), event).execute();
            isc = true;
        } catch (IOException | ParseException e) {
            e.printStackTrace();
        }
        Map<String, Boolean> map = new HashMap<String, Boolean>();
        map.put("isc", isc);
        return map;
    }    
    
    // 일정 삭제
    @RequestMapping(value="/calendar_event_remove", method=RequestMethod.POST)
    @ResponseBody
    public Map<String, Boolean> calendarEventRemoveOne(GoogleCalendarDTO googleCalDto) {
        logger.info("calendarEventRemoveOne "+googleCalDto.toString());
        
        boolean isc = false;
        try {
            Calendar service = GoogleCalendarService.getCalendarService();
            service.events().delete(googleCalDto.getCalendarId(), googleCalDto.getEventId()).execute();
            isc = true;
        } catch (IOException e) {
            e.printStackTrace();
        }
        Map<String, Boolean> map = new HashMap<String, Boolean>();
        map.put("isc", isc);
        return map;
    }
    
    // 일정 수정
    @RequestMapping(value="/calendar_event_modify", method=RequestMethod.POST)
    @ResponseBody
    public Map<String, Boolean> calendarEventModify(GoogleCalendarDTO googleCalDto) {
        logger.info("calendarEventModify "+googleCalDto.toString());
        
        boolean isc = false;
        try {
            Calendar service = GoogleCalendarService.getCalendarService();
            Event event = service.events().get(googleCalDto.getCalendarId(), googleCalDto.getEventId()).execute();
            event.setSummary(googleCalDto.getSummary()).setDescription(googleCalDto.getDescription());
            service.events().update(googleCalDto.getCalendarId(), event.getId(), event).execute();
            isc = true;
        } catch (IOException e) {
            e.printStackTrace();
        }
        Map<String, Boolean> map = new HashMap<String, Boolean>();
        map.put("isc", isc);
        return map;
    }
}
