package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.PurchaseDAO;
import site.itwill.dto.PurchaseDTO;

@Service
public class PurchaseServiceImpl implements PurchaseService{

	
	
	@Autowired
	private PurchaseDAO purchaseDAO;

	@Override
	public void addPurchase(PurchaseDTO purchase) {
		purchaseDAO.insertPurchase(purchase);
		
	}

	@Override
	public List<PurchaseDTO> getPurchaseList(int empNo) {
		// TODO Auto-generated method stub
		return purchaseDAO.selectPurchase(empNo);
	}

	@Override
	public void modifySigner1(PurchaseDTO purchase) {
		// TODO Auto-generated method stub
		purchaseDAO.updateSignerOne(purchase);
	}

	@Override
	public void modifyApproveReturn(PurchaseDTO purchase) {
		// TODO Auto-generated method stub
		purchaseDAO.updateApproveReturn(purchase);
	}

	@Override
	public List<PurchaseDTO> getApprove1List(int empNo) {
		// TODO Auto-generated method stub
		return purchaseDAO.approve1(empNo);
	}

	@Override
	public PurchaseDTO getPurchaseTest(int draftNo) {
		// TODO Auto-generated method stub
		return purchaseDAO.selectPurchaseTest(draftNo);
	}

	@Override
	public List<PurchaseDTO> getRejectLsit(int empNo) {
		// TODO Auto-generated method stub
		return purchaseDAO.reject(empNo);
	}


}
