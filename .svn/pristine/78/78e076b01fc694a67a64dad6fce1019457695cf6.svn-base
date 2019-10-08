package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.ResignationDAO;
import site.itwill.dto.ResignationDTO;

@Service
public class ResignationServiceImpl implements ResignationService {

	
	
	@Autowired
	private ResignationDAO resignationDAO;

	@Override
	public void addResignation(ResignationDTO resignation) {
		// TODO Auto-generated method stub
		resignationDAO.insertResignation(resignation);
	}

	@Override
	public List<ResignationDTO> getResignationList(int empNo) {
		// TODO Auto-generated method stub
		return resignationDAO.selectResignation(empNo);
				
	}

	@Override
	public void modifySigner1(ResignationDTO resignation) {
		// TODO Auto-generated method stub
		resignationDAO.updateSignerOne(resignation);
	}

	@Override
	public void modifyApproveReturn(ResignationDTO resignation) {
		// TODO Auto-generated method stub
		resignationDAO.updateApproveReturn(resignation);
	}

	@Override
	public List<ResignationDTO> getApprove1List(int empNo) {
		// TODO Auto-generated method stub
		return resignationDAO.approve1(empNo);
	}

	@Override
	public ResignationDTO getResignationTest(int draftNo) {
		// TODO Auto-generated method stub
		return resignationDAO.selectResignationTest(draftNo);
	}

	@Override
	public List<ResignationDTO> getRejectLsit(int empNo) {
		// TODO Auto-generated method stub
		return resignationDAO.reject(empNo);
	}

	
	
	
	
}
