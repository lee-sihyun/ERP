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
		System.out.println("=======================�������� ===" + employee.getEmpBreak());
		model.addAttribute("userAnnualList", annualService.getUserAnnualList());
		return "annual/annual";
	}

	// �α����� ��� ������ �̿��Ͽ� ��� ��ư Ŭ���� insert
	@RequestMapping(value = "/annual/ajax/annual_add", method = RequestMethod.POST)
	@ResponseBody
	public String addAnnual(@RequestBody AnnualDTO annualParam, HttpSession session) {
		// ���� ����, ��������
		Date annualStart = annualParam.getAnnualStart();
		Date annualEnd = annualParam.getAnnualEnd();
		int annualStatus = annualParam.getAnnualStatus();
		double dayDiff = 0; // �ް��ϼ�
		System.out.println("=============== ajax/annual_add");

		// ���ǿ� �ִ� ����� ������ �����´�.
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
			// ��������
			Calendar cal = Calendar.getInstance();
			if (annualStatus == 3) {
				cal.setTime(annualEnd);
				cal.add(Calendar.HOUR, 5);
				annualEnd = cal.getTime();

				System.out.println("================== ��������");
				System.out.println("================== ���۽ð� : " + annualStart);
				System.out.println("================== ����ð� : " + annualEnd);
				
			// ���Ĺ���
			} else {
				cal.setTime(annualStart);
				cal.add(Calendar.HOUR, 5);
				annualStart = cal.getTime();

				cal.setTime(annualEnd);
				cal.add(Calendar.HOUR, 9);
				annualEnd = cal.getTime();

				System.out.println("================== ���Ĺ���");
				System.out.println("================== ���۽ð� : " + annualStart);
				System.out.println("================== ����ð� : " + annualEnd);
			}
			dayDiff = 0.5;
		}

		System.out.println("=========================== if�� ���� dayDiff :" + dayDiff);

		// ����� ���� DTO�� set
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
		 * "false"; }else { // ����� ��� ���� insert annualService.addCommuteGo(commute);
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