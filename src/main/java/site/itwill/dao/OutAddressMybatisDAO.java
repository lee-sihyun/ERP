package site.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.OutAddressDTO;
import site.itwill.mapper.OutAddressMapper;
@Repository
public class OutAddressMybatisDAO implements OutAddressDAO {
    @Autowired
    private SqlSession sqlSession;
    
    
    @Override
    public int insertAddress(OutAddressDTO addressDTO) {
        return sqlSession.getMapper(OutAddressMapper.class).insertAddress(addressDTO);
    }

    @Override
    public OutAddressDTO selectAddress(int addressNo) {
        return sqlSession.getMapper(OutAddressMapper.class).selectAddress(addressNo);
    }

    @Override
    public int deleteAddress(List<Integer> list) {
        return sqlSession.getMapper(OutAddressMapper.class).deleteAddress(list);
    }

    @Override
    public int updateAddress(OutAddressDTO addressDTO) {
        return sqlSession.getMapper(OutAddressMapper.class).updateAddress(addressDTO);
    }

    @Override
    public int selectAddressTotal(Map<String, Object> map) {
        return sqlSession.getMapper(OutAddressMapper.class).selectAddressTotal(map);
    }

    @Override
    public List<OutAddressDTO> selectAddressList(Map<String, Object> map) {
        return sqlSession.getMapper(OutAddressMapper.class).selectAddressList(map);
    }
    
}
