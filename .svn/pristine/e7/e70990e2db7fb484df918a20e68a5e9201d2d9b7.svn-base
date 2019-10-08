package site.itwill.mapper;

import java.util.*;

import site.itwill.dto.*;

public interface SpendingMapper {
	
	
	
//지출결의서 입력	
int insertSpending(SpendingDTO spending);

List<SpendingDTO>selectSpending(int empNo);
//
SpendingDTO selectSpendingTest(int draftNo);

//empNo출력

//반려문서 출력
List <SpendingDTO>reject(int empNo);


List<SpendingDTO>approve1(int empNo);


//결재
int updateSignerOne(SpendingDTO spending);



//반려상태변경
int updateApproveReturn(SpendingDTO spending);

}
