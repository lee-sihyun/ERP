package site.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.EmployeeDTO;
import site.itwill.dto.MessageDTO;
import site.itwill.mapper.MessageMapper;

@Repository
public class MessageMybatisDAO implements MessageDAO {

	@Autowired
	private SqlSession SqlSession;
	
	//쪽지보내기기능
	@Override
	public int sendMsg(MessageDTO msg) {
		return SqlSession.getMapper(MessageMapper.class).sendMsg(msg);
	}
	
	//사원목록에서 보내는 사람 찾는 기능
	@Override
	public int searchAddress() {
		return SqlSession.getMapper(MessageMapper.class).searchAddress();
	}

	//받은쪽지함
	@Override
	public List<MessageDTO> recvMsgBox(int logNo) {
		// TODO Auto-generated method stub
		return SqlSession.getMapper(MessageMapper.class).recvMsgBox(logNo);
	}

	//보낸쪽지함
	@Override
	public List<MessageDTO> sendMsgBox(int logNo) {
		// TODO Auto-generated method stub
		return SqlSession.getMapper(MessageMapper.class).sendMsgBox(logNo);
	}

	//쪽지보관함
	@Override
	public List<MessageDTO> myMsgBox(int logNo) {
		return SqlSession.getMapper(MessageMapper.class).myMsgBox(logNo);
	}


	//받은쪽지함갯수
	@Override
	public int countRecvMsg(int empNo) {
		return SqlSession.getMapper(MessageMapper.class).countRecvMsg(empNo);
	}

	//보낸쪽지함갯수
	@Override
	public int countSendMsg(MessageDTO sendMsg) {
		return SqlSession.getMapper(MessageMapper.class).countSendMsg(sendMsg);
	}

	//쪽지보관함갯수
	@Override
	public int countMyMsgBox(MessageDTO myMsg) {
		return SqlSession.getMapper(MessageMapper.class).countMyMsgBox(myMsg);
	}

	//전체검색
	@Override
	public List<MessageDTO> allSearchMsg() {
		return SqlSession.getMapper(MessageMapper.class).allSearchMsg();
	}

	//키워드 검색
	@Override
	public int selectSendMsgTotal(Map<String, Object> map) {
		return SqlSession.getMapper(MessageMapper.class).selectSendMsgTotal(map);
	}


	//받은 쪽지함 또는 보낸 쪽지함에서 쪽지 보관함으로 이동하기
	@Override
	public int moveMsgBox(List<Integer> list) {
		return SqlSession.getMapper(MessageMapper.class).moveMsgBox(list);
	}

	//주소록에서 선택한 사람 저장
	@Override
	public MessageDTO selectAddress(List<Integer> empNo) {
		return SqlSession.getMapper(MessageMapper.class).selectAddress(empNo);
	}

	//쪽지 삭제
	@Override
	public int deleteMsg(List<Integer> list) {
		return SqlSession.getMapper(MessageMapper.class).deleteMsg(list);
	}

	//받은쪽지확인
	@Override
	public MessageDTO recvMsgView(int msgNo) {
		return SqlSession.getMapper(MessageMapper.class).recvMsgView(msgNo);
	}

	//보낸쪽지확인
	@Override
	public MessageDTO sendMsgView(int msgNo) {
		return SqlSession.getMapper(MessageMapper.class).sendMsgView(msgNo);
	}

	//보낸쪽지함페이징처리
	@Override
	public List<MessageDTO> PageSendMsg(Map<String, Object> map) {
		return SqlSession.getMapper(MessageMapper.class).PageSendMsg(map);
	}

	// 답장에서 선택한 사람 저장
	@Override
	public int replyMessageList(List<Integer> num) {
		return SqlSession.getMapper(MessageMapper.class).replyMessageList(num);
	}


	
	

	
	

	

	

}
