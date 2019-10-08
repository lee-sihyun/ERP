package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.ReinstatementDAO;
import site.itwill.dto.ReinstatementDTO;

@Service
public class ReinstatementServiceImpl implements ReinstatementService {

	
	
	@Autowired
	
	private ReinstatementDAO reinstatementDAO;

	@Override
	public void addReinstatement(ReinstatementDTO reinstatement) {
		// TODO Auto-generated method stub
		reinstatementDAO.insertReinstatement(reinstatement);
		
	}

	@Override
	public List<ReinstatementDTO> getReinstatementList(int empNo) {
		// TODO Auto-generated method stub
		return reinstatementDAO.selectReinstatement(empNo);
	}

	@Override
	public void modifySigner1(ReinstatementDTO reinstatement) {
		// TODO Auto-generated method stub
		reinstatementDAO.updateSignerOne(reinstatement);
		
	}

	@Override
	public void modifyApproveReturn(ReinstatementDTO reinstatement) {
		// TODO Auto-generated method stub
		reinstatementDAO.updateApproveReturn(reinstatement);
	}

	@Override
	public List<ReinstatementDTO> getApprove1List(int empNo) {
		// TODO Auto-generated method stub
		return reinstatementDAO.approve1(empNo);
	}

	@Override
	public ReinstatementDTO getReinstatementTest(int draftNo) {
		// TODO Auto-generated method stub
		return reinstatementDAO.selectReinstatementTest(draftNo);
	}

	@Override
	public List<ReinstatementDTO> getRejectLsit(int empNo) {
		// TODO Auto-generated method stub
		return reinstatementDAO.reject(empNo);
	}

	
	
	
}
