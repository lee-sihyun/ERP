package site.itwill.mapper;

import java.util.*;

import site.itwill.dto.*;

public interface ProductMapper {

	int insertProduct(ProductDTO product);
	
	List<ProductDTO>selectProduct(int empNo);
	//
	ProductDTO selectProductTest(int draftNo);

	//empNo출력

	//반려문서 출력 10/8
	List <ProductDTO>reject(int empNo);


	List<ProductDTO>approve1(int empNo);


	//결재
	int updateSignerOne(ProductDTO product);
	
	//반려
	int updateApproveReturn(ProductDTO product);

}
