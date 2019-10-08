package site.itwill.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import site.itwill.dto.*;
import site.itwill.service.AbsenceService;
import site.itwill.service.ConferenceService;
import site.itwill.service.DraftService;
import site.itwill.service.ProductService;
import site.itwill.service.PurchaseService;
import site.itwill.service.ReinstatementService;
import site.itwill.service.ResignationService;

import site.itwill.service.SpendingService;

@Controller
@RequestMapping("/draft")
public class DraftConroller {

	// 1. 기안및 협조전
	@Autowired
	private DraftService draftService;

	// 4개해야함 목록, 출력, 입력

	/* 달라야하는건 어노테이션, 파라메터 */
	// email_compose.html 사용 결재작성
	@RequestMapping(value = "/shyuntest1", method = RequestMethod.GET)
	public String addDraft() {
		return "draft/draft_input";

	}

	// email_detail.html작성된 결재확인 - 작성자
	// 하나만 전달할��는 리퀘스트
	@RequestMapping(value = "/shyuntest1", method = RequestMethod.POST)
	@ResponseBody
	public String addDraft(@ModelAttribute DraftDTO draft, Model model, HttpSession session) {
		int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
		draft.setEmpNo(empNo);

		draftService.addDraft(draft);
		// return "redirect:/drafttest";
		return "success";

	}

	// 출력 -자기가 작성한결재

	@RequestMapping(value = "/display")
	public String display(Model model, HttpSession session) {
		int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
		model.addAttribute("draftList", draftService.getDraftList(empNo));
		return "draft/draft_list";
	}

	/* 상세 가져오기 -자기작성 */
	@RequestMapping("/view")
	public String view(@RequestParam int draftNo, Model model) {
		model.addAttribute("draft", draftService.getDraftTest(draftNo));
		return "draft/draft_personal";
	}

	/* 결재처리함 */
	@RequestMapping("/draftapprove")
	public String draftapprove1(Model model, HttpSession session) {
		int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
		model.addAttribute("draftList1", draftService.getApprove1List(empNo));
		return "draft/draft_list_approve";
	}

	// 상세 결재처리 화면이동
	@RequestMapping("/approve1")
	public String signerapprove1(@RequestParam int draftNo, Model model) {
		model.addAttribute("draft", draftService.getDraftTest(draftNo));

		return "draft/draft_approve1";
	}

	/* 미결문서 */

	// 결재자1 처리
	@RequestMapping(value = "/signeroneapprove", method = { RequestMethod.PUT, RequestMethod.PATCH })
	@ResponseBody
	public String signeroneapprove(@RequestBody DraftDTO draft) {
		draftService.modifySigner1(draft);
		return "success";
	}

	// 결재 반려

	@RequestMapping(value = "/signerreject", method = { RequestMethod.PUT, RequestMethod.PATCH })
	@ResponseBody
	public String approvereject(@RequestBody DraftDTO draft) {
		draftService.modifyApproveReturn(draft);
		return "success";
	}
	
	/*반려함*/
	
	//반려목록
	@RequestMapping("/draftreject")
	public String draftreject(Model model, HttpSession session) {
		int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
		
		model.addAttribute("draftList1", draftService.getRejectList(empNo));
		return "draft/draft_list_reject";
	}

//반려 상세는 자기문서 상세보기로 이동함
	


	
	

/*********** 2. 지출결의서*************************/

	@Autowired
	private SpendingService spendingService;

	// 출력 -자기가 작성한결재

	@RequestMapping(value = "/spdisplay")
	public String addSpending(Model model, HttpSession session) {
		int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
		model.addAttribute("spendingList", spendingService.getSpendingList(empNo));
		return "draft/spending/spending_list";
	}

	// 전체 출력 상세 페이지
	@RequestMapping("/spview")
	public String viewsp(@RequestParam int draftNo, Model model) {
		model.addAttribute("spending", spendingService.getSpendingTest(draftNo));
		return "draft/spending/spending_personal";
	}

	@RequestMapping(value = "/spending", method = RequestMethod.GET)
	public String addSpending00() {
		return "draft/spending/spending_input";

	}

	// email_detail.html작성된 결재확인 - 작성자
	// 하나만 전달할��는 리퀘스트
	@RequestMapping(value = "/spending", method = RequestMethod.POST)
	@ResponseBody
	public String addSpending(@ModelAttribute SpendingDTO spending, Model model, HttpSession session) {
		int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
		spending.setEmpNo(empNo);
		
		System.out.println("spendingDate = "+spending.getSpendingDate());
		
		
		spendingService.addSpending(spending);
		
		return "success";

	}

