package site.itwill.dao;

import site.itwill.dto.Department;

public interface DepartmentDAO {
	int insertDepartment(Department department);
	int updateDepartment(Department department);
	int deleteDepartment(int deptNo);
}
