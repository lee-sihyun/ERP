package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.PurchaseDTO;
import site.itwill.mapper.PurchaseMapper;

@Repository
public class PurchaseMybatisDAO implements PurchaseDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertPurchase(PurchaseDTO purchase) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(PurchaseMapper.class).insertPurchase(purchase);
	}

	@Override
	public List<PurchaseDTO> selectPurchase(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(PurchaseMapper.class).selectPurchase(empNo);
	}

	@Override
	public PurchaseDTO selectPurchaseTest(int draftNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(PurchaseMapper.class).selectPurchaseTest(draftNo);
	}

	@Override
	public List<PurchaseDTO> reject(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(PurchaseMapper.class).reject(empNo);
		}

	@Override
	public List<PurchaseDTO> approve1(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(PurchaseMapper.class).approve1(empNo);
	}

	@Override
	public int updateSignerOne(PurchaseDTO purchase) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(PurchaseMapper.class).updateSignerOne(purchase);
	}

	@Override
	public int updateApproveReturn(PurchaseDTO purchase) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(PurchaseMapper.class).updateApproveReturn(purchase);
	}

	
	
	
	
}
