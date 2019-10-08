package site.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.InAddressDAO;
import site.itwill.dto.InAddressDTO;
@Service
public class InAddressServiceImpl implements InAddressService{
    
    @Autowired
    private InAddressDAO outaddressDAO;
    
    @Transactional
    @Override
    public void addAddress(InAddressDTO addressDTO) {
        outaddressDAO.insertAddress(addressDTO);
    }

    
    @Override
    public InAddressDTO selectAddress(int addressNo) {
        return outaddressDAO.selectAddress(addressNo);
    }

    @Transactional
    @Override
    public void deleteAddress(List<Integer> list) {
        
        outaddressDAO.deleteAddress(list);
    }

    @Transactional
    @Override
    public void updateAddress(InAddressDTO addressDTO) {
        outaddressDAO.updateAddress(addressDTO);
    }

    @Override
    public int selectAddressTotal(Map<String, Object> map) {
        return outaddressDAO.selectAddressTotal(map);
    }

    @Override
    public List<InAddressDTO> selectAddressList(Map<String, Object> map) {
        return outaddressDAO.selectAddressList(map);
    }

}
