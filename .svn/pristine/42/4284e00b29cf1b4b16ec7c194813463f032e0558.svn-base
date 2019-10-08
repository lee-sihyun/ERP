package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.AbsenceDAO;
import site.itwill.dto.AbsenceDTO;

@Service
public class AbsenceServiceImpl implements AbsenceService {

	
	@Autowired
	private AbsenceDAO absenceDAO;

	@Override
	public void addAbsence(AbsenceDTO absence) {
		// TODO Auto-generated method stub
		absenceDAO.insertAbsence(absence);
	}

	@Override
	public List<AbsenceDTO> getAbsenceList(int empNo) {
		// TODO Auto-generated method stub
		return absenceDAO.selectAbsence(empNo);
	}

	@Override
	public void modifySigner1(AbsenceDTO absence) {
		// TODO Auto-generated method stub
		absenceDAO.updateSignerOne(absence);
	}

	@Override
	public void modifyApproveReturn(AbsenceDTO absence) {
		// TODO Auto-generated method stub
		absenceDAO.updateApproveReturn(absence);
	}

	@Override
	public List<AbsenceDTO> getApprove1List(int empNo) {
		// TODO Auto-generated method stub
		return absenceDAO.approve1(empNo);
	}

	@Override
	public AbsenceDTO getAbsenceTest(int draftNo) {
		// TODO Auto-generated method stub
		return absenceDAO.selectAbsenceTest(draftNo);
	}

	@Override
	public List<AbsenceDTO> getRejectLsit(int empNo) {
		// TODO Auto-generated method stub
		return absenceDAO.reject(empNo);
	}

	
	
}
