package site.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.InAddressDTO;
import site.itwill.mapper.InAddressMapper;
@Repository
public class InAddressMybatisDAO implements InAddressDAO {
    @Autowired
    private SqlSession sqlSession;
    
    
    @Override
    public int insertAddress(InAddressDTO addressDTO) {
        return sqlSession.getMapper(InAddressMapper.class).insertAddress(addressDTO);
    }

    @Override
    public InAddressDTO selectAddress(int addressNo) {
        return sqlSession.getMapper(InAddressMapper.class).selectAddress(addressNo);
    }

    @Override
    public int deleteAddress(List<Integer> list) {
        return sqlSession.getMapper(InAddressMapper.class).deleteAddress(list);
    }

    @Override
    public int updateAddress(InAddressDTO addressDTO) {
        return sqlSession.getMapper(InAddressMapper.class).updateAddress(addressDTO);
    }

    @Override
    public int selectAddressTotal(Map<String, Object> map) {
        return sqlSession.getMapper(InAddressMapper.class).selectAddressTotal(map);
    }

    @Override
    public List<InAddressDTO> selectAddressList(Map<String, Object> map) {
        return sqlSession.getMapper(InAddressMapper.class).selectAddressList(map);
    }
    
}
