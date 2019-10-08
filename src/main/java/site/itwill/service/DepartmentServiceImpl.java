package site.itwill.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.DepartmentDAO;
import site.itwill.dto.Department;

@Service
public class DepartmentServiceImpl implements DepartmentService {
	@Autowired
	private DepartmentDAO departmentDAO;
	
	@Override
	public void addDepartment(Department department) {
		departmentDAO.insertDepartment(department);
	}

	@Override
	public void modifyDepartment(Department department) {
		departmentDAO.updateDepartment(department);
	}

	@Override
	public void removeDepartment(int deptNo) {
		departmentDAO.deleteDepartment(deptNo);
	}

}
