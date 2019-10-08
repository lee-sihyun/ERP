package site.itwill.dao;

import java.util.List;

import site.itwill.dto.ProductDTO;

public interface ProductDAO {
	//문서등록
	int insertProduct(ProductDTO product);
	//전체문서
	List<ProductDTO>selectProduct(int empNo);
	//전체문서 누르면 상세문서로 이동
	ProductDTO selectProductTest(int draftNo);


	//반려문서 출력함
	List <ProductDTO>reject(int empNo);

	//결재할 문서 출력함
	List<ProductDTO>approve1(int empNo);


	//결재
	int updateSignerOne(ProductDTO product);
	//반려
	int updateApproveReturn(ProductDTO product);

}
