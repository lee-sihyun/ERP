package site.itwill.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import site.itwill.dao.ProductDAO;
import site.itwill.dto.*;



@Service
public class ProductServieImpl implements ProductService {

	
	@Autowired
	private ProductDAO productDAO;

	@Override
	public void addProduct(ProductDTO product) {
		// TODO Auto-generated method stub
		productDAO.insertProduct(product);
	}

	@Override
	public List<ProductDTO> getProductList(int empNo) {
		// TODO Auto-generated method stub
		return productDAO.selectProduct(empNo);
	}

	@Override
	public void modifySigner1(ProductDTO product) {
		// TODO Auto-generated method stub
		productDAO.updateSignerOne(product);
	}

	@Override
	public void modifyApproveReturn(ProductDTO product) {
		// TODO Auto-generated method stub
		productDAO.updateApproveReturn(product);
	}

	@Override
	public List<ProductDTO> getApprove1List(int empNo) {
		// TODO Auto-generated method stub
		return productDAO.approve1(empNo);
	}

	@Override
	public ProductDTO getProductTest(int draftNo) {
		// TODO Auto-generated method stub
		return productDAO.selectProductTest(draftNo);
	}

	@Override
	public List<ProductDTO> getRejectLsit(int empNo) {
		// TODO Auto-generated method stub
		return productDAO.reject(empNo);
	}

	

	
}
