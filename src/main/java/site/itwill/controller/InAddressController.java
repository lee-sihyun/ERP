package site.itwill.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import site.itwill.dto.EmployeeDTO;
import site.itwill.dto.InAddressDTO;
import site.itwill.exception.LoginAuthFailException;
import site.itwill.service.EmployeeService;
import site.itwill.service.InAddressService;
import site.itwill.utill.Pager;



@Controller
@RequestMapping("/address")
public class InAddressController {
    private final static Logger logger=LoggerFactory.getLogger(InAddressController.class);

    @Autowired
    private EmployeeService employeeService;
    
    @RequestMapping(value ="/inaddress", method = RequestMethod.GET)
    public String InAddress() {

        return "address/in_address_list";
    }
    
    
    @RequestMapping(value = "/inaddressList" ,method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> addressList(@RequestParam(defaultValue = "1") int pageNum,
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
        
        int totalArticle=employeeService.selectInaddressTotal(searchMap);
        
        int pageSize=10;//페이지에 출력될 게시글의 갯수
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
        List<EmployeeDTO> inAddressList = employeeService.selectInaddressList(searchMap);

        map.put("inAddressList", inAddressList);
        //페이징 처리에 필요한 인스턴스를 저장
        map.put("pager", pager);

        return map;
    }
    

    
    @RequestMapping(value= "/inaddressView", method = RequestMethod.GET)
    public String InaddressView(@RequestParam int empNo, Model model) {
        EmployeeDTO inaddress = employeeService.selectEmp(empNo);
        /*
        switch (inaddress.getDeptNo()) {
        case 1: inaddress.setDeptName("전산"); break;
        case 2: inaddress.setDeptName("인사"); break;
        case 3: inaddress.setDeptName("영업"); break;
        case 4: inaddress.setDeptName("마케팅"); break;
        case 5: inaddress.setDeptName("전산"); break;
        case 6: inaddress.setDeptName("디자인"); break;
        }
        */
        model.addAttribute("inaddress",inaddress) ;
        
        return "address/in_address_view";
    }
    
     
    
      
      
}
