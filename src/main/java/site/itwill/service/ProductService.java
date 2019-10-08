package site.itwill.service;

import java.util.*;

import site.itwill.dto.*;

public interface ProductService {
	//�Է�
	void addProduct(ProductDTO product);
	// ��ü ���
	List<ProductDTO>getProductList(int empNo);
	//�������ó��
	void modifySigner1(ProductDTO product);
	//���� �ݷ�ó��
	void modifyApproveReturn(ProductDTO product);

	//����ó���� 
	List<ProductDTO>getApprove1List(int empNo);
	//����ó�� ������ �ϳ��� ���
	ProductDTO getProductTest(int draftNo);
	
	//����ݷ���
	List<ProductDTO>getRejectLsit (int empNo);
	
	
}