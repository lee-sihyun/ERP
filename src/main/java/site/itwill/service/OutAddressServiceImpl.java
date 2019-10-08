package site.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.OutAddressDAO;
import site.itwill.dto.OutAddressDTO;
@Service
public class OutAddressServiceImpl implements OutAddressService{
    
    @Autowired
    private OutAddressDAO outaddressDAO;
    
    @Transactional
    @Override
    public void addAddress(OutAddressDTO addressDTO) {
        outaddressDAO.insertAddress(addressDTO);
    }

    
    @Override
    public OutAddressDTO selectAddress(int addressNo) {
        return outaddressDAO.selectAddress(addressNo);
    }

    @Transactional
    @Override
    public void deleteAddress(List<Integer> list) {
        
        outaddressDAO.deleteAddress(list);
    }

    @Transactional
    @Override
    public void updateAddress(OutAddressDTO addressDTO) {
        outaddressDAO.updateAddress(addressDTO);
    }

    @Override
    public int selectAddressTotal(Map<String, Object> map) {
        return outaddressDAO.selectAddressTotal(map);
    }

    @Override
    public List<OutAddressDTO> selectAddressList(Map<String, Object> map) {
        return outaddressDAO.selectAddressList(map);
    }

}
