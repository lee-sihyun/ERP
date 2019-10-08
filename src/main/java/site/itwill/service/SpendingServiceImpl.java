package site.itwill.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import site.itwill.dao.SpendingDAO;
import site.itwill.dto.SpendingDTO;


@Service
public class SpendingServiceImpl  implements SpendingService{

	@Autowired
	private  SpendingDAO spendingDAO;

	@Override
	public void addSpending(SpendingDTO spending) {
		spendingDAO.insertSpending(spending);
		
	}

	@Override
	public List<SpendingDTO> getSpendingList(int empNo) {
		// TODO Auto-generated method stub
		return spendingDAO.selectSpending(empNo);
	}

	@Override
	public void modifySigner1(SpendingDTO spending) {
		// TODO Auto-generated method stub
		spendingDAO.updateSignerOne(spending);
	}

	
	@Override
	public void modifyApproveReturn(SpendingDTO spending) {
		spendingDAO.updateApproveReturn(spending);
		
	}

	

	@Override
	public SpendingDTO getSpendingTest(int draftNo) {
		// TODO Auto-generated method stub
		return spendingDAO.selectSpendingTest(draftNo);
	}

	@Override
	public List<SpendingDTO> getApprove1List(int empNo) {
		// TODO Auto-generated method stub
		return spendingDAO.approve1(empNo);
	}

	@Override
	public List<SpendingDTO> getRejectLsit(int empNo) {
		// TODO Auto-generated method stub
		return spendingDAO.reject(empNo);
	}

	
	

	
	
	
	
	
}
