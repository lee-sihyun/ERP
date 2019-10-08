package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.ProductDTO;
import site.itwill.mapper.ProductMapper;

@Repository
public class ProductMybatisDAO implements ProductDAO {

	
	
	
@Autowired
private SqlSession sqlSession;

@Override
public int insertProduct(ProductDTO product) {
	// TODO Auto-generated method stub
	return sqlSession.getMapper(ProductMapper.class).insertProduct(product);
}

@Override
public List<ProductDTO> selectProduct(int empNo) {
	// TODO Auto-generated method stub
	return sqlSession.getMapper(ProductMapper.class).selectProduct(empNo);
}

@Override
public ProductDTO selectProductTest(int draftNo) {
	// TODO Auto-generated method stub
	return sqlSession.getMapper(ProductMapper.class).selectProductTest(draftNo);
}

@Override
public List<ProductDTO> reject(int empNo) {
	// TODO Auto-generated method stub
	return sqlSession.getMapper(ProductMapper.class).reject(empNo);
}

@Override
public List<ProductDTO> approve1(int empNo) {
	// TODO Auto-generated method stub
	return sqlSession.getMapper(ProductMapper.class).approve1(empNo);
}

@Override
public int updateSignerOne(ProductDTO product) {
	// TODO Auto-generated method stub
	return sqlSession.getMapper(ProductMapper.class).updateSignerOne(product);
}

@Override
public int updateApproveReturn(ProductDTO product) {
	// TODO Auto-generated method stub
	return sqlSession.getMapper(ProductMapper.class).updateApproveReturn(product);
}



}
