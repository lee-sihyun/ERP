package site.itwill.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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

import site.itwill.dto.AnnualDTO;
import site.itwill.dto.AnnualVO;
import site.itwill.dto.EmployeeDTO;
import site.itwill.service.AnnualService;

@Controller
public class annualController {

	@Autowired
	private AnnualService annualService;

	@RequestMapping(value = "/annual/annual")
	public String goAnnual(Model model, HttpSession session) {
		EmployeeDTO employee = (EmployeeDTO) session.getAttribute("loginUserinfo");
		AnnualVO annual = new AnnualVO();
		annual.setEmpBreak(employee.getEmpBreak());
		System.out.println("=======================연차갯수 ===" + employee.getEmpBreak());
		model.addAttribute("userAnnualList", annualService.getUserAnnualList());
		return "annual/annual";
	}

	// 로그인한 사원 세션을 이용하여 출근 버튼 클릭시 insert
	@RequestMapping(value = "/annual/ajax/annual_add", method = RequestMethod.POST)
	@ResponseBody
	public String addAnnual(@RequestBody AnnualDTO annualParam, HttpSession session) {
		// 연차 시작, 종료일자
		Date annualStart = annualParam.getAnnualStart();
		Date annualEnd = annualParam.getAnnualEnd();
		int annualStatus = annualParam.getAnnualStatus();
		double dayDiff = 0; // 휴가일수
		System.out.println("=============== ajax/annual_add");

		// 세션에 있는 사용자 정보를 가져온다.
		EmployeeDTO employee = (EmployeeDTO) session.getAttribute("loginUserinfo");
		System.out.println("========== employeee empNo =========");
		System.out.println(employee.getEmpNo());

		System.out.println("annualParam-----------------");
		System.out.println(annualParam.getAnnualStatus());
		System.out.println(annualParam.getAnnualStart());
		System.out.println(annualParam.getAnnualEnd());

		if (annualStatus == 1 || annualStatus == 2) {
			if (annualStart != null && annualEnd != null) {
				int days1 = (int) ((annualStart.getTime() / 3600000) / 24);
				int days2 = (int) ((annualEnd.getTime() / 3600000) / 24);

				dayDiff = (days2 - days1) + 1;
				System.out.println("============= dayDiff : " + dayDiff);
			}
		} else {
			// 오전반차
			Calendar cal = Calendar.getInstance();
			if (annualStatus == 3) {
				cal.setTime(annualEnd);
				cal.add(Calendar.HOUR, 5);
				annualEnd = cal.getTime();

				System.out.println("================== 오전반차");
				System.out.println("================== 시작시간 : " + annualStart);
				System.out.println("================== 종료시간 : " + annualEnd);
				
			// 오후반차
			} else {
				cal.setTime(annualStart);
				cal.add(Calendar.HOUR, 5);
				annualStart = cal.getTime();

				cal.setTime(annualEnd);
				cal.add(Calendar.HOUR, 9);
				annualEnd = cal.getTime();

				System.out.println("================== 오후반차");
				System.out.println("================== 시작시간 : " + annualStart);
				System.out.println("================== 종료시간 : " + annualEnd);
			}
			dayDiff = 0.5;
		}

		System.out.println("=========================== if문 이후 dayDiff :" + dayDiff);

		// 사용자 정보 DTO에 set
		AnnualDTO annual = new AnnualDTO();
		System.out.println("============ annualDTO ========");
		System.out.println(annual);
		annual.setDeptNo(employee.getDeptNo());
		annual.setEmpNo(employee.getEmpNo());
		annual.setAnnualStatus(annualStatus);
		annual.setAnnualStart(annualStart);
		annual.setAnnualEnd(annualEnd);

		/*
		 * if(annualService.checkUserGotime(employee.getEmpNo()) != null) { return
		 * "false"; }else { // 사용자 출근 정보 insert annualService.addCommuteGo(commute);
		 * return "success"; } }
		 */
		annualService.addAnnual(annual);

		EmployeeDTO emp = new EmployeeDTO();
		emp.setEmpBreak(dayDiff);
		emp.setEmpNo(employee.getEmpNo());
		annualService.modifyEmpBreak(emp);
		return "success";
	}

	/*
	 * @RequestMapping(value = "/annual/ajax/annual_delete")
	 * 
	 * @ResponseBody public String removeAnnual(@RequestParam AnnualDTO annual,
	 * HttpSession session) {
	 * 
	 * System.out.println("=========================================Annual = " +
	 * annual.getAnnualNo()); AnnualDTO annual= new AnnualDTO();
	 * 
	 * EmployeeDTO employee = (EmployeeDTO)session.getAttribute("loginUserinfo");
	 * if(employee == null || employee.getEmpNo() != annual.getEmpNo()) { return
	 * "false"; }
	 * 
	 * //AnnualDTO annual= new AnnualDTO();
	 * //annualService.removeAnnual(annual.getAnnualNo());
	 * annualService.removeAnnual(annual.getAnnualNo());
	 * System.out.println("=========================================Annual = " +
	 * annual.getAnnualNo()); return "success"; }
	 */
	
	@RequestMapping(value = "/annual/ajax/annual_delete", method = RequestMethod.POST)
	@ResponseBody
	public String removeAnnual(@RequestParam(value = "annualNo[]") List<Integer> annualNo) {
		annualService.removeAnnual(annualNo);
		return "success";
	}
	
	@RequestMapping(value = "/annual/ajax/annual_list")
	@ResponseBody
	public Map<String, Object> CommuteView(Model model) {
		model.addAttribute("userAnnualList", annualService.getUserAnnualList());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userAnnualList", annualService.getUserAnnualList());
		return map;
	}
}
