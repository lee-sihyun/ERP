package site.itwill.mapper;

import java.util.List;
import java.util.Map;

import site.itwill.dto.InAddressDTO;
import site.itwill.dto.OutAddressDTO;

public interface InAddressMapper {
    int insertAddress(InAddressDTO addressDTO);
    InAddressDTO selectAddress(int addressNo);
    int deleteAddress(List<Integer> list);
    int updateAddress(InAddressDTO addressDTO);
    int selectAddressTotal(Map<String, Object> map);
    List<InAddressDTO> selectAddressList(Map<String, Object> map);
}