	/* 결재처리 */

	// 결재처리함
	@RequestMapping("/spendingapprove")
	public String spendingapprove1(Model model, HttpSession session) {
		int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
		model.addAttribute("spendingList1", spendingService.getApprove1List(empNo));
		return "draft/spending/spending_list_approve";
	}

	// 상세 결재처리 화면이동- 상세 문서로 이동
	// =>작성시 주의 ? 로 draftNo 받기전에 문서의 경로가아니라 반드시 url로 받아야함
	@RequestMapping("/approve1sp")
	public String spendignsignerapprove1(@RequestParam int draftNo, Model model) {
		model.addAttribute("spending", spendingService.getSpendingTest(draftNo));
		return "draft/spending/spending_approve1";
	}

//결재승인
	@RequestMapping(value = "/signeroneapprovesp", method = { RequestMethod.PUT, RequestMethod.PATCH })
	@ResponseBody
	public String spndingsigneroneapprove(@RequestBody SpendingDTO spending) {
		spendingService.modifySigner1(spending);
		return "success";
	}

//결재반려
	
	@RequestMapping(value = "/spendingreject", method = { RequestMethod.PUT, RequestMethod.PATCH })
	@ResponseBody
	public String spendingapprovereject(@RequestBody SpendingDTO spending) {
		spendingService.modifyApproveReturn(spending);
		return "success";
	}
	



	
	
	/*반려함*/
	
	//반려목록
	@RequestMapping("/spendingreject")
	public String spendingreject(Model model, HttpSession session) {
		int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
		model.addAttribute("spendingList1", spendingService.getRejectLsit(empNo));
		return "draft/spending/spending_list_reject";
	}
	
	
	// 3.비품구입
	
	@Autowired
	private ProductService productService;
	
	
	
	 //전체목록
	@RequestMapping(value = "/pddisplay")
	public String addProduct(Model model, HttpSession session) {
		int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
		model.addAttribute("productList", productService.getProductList(empNo));
		return "draft/product/product_list";
	}
	
	//상세페이지
	@RequestMapping("/pdview")
	public String viewpd(@RequestParam int draftNo, Model model) {
		model.addAttribute("product", productService.getProductTest(draftNo));
		return "draft/product/product_personal";
	}
	
	
	
	
	//입력
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String addProduct() {
		return "draft/product/pro_input";

	}
	//입력
	@RequestMapping(value = "/product", method = RequestMethod.POST)
	@ResponseBody
	public String addProduct(@ModelAttribute ProductDTO product, Model model, HttpSession session) {
		int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
		product.setEmpNo(empNo);
		productService.addProduct(product);
		return "success";

	}
	
	/*결재처리함*/

	
	//결재처리 목록
	@RequestMapping("/productapprove")
	public String productapprove1(Model model, HttpSession session) {
		int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
		model.addAttribute("productList1", productService.getApprove1List(empNo));
		return "draft/product/product_list_approve";
	}
	
	//결재처리 상세 페이지
	@RequestMapping("/approve1pd")
	public String productsignerapprove1(@RequestParam int draftNo, Model model) {
		model.addAttribute("product", productService.getProductTest(draftNo));
		return "draft/product/product_approve1";
	}
	//결재승인
	@RequestMapping(value = "/signeroneapprovepd", method = { RequestMethod.PUT, RequestMethod.PATCH })
	@ResponseBody
	public String productsigneroneapprove(@RequestBody ProductDTO product) {
		productService.modifySigner1(product);
		return "success";
	}
	
	//결재반려
	@RequestMapping(value = "/productreject", method = { RequestMethod.PUT, RequestMethod.PATCH })
	@ResponseBody
	public String productapprovereject(@RequestBody ProductDTO product) {
		productService.modifyApproveReturn(product);
		return "success";
	}
	

	
	/*반려함*/
	@RequestMapping("/productreject")
	public String prpductreject(Model model, HttpSession session) {
		int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
		model.addAttribute("productRejctList", productService.getRejectLsit(empNo));
		return "draft/product/product_list_reject";
	}
	
	
	
	
	/******4.구매품의서********/
	@Autowired
	private PurchaseService purchaseService;
	
