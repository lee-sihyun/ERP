package site.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.itwill.dto.EmployeeDTO;
import site.itwill.exception.LoginAuthFailException;
import site.itwill.exception.UserinfoExistsException;
import site.itwill.service.EmployeeService;

@Controller
public class LoginController {
    
    @Autowired
    private EmployeeService employeeService;

    @RequestMapping(value="/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }
    
    @RequestMapping(value="/login", method = RequestMethod.POST)
    public String login(@ModelAttribute EmployeeDTO employeeDTO, HttpSession session ) 
            throws LoginAuthFailException {
        //인증처리 - 예외가 발생된 경우 인증 실패
        employeeService.loginAuth(employeeDTO);
        
        //세션을 이용하여 인증정보(회원정보) 공유
        session.setAttribute("loginUserinfo", employeeService.selectEmp(employeeDTO.getEmpNo()));
        
        //헤더,사이드바에 있는 프로필 사진 링크 출력하기 위한 부서명 변수 공유
        String deptname=employeeService.selectDeptName(employeeDTO.getEmpNo());
        session.setAttribute("deptname", deptname);
        
        if(session.getAttribute("destURI")!=null) {
            String destURI=(String)session.getAttribute("destURI");
            session.removeAttribute("destURI");
            return "redirect:"+destURI;
        }

        
        return "redirect:/index";
    }
    
    
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        
        session.invalidate();
        return "redirect:/login";
    }
    
    @RequestMapping("/index")
    public String main() {
    	return "main/index";
    }
    
    @ExceptionHandler(LoginAuthFailException.class)
    public String exceptionHandler(LoginAuthFailException exception, Model model) {
        model.addAttribute("message", exception.getMessage());
        model.addAttribute("empNo", exception.getEmpNo());
        return "login";
    }
    
    
    
    
    
 
    
}
