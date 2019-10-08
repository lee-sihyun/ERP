package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.ConferenceDAO;
import site.itwill.dto.ConferenceDTO;

@Service
public class ConferenceServiceImpl implements ConferenceService{

	
	@Autowired
	private ConferenceDAO conferenceDAO;

	@Override
	public void addConference(ConferenceDTO conference) {
		// TODO Auto-generated method stub
		conferenceDAO.insertConference(conference);
		
	}

	@Override
	public List<ConferenceDTO> getConferenceList(int empNo) {
		// TODO Auto-generated method stub
		return conferenceDAO.selectConference(empNo);
	}

	@Override
	public void modifySigner1(ConferenceDTO conference) {
		// TODO Auto-generated method stub
		conferenceDAO.updateSignerOne(conference);
	}

	@Override
	public void modifyApproveReturn(ConferenceDTO conference) {
		// TODO Auto-generated method stub
		conferenceDAO.updateApproveReturn(conference);
	}

	@Override
	public List<ConferenceDTO> getApprove1List(int empNo) {
		// TODO Auto-generated method stub
		return conferenceDAO.approve1(empNo);
	}

	@Override
	public ConferenceDTO getConferenceTest(int draftNo) {
		// TODO Auto-generated method stub
		return conferenceDAO.selectConferenceTest(draftNo);
	}

	@Override
	public List<ConferenceDTO> getRejectLsit(int empNo) {
		// TODO Auto-generated method stub
		return conferenceDAO.reject(empNo);
	}

	
}
