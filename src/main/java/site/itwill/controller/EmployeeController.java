package site.itwill.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import site.itwill.dto.EmployeeDTO;
import site.itwill.dto.OutAddressDTO;
import site.itwill.exception.LoginAuthFailException;
import site.itwill.exception.UserinfoExistsException;
import site.itwill.service.EmployeeService;
import site.itwill.utill.Pager;

@Controller
@RequestMapping(value = "/admin")
public class EmployeeController {
    private final static Logger logger=LoggerFactory.getLogger(EmployeeController.class);
    
    
    @Autowired
    private EmployeeService employeeService;

    @RequestMapping(value ="/emp", method = RequestMethod.GET)
    public String Employee() {

        return "admin/emp_list";
    }
    
    
    @RequestMapping(value = "/empList" ,method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> EmployeeList(@RequestParam(defaultValue = "1") int pageNum,
                            @RequestParam String search
                            ,@RequestParam(defaultValue = "all") String keyword
                            ,HttpSession session){//httpSession���� ���� ���� ����
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
        
        int pageSize=10;//�������� ��µ� �Խñ��� ����
        int blockSize=10;
        
        Pager pager=new Pager(pageNum, totalArticle, pageSize, blockSize);
        
        Map<String, Object> pagerMap=new HashMap<String, Object>();
        pagerMap.put("startRow", pager.getStartRow());
        pagerMap.put("endRow", pager.getEndRow());
        
        //select �Ҷ� �ʿ�
        searchMap.put("startRow", pager.getStartRow());
        searchMap.put("endRow", pager.getEndRow());
        
        
        
        Map<String, Object> map=new HashMap<String, Object>();
        
        map.put("empNo", empNo);
        //��µ� �Խñ� ����� ��ȯ�޾� ����
        map.put("employeeList", employeeService.selectEmpList(searchMap));
        //����¡ ó���� �ʿ��� �ν��Ͻ��� ����
        map.put("pager", pager);

        return map;
    }
    
    
    
    @RequestMapping(value ="/empAdd", method = RequestMethod.GET)
    public String EmployeeAdd(@ModelAttribute EmployeeDTO employeeDTO) {
      
        return "admin/emp_add";
    }
    
    @RequestMapping(value = "/empSeq", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> EmployeeSeq(@RequestParam int deptNo) {
        
        Map<String, Object> map = new HashMap<String, Object>();
        int deptseq= employeeService.selectSeq(deptNo);
        
        map.put("deptseq", deptseq);
        
        return map;
    }
    
    
    @RequestMapping(value ="/empAdd", method = RequestMethod.POST)
    public String EmployeeAdd(@Valid @ModelAttribute EmployeeDTO employeeDTO
            ,Errors errors) {

        if(errors.hasErrors()) {
            return "admin/emp_add";
        }
        
        employeeService.insertEmp(employeeDTO);
        
        return "redirect:/admin/emp";
    }
    
    @RequestMapping(value="/empUpdate", method = RequestMethod.GET)
    public String EmployeeUpdate(@RequestParam int empNo,Model model) {
        model.addAttribute("employeeDTO",employeeService.selectEmp(empNo)) ;
        return "admin/emp_update";
    }
   
  
    @RequestMapping(value="/empUpdate", method = RequestMethod.POST)
    public String EmployeeUpdate(@Valid @ModelAttribute EmployeeDTO employeeDTO, Errors errors) {

        if(errors.hasErrors()) {
            return "admin/emp_update";
        }
        
        employeeService.updateEmp(employeeDTO);
        
        return "redirect:/admin/empView?empNo="+employeeDTO.getEmpNo();
    }
    
    
    @ModelAttribute("deptNos")
    public Map<Integer, String> deptNos() {
        Map<Integer, String> map =new HashMap<Integer, String>();
        map.put(1, "����");
        map.put(2, "�λ�");
        map.put(3, "����");
        map.put(4, "������");
        map.put(5, "�ӿ�");
        map.put(6, "������");
        
        return map;
    }
    
    
    
    
    @RequestMapping(value = "/empDel", method = RequestMethod.POST)
    @ResponseBody
    public String EmployeeRemove(@RequestParam(value = "num[]") List<Integer> num) {
        
        employeeService.deleteEmp(num);
        return "success";
    }
    
    
    @RequestMapping(value= "/empView", method = RequestMethod.GET)
    public String EmployeeView(@RequestParam int empNo, Model model) {
        model.addAttribute("employee",employeeService.selectEmp(empNo)) ;
        
        return "admin/emp_view";
    }
    
    

    
    
 
    
}