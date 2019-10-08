package site.itwill.controller;

import java.util.HashMap; 
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import site.itwill.dto.BoardDTO;
import site.itwill.dto.EmployeeDTO;
import site.itwill.service.BoardService;
import site.itwill.utill.Pager;


@Controller
public class BoardController {
	private final static Logger logger=LoggerFactory.getLogger(BoardController.class);
	@Autowired
	private BoardService boardService;
	@Autowired
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String Board() {
		return "board/board";
	}

	@RequestMapping(value = "/board_list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> BoardList(@RequestParam(defaultValue = "1") int pageNum,
			@RequestParam String search
            ,@RequestParam(defaultValue = "all") String keyword
            ,HttpSession session) {
		EmployeeDTO loginUserinfo=(EmployeeDTO)session.getAttribute("loginUserinfo");
	        
	    System.out.println("loginUserinfo = "+loginUserinfo);
	    
	    String writer = loginUserinfo.getEmpName();

	    logger.info("search = "+search);
	    logger.info("keyword = "+keyword);
	    logger.info("writer = "+writer);
	        
	    Map<String, Object> searchMap=new HashMap<String, Object>();
	    searchMap.put("search", search);
	    searchMap.put("keyword", keyword);
	    searchMap.put("writer", writer);
	        
	    int totalArticle=boardService.selectboardTotal(searchMap);
	        
	    int pageSize=10;//페이지에 출력될 게시글의 갯수
	    int blockSize=10;
		
		Pager pager=new Pager(pageNum, totalArticle, pageSize, blockSize);
		
		//Service 클래스의 메소드를 호출하기 위한 Map 인스턴스 생성 및 요소 저장
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		//JSON 텍스트 데이타로 반환하기 위한 Map 인스턴스 생성 및 요소 저장
		Map<String, Object> map=new HashMap<String, Object>();
		//출력될 게시글 목록을 반환받아 저장
		
		map.put("boardList", boardService.getBoardList(pagerMap));
		
		//페이징 처리에 필요한 인스턴스를 저장
		map.put("pager", pager);
		
		return map;
	}

	@RequestMapping(value = "/board_add", method = RequestMethod.GET)
	public String BoardAdd(HttpSession session, Model model) {
		EmployeeDTO employeeDTO=(EmployeeDTO)session.getAttribute("loginUserinfo");
		model.addAttribute("emp", employeeDTO);
		
		return "board/board_add";
	}
	
	
	@RequestMapping(value = "/board_add", method = RequestMethod.POST)
	public String BoardAdd(@ModelAttribute BoardDTO board,HttpSession session) {
		
		EmployeeDTO employeeDTO=(EmployeeDTO)session.getAttribute("loginUserinfo");
		
		board.setWriter(employeeDTO.getEmpName());
		
		System.out.println("emp :"+employeeDTO.getEmpName());
		System.out.println("추가 실행");
		System.out.println("getBcontent :"+board.getBcontent());
		System.out.println("getBcontent :"+board.getBcontent());
		System.out.println("getRegdate"+board.getRegdate());
		System.out.println("getTitle :"+board.getTitle());
		System.out.println("getViewcnt :"+board.getViewcnt());
		System.out.println("getWriter :"+board.getWriter());
		
		boardService.addBoard(board);
		return "board/board";
	}
	
	@RequestMapping(value = "/board_view/{bno}", method = RequestMethod.GET)
	@ResponseBody
	public BoardDTO BoardView(@PathVariable int bno) {
		logger.info("잘봐" + bno);
		return boardService.getBoard(bno);
	}
	@RequestMapping(value= "/boardView", method = RequestMethod.GET)
    public String BoardView(@RequestParam int bno, Model model) {
        model.addAttribute("board",boardService.getBoard(bno));
        return "board/board_view";
    }
	
	@RequestMapping(value = "/board_update/{bno}", method = RequestMethod.GET)
	@ResponseBody
	public BoardDTO BoardModify(@RequestParam int bno) {
		return boardService.getBoard(bno);
	}
	
	@RequestMapping(value = "/board_update", method = RequestMethod.GET)
	public String BoardModify(@RequestParam int bno,Model model) {
		model.addAttribute("board", boardService.getBoard(bno));
		return "board/board_update";
	}
	
	/*
	@RequestMapping(value = "/board_update/{bno}", method = RequestMethod.GET)
	public String BoardModify(@RequestParam int bno,Model model) {
		model.addAttribute("board", boardService.getBoard(bno));
		return "board/board_update";
	}
	
	}
	*/
	@RequestMapping(value = "/board_update", method = RequestMethod.POST)
	public String BoardModify(@ModelAttribute BoardDTO board) {
		boardService.updateBoard(board);
		return "board/board";
	}
	@RequestMapping(value = "/board_erase/{num}", method = RequestMethod.DELETE)
	@ResponseBody
	public String BoardErase(@PathVariable int bno) {
		boardService.eraseBoard(bno);
		return "success";
	}
}





