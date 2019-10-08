package site.itwill.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import site.itwill.dto.EmployeeDTO;
import site.itwill.dto.MessageDTO;
import site.itwill.service.EmployeeService;
import site.itwill.service.MessageService;
import site.itwill.utill.Pager;


@Controller
@SessionAttributes(value = "logNo")
public class MessageController {
	private final static Logger logger=LoggerFactory.getLogger(MessageController.class);
	
	

	@Autowired
	private MessageService messageService;
	
	@Autowired
	private EmployeeService employeeService;
	
	//-----------------------------------------------------------------------
	
	//보내는 사람 검색
	//1) 사원목록에서 보낼 사람 검색 후 선택하기
	//쪽지보내기페이지에서 새로운 창에서 검색할 수 있게..
	@RequestMapping(value="/findAddress", method = RequestMethod.GET)
	public String findAddress() {
		return "findAddressList";
	}
	
	 //주소록 리스트 출력
    @RequestMapping(value = "/findAddressList" ,method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> findAddressList(@RequestParam(defaultValue = "1") int pageNum,
                            @RequestParam String search
                            ,@RequestParam(defaultValue = "all") String keyword
                            ,HttpSession session){//httpSession으로 유저 정보 공유
        EmployeeDTO loginUserinfo=(EmployeeDTO)session.getAttribute("loginUserinfo");
        
        System.out.println("loginUserinfo = "+loginUserinfo);
        
        int empNo = loginUserinfo.getEmpNo();

        logger.info("search = "+search);
        logger.info("keyword = "+keyword);
        logger.info("empNo = "+empNo);
      
        
        Map<String, Object> searchMap=new HashMap<String, Object>();
        searchMap.put("search", search);
        searchMap.put("keyword", keyword);
        searchMap.put("empNo", empNo);
        
        int totalArticle=employeeService.selectEmpTotal(searchMap);
        
        int pageSize=20;//페이지에 출력될 게시글의 갯수
        int blockSize=10;
        
        Pager pager=new Pager(pageNum, totalArticle, pageSize, blockSize);
        
        Map<String, Object> pagerMap=new HashMap<String, Object>();
        pagerMap.put("startRow", pager.getStartRow());
        pagerMap.put("endRow", pager.getEndRow());
        
        //select 할때 필요
        searchMap.put("startRow", pager.getStartRow());
        searchMap.put("endRow", pager.getEndRow());
        
        
        
        Map<String, Object> map=new HashMap<String, Object>();
        
        map.put("empNo", empNo);
        //출력될 게시글 목록을 반환받아 저장
        List<EmployeeDTO> findAddressList = employeeService.selectEmpList(searchMap);
       
        map.put("findAddressList", findAddressList);
        //페이징 처리에 필요한 인스턴스를 저장
        map.put("pager", pager);

        return map;
    }
    
    
  
    
    @RequestMapping(value = "/findAddress", method = RequestMethod.POST)
    @ResponseBody
    public String selectAddressMove(@RequestParam(value = "num[]") List<Integer> empNo) {
        
        messageService.selectAddress(empNo);
        return "success";
    }
    
  
	//2) 쪽지 보내는 기능
	//email_compose.html 사용
	
	 @RequestMapping(value="/sendMessageDetail", method = RequestMethod.GET)
	 public String sendMsg() { return "message/Detail/sendMessageDetail"; }
	 
	
	@RequestMapping(value="/sendMessageDetail", method = RequestMethod.POST)
	@ResponseBody
	public String sendMsg(@ModelAttribute MessageDTO message, HttpSession session) {
		
		int empNo=((EmployeeDTO)session.getAttribute("loginUserinfo")).getEmpNo();
		message.setSendEmpNo(empNo);
		
		messageService.sendMessage(message);
		
		return "success";
	}

	//-----------------------------------------------------------------------
	
	//받은쪽지함
	//email_inbox_v2.html 사용
	/*
	 * @RequestMapping(value = "/recvMessageBox", method = RequestMethod.GET) public
	 * String recvMsgBox(Model model) {
	 * 
	 * messageService.receiveMessageBox(); model.addAttribute("recv_box",
	 * messageService.receiveMessageBox()); return "message/Box/recvMessageBox"; }
	 * 
	 * @RequestMapping(value = "/recvMessageBox", method = RequestMethod.POST)
	 * public String recvMsgBox() {
	 * 
	 * messageService.receiveMessageBox(); return "message/Box/recvMessageBox"; }
	 */
	
	//받은쪽지함 페이징 처리
	@RequestMapping(value = "/recvBoardList", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> recvMessageList(@RequestParam(defaultValue = "1") int pageNum,HttpSession session) {
		EmployeeDTO loginUserinfo=(EmployeeDTO)session.getAttribute("loginUserinfo");
		
		int empNo=loginUserinfo.getEmpNo();
		
		int totalArticle=messageService.countReceviceMessage(empNo);
		
		//페이지에 출력될 게시글의 갯수
		int pageSize=10;
		int blockSize=10;
		
		Pager pager=new Pager(pageNum, totalArticle, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		//페이징 처리 sql문에 필요한 로그인 사원번호 put
		pagerMap.put("log_no", empNo);
		
		//JSON 텍스트 데이터로 반환하기 위한 Map 인스턴스 생성 및 요소 저장
		Map<String, Object> map=new HashMap<String, Object>();
		
		//출력될 게시글 목록을 반환받아 저장
		map.put("recvBoardList", messageService.PageRecvMsg(pagerMap));
		//페이징 처리에 필요한 인스턴스를 저장
		map.put("pager", pager);
		
		return map;
	}
	
	
	//받은쪽지함 출력
	@RequestMapping(value = "/recvMessageBox") 
	public String recvMsgBox(Model model, HttpSession session) {
		
		int logNo=((EmployeeDTO)session.getAttribute("loginUserinfo")).getEmpNo();
		
		model.addAttribute("recv_box", messageService.receiveMessageBox(logNo)); 
	 
		
		return "message/Box/recvMessageBox"; 
	 
	}
	
	
	//받은 쪽지함 삭제
	@RequestMapping(value = "/recvMessageDel", method = RequestMethod.POST)
	@ResponseBody
	public String recvMsgBoxDel(@RequestParam(value = "num[]") List<Integer> num) {
		messageService.deleteMessage(num);
		return "success";
	}
	
	
	//받은쪽지에서 쪽지보관함으로 이동
	@RequestMapping(value = "/recvMessageMove", method = RequestMethod.POST)
	@ResponseBody
	public String recvMsgBoxMove(@RequestParam(value = "num[]") List<Integer> num) {
		messageService.moveMsgBox(num);
		return "success";
	}
	
	
	//-----------------------------------------------------------------------
	/*
	//보낸쪽지함 - 정상동작 페이징처리 안함
	//email_inbox_v2.html 사용
	@RequestMapping(value = "/sendMessageBox")
	public String sendMsgBox(Model model, HttpSession session) {
		
		int logNo=((EmployeeDTO)session.getAttribute("loginUserinfo")).getEmpNo();
		
		model.addAttribute("send_box", messageService.sendMessageBox(logNo));
		
		return "message/Box/sendMessageBox";
	}		
	*/
	//-----------------------------------------------------------------------
	
	//보낸쪽지함 페이징 처리
	@RequestMapping(value = "/sendMessageBox" , method = RequestMethod.GET)
	public String sendMsgBox(Model model, HttpSession session) {
		
		int logNo=((EmployeeDTO)session.getAttribute("loginUserinfo")).getEmpNo();
		
		model.addAttribute("send_box", messageService.sendMessageBox(logNo));
		
		return "message/Box/sendMessageBox";
	}
	
	@RequestMapping(value = "/sendMessageBoxList" ,method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> addressList(@RequestParam(defaultValue = "1") int pageNum,
                            @RequestParam String search
                            ,@RequestParam(defaultValue = "all") String keyword
                            ,HttpSession session
                            ,Model model){
		
		int logNo=((EmployeeDTO)session.getAttribute("loginUserinfo")).getEmpNo();
		
		model.addAttribute("send_box", messageService.sendMessageBox(logNo));
        

        logger.info("search = "+search);
        logger.info("keyword = "+keyword);
        logger.info("empNo = "+logNo);
      
        
        Map<String, Object> searchMap=new HashMap<String, Object>();
        System.out.println("search = "+search);
        
        searchMap.put("search", search);
        searchMap.put("keyword", keyword);
        searchMap.put("empNo", logNo);
        
        int totalArticle=messageService.selectSendMsgTotal(searchMap);
        
        int pageSize=15;//페이지에 출력될 게시글의 갯수
        int blockSize=10;
        
        Pager pager=new Pager(pageNum, totalArticle, pageSize, blockSize);
        
        Map<String, Object> pagerMap=new HashMap<String, Object>();
        pagerMap.put("startRow", pager.getStartRow());
        pagerMap.put("endRow", pager.getEndRow());
        pagerMap.put("empNo", logNo);
        
        //select 할때 필요
        searchMap.put("startRow", pager.getStartRow());
        searchMap.put("endRow", pager.getEndRow());
        searchMap.put("empNo", logNo);
        
        
        
        Map<String, Object> map=new HashMap<String, Object>();
        
        map.put("empNo", logNo);
        //출력될 게시글 목록을 반환받아 저장
        List<MessageDTO> sendMessageList=messageService.PageSendMsg(pagerMap);

        map.put("sendMessageList", sendMessageList);
        //페이징 처리에 필요한 인스턴스를 저장
        map.put("pager", pager);

        return map;
    }
	
	
	
	//-----------------------------------------------------------------------
	
	//쪽지 삭제
	@RequestMapping(value = "/MessageDel", method = RequestMethod.POST)
	@ResponseBody
	public String sendMsgBoxDel(@RequestParam(value = "num[]") List<Integer> num) {
		messageService.deleteMessage(num);
		return "success";
	}
	
	

	//-----------------------------------------------------------------------
	
	//쪽지보관함
	//email_inbox_v2.html 사용
	@RequestMapping(value = "/myMessageBox")
	public String myMsgBox(Model model, HttpSession session) {
		int logNo=((EmployeeDTO)session.getAttribute("loginUserinfo")).getEmpNo();
		model.addAttribute("my_box", messageService.myMessageBox(logNo));
		return "message/Box/myMessageBox";
	}		
	
	//-----------------------------------------------------------------------
	
	
	// 받은 쪽지 내용 확인
	@RequestMapping(value = "/recvMessageView", method = RequestMethod.GET)
	public String recvMsgView(@RequestParam int msgNo, Model model) {
		System.out.println("msgNo = "+msgNo);
		MessageDTO recvMessageView=messageService.recvMsgView(msgNo);
		model.addAttribute("recvmessageView", recvMessageView);
		return "message/Detail/recvMessageView";
	}
	//-----------------------------------------------------------------------
	
	
	//보낸 쪽지 내용 확인
	@RequestMapping(value = "/sendMessageView", method = RequestMethod.GET)
	public String sendMsgView(@RequestParam int msgNo, Model model) {
		System.out.println("msgNo = "+msgNo);
		MessageDTO sendMessageView=messageService.sendMsgView(msgNo);
		model.addAttribute("sendmessageView", sendMessageView);
		return "message/Detail/sendMessageView";
	}
	
	//-----------------------------------------------------------------------
	
	//답장
	@RequestMapping(value = "replyMessage", method = RequestMethod.GET)
	public String replyMessage() {
		return "replyMessageDetail";
	}
	
	@RequestMapping(value = "replyMessageDetail", method = RequestMethod.POST)
	public String replyMessage(@RequestParam(value = "msgNo") int[] msgNo) {
		
		for(int num:msgNo) {
			System.out.println(num);
			
			MessageDTO replymessage=messageService.replyEmpNo(msgNo);
			
		}
		
		
		return "Detail/sendMessageDetail";
		
		//messageService.replyMessageList(num);
		//return "success";
	}
	
	
}