	 //전체목록
		@RequestMapping(value = "/prdisplay")
		public String addPurchase(Model model, HttpSession session) {
			int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
			model.addAttribute("purchaseList", purchaseService.getPurchaseList(empNo));
			return "draft/purchase/purchase_list";
		}
		//내가 작성한 문서의 상세 페이지 
		@RequestMapping("/prview")
		public String viewpr(@RequestParam int draftNo, Model model) {
			model.addAttribute("purchase", purchaseService.getPurchaseTest(draftNo));
			return "draft/purchase/purchase_personal";
		}
		
		//입력
		@RequestMapping(value = "/purchase", method = RequestMethod.GET)
		public String addPurchase() {
			return "draft/purchase/pur_input";

		}
		//입력
		@RequestMapping(value = "/purchase", method = RequestMethod.POST)
		@ResponseBody
		public String addPurchase(@ModelAttribute PurchaseDTO purchase, Model model, HttpSession session) {
			int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
			purchase.setEmpNo(empNo);
			purchaseService.addPurchase(purchase);
			return "success";

		}
		
		/*결재처리*/
		
		//결재처리 목록
		@RequestMapping("/purchaseapprove")
		public String purchaseapprove1(Model model, HttpSession session) {
			int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
			model.addAttribute("purchaseList1", purchaseService.getApprove1List(empNo));
			return "draft/purchase/purchase_list_approve";
		}
		
		//결재처리 상세 페이지
		@RequestMapping("/approve1pr")
		public String purchasesignerapprove1(@RequestParam int draftNo, Model model) {
			model.addAttribute("purchase", purchaseService.getPurchaseTest(draftNo));
			return "draft/purchase/purchase_approve1";
		}
		//결재승인
		@RequestMapping(value = "/signeroneapprovepr", method = { RequestMethod.PUT, RequestMethod.PATCH })
		@ResponseBody
		public String purchasesigneroneapprove(@RequestBody PurchaseDTO purchase) {
			purchaseService.modifySigner1(purchase);
			return "success";
		}
		
		//결재반려
		@RequestMapping(value = "/purchasereject", method = { RequestMethod.PUT, RequestMethod.PATCH })
		@ResponseBody
		public String purchaseapprovereject(@RequestBody PurchaseDTO purchase) {
			purchaseService.modifyApproveReturn(purchase);
			return "success";
		}
		
		
		/*반려함*/
		
		@RequestMapping("/purchasereject")
		public String purchasereject(Model model, HttpSession session) {
			int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
			model.addAttribute("purchasetRejctList", purchaseService.getRejectLsit(empNo));
			return "draft/purchase/purchase_list_reject";
		}
		
		
		
		
		/***5.회의록********/
		
		@Autowired
		private ConferenceService conferenceservice;
		
		//전체목록출력
		@RequestMapping(value = "/codisplay")
		public String addConference(Model model, HttpSession session) {
			int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
			model.addAttribute("conList", conferenceservice.getConferenceList(empNo));
			return "draft/conference/con_list";
		}
		//내가 작성한 문서의 상세 페이지 
		@RequestMapping("/coview")
		public String viewco(@RequestParam int draftNo, Model model) {
			model.addAttribute("conference", conferenceservice.getConferenceTest(draftNo));
			return "draft/conference/con_personal";
		}
		
		//입력
		@RequestMapping(value = "/conference", method = RequestMethod.GET)
		public String addConference() {
			return "draft/conference/con_input";

		}
		//입력
		@RequestMapping(value = "/conference", method = RequestMethod.POST)
		@ResponseBody
		public String addConference(@ModelAttribute ConferenceDTO conference, Model model, HttpSession session) {
			int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
			conference.setEmpNo(empNo);
			conferenceservice.addConference(conference);
			
			return "success";

		}
		
		/*결재처리*/
		
		//결재처리 목록
		@RequestMapping("/confapprove")
		public String confapprove1(Model model, HttpSession session) {
			int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
			model.addAttribute("confList1", conferenceservice.getApprove1List(empNo));
			return "draft/conference/conference_list_approve";
		}
		
		//결재처리 상세 페이지
		@RequestMapping("/approve1co")
		public String confsignerapprove1(@RequestParam int draftNo, Model model) {
			model.addAttribute("conference", conferenceservice.getConferenceTest(draftNo));
			return "draft/conference/conference_approve1";
		}
		//결재승인
		@RequestMapping(value = "/signeroneapproveconf", method = { RequestMethod.PUT, RequestMethod.PATCH })
		@ResponseBody
		public String confsigneroneapprove(@RequestBody ConferenceDTO conference) {
			conferenceservice.modifySigner1(conference);
			return "success";
		}
		
