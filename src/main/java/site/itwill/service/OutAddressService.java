package site.itwill.service;

import java.util.List;
import java.util.Map;

import site.itwill.dto.OutAddressDTO;

public interface OutAddressService {
    void addAddress(OutAddressDTO addressDTO);
    OutAddressDTO selectAddress(int addressNo);
    void deleteAddress(List<Integer> list);
    void updateAddress(OutAddressDTO addressDTO);
    int selectAddressTotal(Map<String, Object> map);
    List<OutAddressDTO> selectAddressList(Map<String, Object> map);
}
