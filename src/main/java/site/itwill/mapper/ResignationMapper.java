package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.*;

public interface ResignationMapper {

	
	//작성
	int insertResignation(ResignationDTO resignation);

	//내가 작성한 문서 전체 출력
	List<ResignationDTO>selectResignation(int empNo);
	
	//상세 문서 
	ResignationDTO selectResignationTest(int draftNo);



	//반려문서 출력
	List <ResignationDTO>reject(int empNo);

	//처리결재함 출력
	List<ResignationDTO>approve1(int empNo);


	//결재승인
	int updateSignerOne(ResignationDTO resignation);
	//결재반려
	int updateApproveReturn(ResignationDTO resignation);
}