		//결재반려
		@RequestMapping(value = "/confreject", method = { RequestMethod.PUT, RequestMethod.PATCH })
		@ResponseBody
		public String confapprovereject(@RequestBody ConferenceDTO conference) {
			conferenceservice.modifyApproveReturn(conference);
			return "success";
		}
		
		
	/*반려함*/
		
		@RequestMapping("/confreject")
		public String confreject(Model model, HttpSession session) {
			int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
			model.addAttribute("confRejctList", conferenceservice.getRejectLsit(empNo));
			return "draft/conference/con_list_reject";
		}
		
		
		
		/*6.휴직 - absence*/
		
		
		@Autowired
		private AbsenceService absenceService;
		
		

		//전체목록출력
		@RequestMapping(value = "/abdisplay")
		public String addAbsence(Model model, HttpSession session) {
			int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
			model.addAttribute("abList", absenceService.getAbsenceList(empNo));
			return "draft/absence/ab_list";
		}
		//내가 작성한 문서의 상세 페이지 
		@RequestMapping("/abview")
		public String viewab(@RequestParam int draftNo, Model model) {
			model.addAttribute("absence", absenceService.getAbsenceTest(draftNo));
	
			return "draft/absence/ab_personal";
		}
		
		//입력
		@RequestMapping(value = "/absence", method = RequestMethod.GET)
		public String addAb() {
			return "draft/absence/ab_input";

		}
		//입력
		@RequestMapping(value = "/absence", method = RequestMethod.POST)
		@ResponseBody
		public String addAb(@ModelAttribute AbsenceDTO absence, Model model, HttpSession session) {
			int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
			absence.setEmpNo(empNo);
			absenceService.addAbsence(absence);
			return "success";

		}
				/*결재처리*/
		
		//결재처리 목록
		@RequestMapping("/abapprove")
		public String abapprove1(Model model, HttpSession session) {
			int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
			model.addAttribute("abList1", absenceService.getApprove1List(empNo));
			return "draft/absence/ab_list_approve";
		}
		
		//결재처리 상세 페이지
		@RequestMapping("/approve1ab")
		public String absignerapprove1(@RequestParam int draftNo, Model model) {
			model.addAttribute("absence", absenceService.getAbsenceTest(draftNo));
			return "draft/absence/ab_approve1";
		}
		
		//결재승인
		@RequestMapping(value = "/signeroneapproveab", method = { RequestMethod.PUT, RequestMethod.PATCH })
		@ResponseBody
		public String absigneroneapprove(@RequestBody AbsenceDTO absence) {
			absenceService.modifySigner1(absence);
			return "success";
		}
		
		//결재반려
		@RequestMapping(value = "/abreject", method = { RequestMethod.PUT, RequestMethod.PATCH })
		@ResponseBody
		public String abapprovereject(@RequestBody AbsenceDTO absence) {
			absenceService.modifyApproveReturn(absence);
			return "success";
		}
		
		
		/*결재반려함*/
		
		
		@RequestMapping("/abreject")
		public String abreject(Model model, HttpSession session) {
			int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
			model.addAttribute("abRejctList", absenceService.getRejectLsit(empNo));
			return "draft/absence/ab_list_reject";
		}
		
		
		
		
		/****7.퇴직- resignation******/
	
		
		@Autowired
		private ResignationService resignationService;
		
		//전체목록출력
				@RequestMapping(value = "/resdisplay")
				public String addResignation(Model model, HttpSession session) {
					int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
					model.addAttribute("resList", resignationService.getResignationList(empNo));
					return "draft/resignation/res_list";
				}
				//내가 작성한 문서의 상세 페이지 
				@RequestMapping("/resview")
				public String viewRes(@RequestParam int draftNo, Model model) {
					model.addAttribute("resignation", resignationService.getResignationTest(draftNo));
			
					return "draft/resignation/res_personal";
				}
				
				//입력
				@RequestMapping(value = "/resignation", method = RequestMethod.GET)
				public String addRes() {
					return "draft/resignation/res_input";

				}
				//입력
				@RequestMapping(value = "/resignation", method = RequestMethod.POST)
				@ResponseBody
				public String addRes(@ModelAttribute ResignationDTO resignation, Model model, HttpSession session) {
					int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
					resignation.setEmpNo(empNo);
					resignationService.addResignation(resignation);
					return "success";

				}
				
				
				/*결재처리*/
				
