package site.itwill.service;

import site.itwill.dto.Department;

public interface DepartmentService {
	void addDepartment(Department department);
	void modifyDepartment(Department department);
	void removeDepartment(int deptNo);
}
