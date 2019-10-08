package site.itwill.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import site.itwill.dao.*;
import site.itwill.dto.*;

@Service
public class DraftServiceImpl implements DraftService {

	@Autowired
	private DraftDAO draftDAO;
	
	
	@Override
	public void addDraft(DraftDTO draft) {
		draftDAO.insertDraft(draft);
		
	}

	@Override
	public List<DraftDTO> getDraftList(int empNo) {
	
		return draftDAO.selectDraft(empNo);
	}


	@Override
	public void modifySigner1(DraftDTO draft) {
		draftDAO.updateSignerOne(draft);
		
	}

	




	

	@Override
	public void modifyApproveReturn(DraftDTO draft) {
		// TODO Auto-generated method stub
		draftDAO.updateApproveReturn(draft);
	}
	



	@Override
	public DraftDTO getDraftTest(int draftNo) {
		// TODO Auto-generated method stub
		return draftDAO.selectDraftTest(draftNo);
	}

	@Override
	public List<DraftDTO> getApprove1List(int empNo) {
		// TODO Auto-generated method stub
		return draftDAO.approve1(empNo);
	}

	
	//반려된문서
	@Override
	public List<DraftDTO> getRejectList(int empNo) {
		// TODO Auto-generated method stub
		return draftDAO.reject(empNo);
				
	
	}




	

}
