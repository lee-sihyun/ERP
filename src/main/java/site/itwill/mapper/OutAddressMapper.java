package site.itwill.mapper;

import java.util.List;
import java.util.Map;

import site.itwill.dto.InAddressDTO;
import site.itwill.dto.OutAddressDTO;

public interface OutAddressMapper {
    int insertAddress(OutAddressDTO addressDTO);
    OutAddressDTO selectAddress(int addressNo);
    int deleteAddress(List<Integer> list);
    int updateAddress(OutAddressDTO addressDTO);
    int selectAddressTotal(Map<String, Object> map);
    List<OutAddressDTO> selectAddressList(Map<String, Object> map);
}
