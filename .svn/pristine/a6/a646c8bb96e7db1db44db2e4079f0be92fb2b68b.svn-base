package site.itwill.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import site.itwill.dto.EmployeeDTO;
import site.itwill.dto.InAddressDTO;
import site.itwill.service.EmployeeService;
import site.itwill.service.InAddressService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class EmpServiceTest {
    private final static Logger logger=LoggerFactory.getLogger(EmpServiceTest.class);

    @Autowired
    private EmployeeService employeeService;
    
    @Autowired
    private InAddressService inaddressService;
    
    
    @Test
    public void tesAddEmp() {
        EmployeeDTO employeeDTO=new EmployeeDTO();
        employeeDTO.setDeptNo(3);
        employeeDTO.setEmpPosition("과장");
        employeeDTO.setEmpName("가가");
        employeeDTO.setPassword("123456");
        employeeDTO.setEmpManager("팀장");
        employeeDTO.setExtension("15");
        employeeDTO.setEmpPhone("010-8888-8888");
        employeeDTO.setEmpAddress("서울시");
        employeeDTO.setEmpEmail("avc123@naver.com");
        employeeDTO.setEmpState("재직");
        employeeDTO.setEmpBreak(15);
        employeeService.insertEmp(employeeDTO);
        logger.info("등록 성공");
    }
    

    
    
    
    
    
}
