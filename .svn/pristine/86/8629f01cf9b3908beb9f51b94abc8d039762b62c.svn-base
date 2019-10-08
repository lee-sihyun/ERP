package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.*;

public interface AbsenceMapper {
	//휴직원 입력	
	int insertAbsence(AbsenceDTO absence);

	//내가 작성한 휴직원 전체 출력
	List<AbsenceDTO>selectAbsence(int empNo);
	
	//상세문서 출력
	AbsenceDTO selectAbsenceTest(int draftNo);



	//반려문서 출력
	List <AbsenceDTO>reject(int empNo);

	//AbsenceDTO 출력
	List<AbsenceDTO>approve1(int empNo);


	//결재승인
	int updateSignerOne(AbsenceDTO absence);
	//결재반려
	int updateApproveReturn(AbsenceDTO absence);
	
}
