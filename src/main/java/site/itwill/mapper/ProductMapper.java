package site.itwill.mapper;

import java.util.*;

import site.itwill.dto.*;

public interface ProductMapper {

	int insertProduct(ProductDTO product);
	
	List<ProductDTO>selectProduct(int empNo);
	//
	ProductDTO selectProductTest(int draftNo);

	//empNo���

	//�ݷ����� ��� 10/8
	List <ProductDTO>reject(int empNo);


	List<ProductDTO>approve1(int empNo);


	//����
	int updateSignerOne(ProductDTO product);
	
	//�ݷ�
	int updateApproveReturn(ProductDTO product);

}