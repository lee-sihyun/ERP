package site.itwill.dao;

import java.util.List;

import site.itwill.dto.ProductDTO;

public interface ProductDAO {
	//�������
	int insertProduct(ProductDTO product);
	//��ü����
	List<ProductDTO>selectProduct(int empNo);
	//��ü���� ������ �󼼹����� �̵�
	ProductDTO selectProductTest(int draftNo);


	//�ݷ����� �����
	List <ProductDTO>reject(int empNo);

	//������ ���� �����
	List<ProductDTO>approve1(int empNo);


	//����
	int updateSignerOne(ProductDTO product);
	//�ݷ�
	int updateApproveReturn(ProductDTO product);

}