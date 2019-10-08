package site.itwill.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import site.itwill.dto.CommuteDTO;
import site.itwill.dto.EmployeeDTO;
import site.itwill.service.CommuteService;

@Controller
public class CommuteController {
	@Autowired
	private CommuteService commuteService;
	
	//@Autowired
	//private CommuteVO commuteVo;
	
	//근태관리 페이지로 이동해서 출근 찍은 사원정보 리스트 검색
	@RequestMapping("/commute/commute")
	public String goCommute(Model model, HttpSession session) {
		System.out.println("======================= path /commute =================");
		EmployeeDTO employee = (EmployeeDTO) session.getAttribute("loginUserinfo");
		if(commuteService.checkUserGotime(employee.getEmpNo()) != null) {
			System.out.println(commuteService.checkUserGotime(employee.getEmpNo())+"==================if");
			model.addAttribute("isCommuted", true);
		} else {
			System.out.println(commuteService.checkUserGotime(employee.getEmpNo())+"==================else");
			model.addAttribute("isCommuted", false);
		}
		model.addAttribute("userCommuteList", commuteService.getUserCommuteList());
		
		return "commute/commute";
	}
	
	//로그인한 사원 세션을 이용하여 출근 버튼 클릭시 insert 
	@RequestMapping(value = "/commute/ajax/commute_add", method = RequestMethod.POST)
	@ResponseBody
	public String addCommute(HttpSession session) {
		System.out.println("============================== /ajax/commute_add ==========");
		
		// 세션에 있는 사용자 정보를 가져온다.
		EmployeeDTO employee = (EmployeeDTO) session.getAttribute("loginUserinfo");
		System.out.println("========== employeee empNo =========");
		System.out.println(employee.getEmpNo());
		
		// 사용자 정보 DTO에 set
		CommuteDTO commute = new CommuteDTO();
		System.out.println("============ commuteDTO ========");
		System.out.println(commute);
		commute.setDeptNo(employee.getDeptNo());
		commute.setEmpNo(employee.getEmpNo());
		
		if(commuteService.checkUserGotime(employee.getEmpNo()) != null) {
			return "false";
		}else {
			// 사용자 출근 정보 insert
			commuteService.addCommuteGo(commute);
			return "success";
		}
	}
	
	@RequestMapping(value = "/commute/ajax/commute_out", method = RequestMethod.POST)
	@ResponseBody
	public String outCommute(HttpSession session, Model model) {
		EmployeeDTO employee = (EmployeeDTO) session.getAttribute("loginUserinfo");
		CommuteDTO commute = new CommuteDTO();
		commute.setDeptNo(employee.getDeptNo());
		commute.setEmpNo(employee.getEmpNo());
		
		if(commuteService.checkUserGotime(employee.getEmpNo()) == null) {
			if(commuteService.checkUserOuttime(employee.getEmpNo()) != null) {
				return "outerror";
			}
			return "false";
		} else {
			commuteService.modifyCommuteOut(commute);
			return "success";
		}
	}
	
	@RequestMapping(value = "/commute/ajax/commute_list")
	@ResponseBody
	public Map<String, Object> CommuteView(Model model) {
		model.addAttribute("userCommuteList", commuteService.getUserCommuteList());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userCommuteList", commuteService.getUserCommuteList());
		return map;
	}
	
}




