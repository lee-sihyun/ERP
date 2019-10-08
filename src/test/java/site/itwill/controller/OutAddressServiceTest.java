package site.itwill.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import site.itwill.dto.Calendar;
import site.itwill.dto.OutAddressDTO;
import site.itwill.service.CalendarService;
import site.itwill.service.OutAddressService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class OutAddressServiceTest {
    private final static Logger logger=LoggerFactory.getLogger(OutAddressServiceTest.class);
    
    @Autowired
    private OutAddressService addressService ;
    
    
    /*
    @Test
    public void testAddOutAddress() {
        OutAddressDTO addressDTO=new OutAddressDTO();
        
        addressDTO.setEmpNo(190202);
        addressDTO.setDeptName("������");
        addressDTO.setAddressName("��շ�");
        addressDTO.setAddressPosition("���");
        addressDTO.setAddressEmail("eva123@naver.com");
        addressDTO.setAddressPhone("010-1324-4567");
        addressDTO.setCompanyName("�Ҹ���");
        addressDTO.setCompanyPhone("010-1334-1167");
        addressDTO.setCompanyAddress("����� �ƴ�");
        addressDTO.setMemo("¯¯��");
        addressService.addAddress(addressDTO);
        logger.info("��� ����");
    }
    */
    
    /*
    @Test
    public void testgetOutAddress() {
        OutAddressDTO address=addressService.selectAddress(5);
        logger.info("�̸� = "+address.getAddressName());
    }
    */
    
    /*
    @Test
    public void testRemoveOutAddress() {
        List<Integer> list = new ArrayList<Integer>();
        list.add(5);
        System.out.println(list.get(0));
        addressService.deleteAddress(list);
        logger.info("���� ����");
    }
    */

    /*
    @Test
    public void testupdateOutAddress() {
        OutAddressDTO addressDTO = new OutAddressDTO();
        
        addressDTO.setAddressNo(4);
        addressDTO.setAddressName("��븮");
        addressDTO.setEmpNo(190202);
        addressDTO.setDeptName("����");
        addressDTO.setAddressPosition("�븮");
        addressDTO.setAddressPhone("010-1324-4567");
        addressDTO.setAddressEmail("eva123@naver.com");
        addressDTO.setCompanyName("�Ҹ���");
        addressDTO.setCompanyPhone("010-1334-1167");
        addressDTO.setCompanyAddress("����� ����");
        addressDTO.setMemo("�ѳ� �ǰ��ϰ���");
        addressService.updateAddress(addressDTO);
        logger.info("���� ����");
    }
     */
    
    /*
    @Test
    public void testgetOutAddressList() {
        List<OutAddressDTO> addressList = new ArrayList<OutAddressDTO>();
        Map<String, Object> map =new HashMap<String, Object>();
        
        map.put("search", "address_name");
        map.put("keyword", "all");
        map.put("empNo",190202);
        map.put("startRow",1);
        map.put("endRow",1);
        
        
        addressList = addressService.selectAddressList(map);
        for(OutAddressDTO ad:addressList) {
            logger.info(ad.getAddressName());
        }
    }
    */
 
}  
    