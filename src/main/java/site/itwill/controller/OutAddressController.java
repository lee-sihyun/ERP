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
import site.itwill.dto.OutAddressDTO;
import site.itwill.exception.LoginAuthFailException;
import site.itwill.service.EmployeeService;
import site.itwill.service.OutAddressService;
import site.itwill.utill.Pager;



@Controller
@RequestMapping("/address")
public class OutAddressController {
    private final static Logger logger=LoggerFactory.getLogger(OutAddressController.class);
    
    @Autowired
    private OutAddressService outAddressService;
    
    @Autowired
    private EmployeeService employeeService;
    
    @RequestMapping(value ="/outaddress", method = RequestMethod.GET)
    public String OutAddress() {

        return "address/out_address_list";
    }
    
    
    @RequestMapping(value = "/outaddressList" ,method = RequestMethod.POST)
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
        
        int totalArticle=outAddressService.selectAddressTotal(searchMap);
        
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
        map.put("outAddressList", outAddressService.selectAddressList(searchMap));
        //페이징 처리에 필요한 인스턴스를 저장
        map.put("pager", pager);

        return map;
    }
    
    
    
    @RequestMapping(value ="/outaddressAdd", method = RequestMethod.GET)
    public String OutAddressAdd() {
        
        
        return "address/out_address_add";
    }
    
    @RequestMapping(value ="/outaddressAdd", method = RequestMethod.POST)
    public String OutAddressAdd(@ModelAttribute OutAddressDTO addressDTO,HttpSession session) {
        EmployeeDTO loginUserinfo=(EmployeeDTO)session.getAttribute("loginUserinfo");
       
        addressDTO.setEmpNo(loginUserinfo.getEmpNo());
        
        outAddressService.addAddress(addressDTO);
        return "redirect:/address/outaddress";
    }
    
    
    
    
    @RequestMapping(value = "/outaddressDel", method = RequestMethod.POST)
    @ResponseBody
    public String OutAddressremove(@RequestParam(value = "num[]") List<Integer> num) {
        
        outAddressService.deleteAddress(num);
        return "success";
    }
    
    
    @RequestMapping(value= "/outaddressView", method = RequestMethod.GET)
    public String OutaddressView(@RequestParam int addressNo, Model model) {
        model.addAttribute("outaddress",outAddressService.selectAddress(addressNo)) ;
        
        return "address/out_address_view";
    }
    
    
      @RequestMapping(value="/outaddressUpdate", method = RequestMethod.GET)
      public String OutaddressUpdate(@RequestParam int addressNo,Model model ) {
          model.addAttribute("outaddress",outAddressService.selectAddress(addressNo)) ;
          return "address/out_address_update";
      }
     
    
      @RequestMapping(value="/outaddressUpdate", method = RequestMethod.POST)
      public String OutaddressUpdate(@ModelAttribute OutAddressDTO addressDTO,HttpSession session) {
          outAddressService.updateAddress(addressDTO);
          System.out.println("addressDTO.getEmpNo() = "+addressDTO.getEmpNo());
          
          session.setAttribute("loginUserinfo", employeeService.selectEmp(addressDTO.getEmpNo()));
          System.out.println("employeeService.selectEmp(addressDTO.getEmpNo()) = "+employeeService.selectEmp(addressDTO.getEmpNo()));
          return "redirect:/address/outaddressView?addressNo="+addressDTO.getAddressNo();
      }
      /*
      @ExceptionHandler(LoginAuthFailException.class)
      public String exceptionHandler(LoginAuthFailException exception, Model model) {
          model.addAttribute("message", exception.getMessage());
          model.addAttribute("empNo", exception.getEmpNo());
          return "redirect:/login";
      }
      */
      
      
      
}