				//결재처리 목록
				@RequestMapping("/resapprove")
				public String resapprove1(Model model, HttpSession session) {
					int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
					model.addAttribute("resList1", resignationService.getApprove1List(empNo));
					return "draft/resignation/res_list_approve";
				}
				
				//결재처리 상세 페이지
				@RequestMapping("/approve1res")
				public String ressignerapprove1(@RequestParam int draftNo, Model model) {
					model.addAttribute("resignation", resignationService.getResignationTest(draftNo));
					return "draft/resignation/res_approve1";
				}
				
				//결재승인
				@RequestMapping(value = "/signeroneapproveres", method = { RequestMethod.PUT, RequestMethod.PATCH })
				@ResponseBody
				public String resigneroneapprove(@RequestBody ResignationDTO resignation) {
					resignationService.modifySigner1(resignation);
					return "success";
				}
				
				//결재반려
				@RequestMapping(value = "/resreject", method = { RequestMethod.PUT, RequestMethod.PATCH })
				@ResponseBody
				public String resapprovereject(@RequestBody ResignationDTO resignation) {
					resignationService.modifyApproveReturn(resignation);
					return "success";
				}
				
				
				
				@RequestMapping("/resreject")
				public String resreject(Model model, HttpSession session) {
					int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
					model.addAttribute("resRejctList", resignationService.getRejectLsit(empNo));
					return "draft/resignation/res_list_reject";
				}
				
				
				
				
				
				 /*****7.복직 -reinstatement*********/
				
				@Autowired ReinstatementService reinstatementService;
		
				//전체목록출력
				@RequestMapping(value = "/rtdisplay")
				public String addReinstatement(Model model, HttpSession session) {
					int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
					model.addAttribute("rtList", reinstatementService.getReinstatementList(empNo));
					return "draft/reinstatement/rt_list";
				}
				//내가 작성한 문서의 상세 페이지 
				@RequestMapping("/rtview")
				public String viewRt(@RequestParam int draftNo, Model model) {
					model.addAttribute("reinstatement", reinstatementService.getReinstatementTest(draftNo));
					
			
					return "draft/reinstatement/rt_personal";
				}
				
				//입력
				@RequestMapping(value = "/reinstatement", method = RequestMethod.GET)
				public String addRt() {
					return "draft/reinstatement/rt_input";

				}
				//입력
				@RequestMapping(value = "/reinstatement", method = RequestMethod.POST)
				@ResponseBody
				public String addRt(@ModelAttribute ReinstatementDTO reinstatement, Model model, HttpSession session) {
					int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
					reinstatement.setEmpNo(empNo);
					reinstatementService.addReinstatement(reinstatement);
					return "success";

				}
/*결재처리*/
				
				//결재처리 목록
				@RequestMapping("/rtapprove")
				public String rtapprove1(Model model, HttpSession session) {
					int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
					model.addAttribute("rtList1", reinstatementService.getApprove1List(empNo));
					return "draft/reinstatement/rt_list_approve";
				}
				
				//결재처리 상세 페이지
				@RequestMapping("/approve1rt")
				public String rtsignerapprove1(@RequestParam int draftNo, Model model) {
					model.addAttribute("reinstatement", reinstatementService.getReinstatementTest(draftNo));
					return "draft/reinstatement/rt_approve1";
				}
				
				//결재승인
				@RequestMapping(value = "/signeroneapprovert", method = { RequestMethod.PUT, RequestMethod.PATCH })
				@ResponseBody
				public String rtsigneroneapprove(@RequestBody ReinstatementDTO reinstatement) {
					reinstatementService.modifySigner1(reinstatement);
					return "success";
				}
				
				//결재반려
				@RequestMapping(value = "/rtreject", method = { RequestMethod.PUT, RequestMethod.PATCH })
				@ResponseBody
				public String rtapprovereject(@RequestBody ReinstatementDTO reinstatement) {
					reinstatementService.modifyApproveReturn(reinstatement);
					return "success";
				}
				
				/*반려함*/
				@RequestMapping("/rtreject")
				public String rtreject(Model model, HttpSession session) {
					int empNo = ((EmployeeDTO) session.getAttribute("loginUserinfo")).getEmpNo();
					model.addAttribute("rtRejctList", reinstatementService.getRejectLsit(empNo));
					return "draft/reinstatement/rt_list_reject";
				}
				
				
				
				
}
