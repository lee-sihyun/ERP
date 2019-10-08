package site.itwill.service;

import java.util.List;
import java.util.Map;

import site.itwill.dto.InAddressDTO;

public interface InAddressService {
    void addAddress(InAddressDTO addressDTO);
    InAddressDTO selectAddress(int addressNo);
    void deleteAddress(List<Integer> list);
    void updateAddress(InAddressDTO addressDTO);
    int selectAddressTotal(Map<String, Object> map);
    List<InAddressDTO> selectAddressList(Map<String, Object> map);
}
